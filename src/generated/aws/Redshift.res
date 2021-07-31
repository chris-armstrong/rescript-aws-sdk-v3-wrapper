type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type usageLimitPeriod = [@as("monthly") #monthly | @as("weekly") #weekly | @as("daily") #daily]
type usageLimitLimitType = [@as("data-scanned") #data_scanned | @as("time") #time]
type usageLimitFeatureType = [@as("concurrency-scaling") #concurrency_scaling | @as("spectrum") #spectrum]
type usageLimitBreachAction = [@as("disable") #disable | @as("emit-metric") #emit_metric | @as("log") #log]
type tableRestoreStatusType = [@as("CANCELED") #CANCELED | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("IN_PROGRESS") #IN_PROGRESS | @as("PENDING") #PENDING]
type tStamp = Js.Date.t;
type amazonawsString = string
type sourceType = [@as("scheduled-action") #scheduled_action | @as("cluster-snapshot") #cluster_snapshot | @as("cluster-security-group") #cluster_security_group | @as("cluster-parameter-group") #cluster_parameter_group | @as("cluster") #cluster]
type sortByOrder = [@as("DESC") #DESC | @as("ASC") #ASC]
type snapshotAttributeToSortBy = [@as("CREATE_TIME") #CREATE_TIME | @as("TOTAL_SIZE") #TOTAL_SIZE | @as("SOURCE_TYPE") #SOURCE_TYPE]
type sensitiveString = string
type scheduledActionTypeValues = [@as("ResumeCluster") #ResumeCluster | @as("PauseCluster") #PauseCluster | @as("ResizeCluster") #ResizeCluster]
type scheduledActionState = [@as("DISABLED") #DISABLED | @as("ACTIVE") #ACTIVE]
type scheduledActionFilterName = [@as("iam-role") #iam_role | @as("cluster-identifier") #cluster_identifier]
type scheduleState = [@as("FAILED") #FAILED | @as("ACTIVE") #ACTIVE | @as("MODIFYING") #MODIFYING]
type reservedNodeOfferingType = [@as("Upgradable") #Upgradable | @as("Regular") #Regular]
type partnerIntegrationStatusMessage = string
type partnerIntegrationStatus = [@as("ConnectionFailure") #ConnectionFailure | @as("RuntimeFailure") #RuntimeFailure | @as("Inactive") #Inactive | @as("Active") #Active]
type partnerIntegrationPartnerName = string
type partnerIntegrationDatabaseName = string
type partnerIntegrationClusterIdentifier = string
type partnerIntegrationAccountId = string
type parameterApplyType = [@as("dynamic") #dynamic | @as("static") #static]
type operatorType = [@as("between") #between | @as("in") #in | @as("ge") #ge | @as("le") #le | @as("gt") #gt | @as("lt") #lt | @as("eq") #eq]
type nodeConfigurationOptionsFilterName = [@as("Mode") #Mode | @as("EstimatedDiskUtilizationPercent") #EstimatedDiskUtilizationPercent | @as("NumberOfNodes") #NumberOfNodes | @as("NodeType") #NodeType]
type mode = [@as("high-performance") #high_performance | @as("standard") #standard]
type longOptional = float;
type amazonawsLong = float;
type integerOptional = int;
type amazonawsInteger = int;
type exceptionMessage = string
type doubleOptional = float;
type amazonawsDouble = float;
type booleanOptional = bool;
type amazonawsBoolean = bool;
type authorizationStatus = [@as("Revoking") #Revoking | @as("Authorized") #Authorized]
type aquaStatus = [@as("applying") #applying | @as("disabled") #disabled | @as("enabled") #enabled]
type aquaConfigurationStatus = [@as("auto") #auto | @as("disabled") #disabled | @as("enabled") #enabled]
type actionType = [@as("resize-cluster") #resize_cluster | @as("recommend-node-config") #recommend_node_config | @as("restore-cluster") #restore_cluster]
type vpcSecurityGroupMembership = {
@as("Status") status: amazonawsString,
@as("VpcSecurityGroupId") vpcSecurityGroupId: amazonawsString
}
type vpcSecurityGroupIdList = array<amazonawsString>
type vpcIdentifierList = array<amazonawsString>
type valueStringList = array<amazonawsString>
type tagValueList = array<amazonawsString>
type tagKeyList = array<amazonawsString>
type tag = {
@as("Value") value: amazonawsString,
@as("Key") key: amazonawsString
}
type tableRestoreStatus = {
@as("NewTableName") newTableName: amazonawsString,
@as("TargetSchemaName") targetSchemaName: amazonawsString,
@as("TargetDatabaseName") targetDatabaseName: amazonawsString,
@as("SourceTableName") sourceTableName: amazonawsString,
@as("SourceSchemaName") sourceSchemaName: amazonawsString,
@as("SourceDatabaseName") sourceDatabaseName: amazonawsString,
@as("SnapshotIdentifier") snapshotIdentifier: amazonawsString,
@as("ClusterIdentifier") clusterIdentifier: amazonawsString,
@as("TotalDataInMegaBytes") totalDataInMegaBytes: longOptional,
@as("ProgressInMegaBytes") progressInMegaBytes: longOptional,
@as("RequestTime") requestTime: tStamp,
@as("Message") message: amazonawsString,
@as("Status") status: tableRestoreStatusType,
@as("TableRestoreRequestId") tableRestoreRequestId: amazonawsString
}
type supportedPlatform = {
@as("Name") name: amazonawsString
}
type supportedOperation = {
@as("OperationName") operationName: amazonawsString
}
type subnetIdentifierList = array<amazonawsString>
type sourceIdsList = array<amazonawsString>
type snapshotSortingEntity = {
@as("SortOrder") sortOrder: sortByOrder,
@as("Attribute") attribute: option<snapshotAttributeToSortBy>
}
type snapshotIdentifierList = array<amazonawsString>
type snapshotErrorMessage = {
@as("FailureReason") failureReason: amazonawsString,
@as("FailureCode") failureCode: amazonawsString,
@as("SnapshotClusterIdentifier") snapshotClusterIdentifier: amazonawsString,
@as("SnapshotIdentifier") snapshotIdentifier: amazonawsString
}
type scheduledSnapshotTimeList = array<tStamp>
type scheduledActionTimeList = array<tStamp>
type scheduleDefinitionList = array<amazonawsString>
type revisionTarget = {
@as("DatabaseRevisionReleaseDate") databaseRevisionReleaseDate: tStamp,
@as("Description") description: amazonawsString,
@as("DatabaseRevision") databaseRevision: amazonawsString
}
type resumeClusterMessage = {
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>
}
type restoreStatus = {
@as("EstimatedTimeToCompletionInSeconds") estimatedTimeToCompletionInSeconds: amazonawsLong,
@as("ElapsedTimeInSeconds") elapsedTimeInSeconds: amazonawsLong,
@as("ProgressInMegaBytes") progressInMegaBytes: amazonawsLong,
@as("SnapshotSizeInMegaBytes") snapshotSizeInMegaBytes: amazonawsLong,
@as("CurrentRestoreRateInMegaBytesPerSecond") currentRestoreRateInMegaBytesPerSecond: amazonawsDouble,
@as("Status") status: amazonawsString
}
type restorableNodeTypeList = array<amazonawsString>
type resizeInfo = {
@as("AllowCancelResize") allowCancelResize: amazonawsBoolean,
@as("ResizeType") resizeType: amazonawsString
}
type resizeClusterMessage = {
@as("Classic") classic: booleanOptional,
@as("NumberOfNodes") numberOfNodes: integerOptional,
@as("NodeType") nodeType: amazonawsString,
@as("ClusterType") clusterType: amazonawsString,
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>
}
type recurringCharge = {
@as("RecurringChargeFrequency") recurringChargeFrequency: amazonawsString,
@as("RecurringChargeAmount") recurringChargeAmount: amazonawsDouble
}
type pendingModifiedValues = {
@as("EncryptionType") encryptionType: amazonawsString,
@as("MaintenanceTrackName") maintenanceTrackName: amazonawsString,
@as("EnhancedVpcRouting") enhancedVpcRouting: booleanOptional,
@as("PubliclyAccessible") publiclyAccessible: booleanOptional,
@as("ClusterIdentifier") clusterIdentifier: amazonawsString,
@as("AutomatedSnapshotRetentionPeriod") automatedSnapshotRetentionPeriod: integerOptional,
@as("ClusterVersion") clusterVersion: amazonawsString,
@as("ClusterType") clusterType: amazonawsString,
@as("NumberOfNodes") numberOfNodes: integerOptional,
@as("NodeType") nodeType: amazonawsString,
@as("MasterUserPassword") masterUserPassword: amazonawsString
}
type pendingActionsList = array<amazonawsString>
type pauseClusterMessage = {
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>
}
type partnerIntegrationInfo = {
@as("UpdatedAt") updatedAt: tStamp,
@as("CreatedAt") createdAt: tStamp,
@as("StatusMessage") statusMessage: partnerIntegrationStatusMessage,
@as("Status") status: partnerIntegrationStatus,
@as("PartnerName") partnerName: partnerIntegrationPartnerName,
@as("DatabaseName") databaseName: partnerIntegrationDatabaseName
}
type parameter = {
@as("MinimumEngineVersion") minimumEngineVersion: amazonawsString,
@as("IsModifiable") isModifiable: amazonawsBoolean,
@as("ApplyType") applyType: parameterApplyType,
@as("AllowedValues") allowedValues: amazonawsString,
@as("DataType") dataType: amazonawsString,
@as("Source") source: amazonawsString,
@as("Description") description: amazonawsString,
@as("ParameterValue") parameterValue: amazonawsString,
@as("ParameterName") parameterName: amazonawsString
}
type nodeConfigurationOption = {
@as("Mode") mode: mode,
@as("EstimatedDiskUtilizationPercent") estimatedDiskUtilizationPercent: doubleOptional,
@as("NumberOfNodes") numberOfNodes: amazonawsInteger,
@as("NodeType") nodeType: amazonawsString
}
type networkInterface = {
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("PrivateIpAddress") privateIpAddress: amazonawsString,
@as("SubnetId") subnetId: amazonawsString,
@as("NetworkInterfaceId") networkInterfaceId: amazonawsString
}
type importTablesNotStarted = array<amazonawsString>
type importTablesInProgress = array<amazonawsString>
type importTablesCompleted = array<amazonawsString>
type iamRoleArnList = array<amazonawsString>
type hsmStatus = {
@as("Status") status: amazonawsString,
@as("HsmConfigurationIdentifier") hsmConfigurationIdentifier: amazonawsString,
@as("HsmClientCertificateIdentifier") hsmClientCertificateIdentifier: amazonawsString
}
type eventCategoriesList = array<amazonawsString>
type elasticIpStatus = {
@as("Status") status: amazonawsString,
@as("ElasticIp") elasticIp: amazonawsString
}
type deleteClusterSnapshotMessage = {
@as("SnapshotClusterIdentifier") snapshotClusterIdentifier: amazonawsString,
@as("SnapshotIdentifier") snapshotIdentifier: option<amazonawsString>
}
type deferredMaintenanceWindow = {
@as("DeferMaintenanceEndTime") deferMaintenanceEndTime: tStamp,
@as("DeferMaintenanceStartTime") deferMaintenanceStartTime: tStamp,
@as("DeferMaintenanceIdentifier") deferMaintenanceIdentifier: amazonawsString
}
type dbGroupList = array<amazonawsString>
type dataTransferProgress = {
@as("ElapsedTimeInSeconds") elapsedTimeInSeconds: longOptional,
@as("EstimatedTimeToCompletionInSeconds") estimatedTimeToCompletionInSeconds: longOptional,
@as("DataTransferredInMegaBytes") dataTransferredInMegaBytes: amazonawsLong,
@as("TotalDataInMegaBytes") totalDataInMegaBytes: amazonawsLong,
@as("CurrentRateInMegaBytesPerSecond") currentRateInMegaBytesPerSecond: doubleOptional,
@as("Status") status: amazonawsString
}
type clusterVersion = {
@as("Description") description: amazonawsString,
@as("ClusterParameterGroupFamily") clusterParameterGroupFamily: amazonawsString,
@as("ClusterVersion") clusterVersion: amazonawsString
}
type clusterSnapshotCopyStatus = {
@as("SnapshotCopyGrantName") snapshotCopyGrantName: amazonawsString,
@as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: amazonawsInteger,
@as("RetentionPeriod") retentionPeriod: amazonawsLong,
@as("DestinationRegion") destinationRegion: amazonawsString
}
type clusterSecurityGroupNameList = array<amazonawsString>
type clusterSecurityGroupMembership = {
@as("Status") status: amazonawsString,
@as("ClusterSecurityGroupName") clusterSecurityGroupName: amazonawsString
}
type clusterParameterStatus = {
@as("ParameterApplyErrorDescription") parameterApplyErrorDescription: amazonawsString,
@as("ParameterApplyStatus") parameterApplyStatus: amazonawsString,
@as("ParameterName") parameterName: amazonawsString
}
type clusterNode = {
@as("PublicIPAddress") publicIPAddress: amazonawsString,
@as("PrivateIPAddress") privateIPAddress: amazonawsString,
@as("NodeRole") nodeRole: amazonawsString
}
type clusterIamRole = {
@as("ApplyStatus") applyStatus: amazonawsString,
@as("IamRoleArn") iamRoleArn: amazonawsString
}
type clusterAssociatedToSchedule = {
@as("ScheduleAssociationState") scheduleAssociationState: scheduleState,
@as("ClusterIdentifier") clusterIdentifier: amazonawsString
}
type attributeValueTarget = {
@as("AttributeValue") attributeValue: amazonawsString
}
type attributeNameList = array<amazonawsString>
type aquaConfiguration = {
@as("AquaConfigurationStatus") aquaConfigurationStatus: aquaConfigurationStatus,
@as("AquaStatus") aquaStatus: aquaStatus
}
type accountWithRestoreAccess = {
@as("AccountAlias") accountAlias: amazonawsString,
@as("AccountId") accountId: amazonawsString
}
type vpcSecurityGroupMembershipList = array<vpcSecurityGroupMembership>
type taggedResource = {
@as("ResourceType") resourceType: amazonawsString,
@as("ResourceName") resourceName: amazonawsString,
@as("Tag") tag: tag
}
type tagList = array<tag>
type tableRestoreStatusList = array<tableRestoreStatus>
type supportedPlatformsList = array<supportedPlatform>
type supportedOperationList = array<supportedOperation>
type snapshotSortingEntityList = array<snapshotSortingEntity>
type scheduledActionType = {
@as("ResumeCluster") resumeCluster: resumeClusterMessage,
@as("PauseCluster") pauseCluster: pauseClusterMessage,
@as("ResizeCluster") resizeCluster: resizeClusterMessage
}
type scheduledActionFilter = {
@as("Values") values: option<valueStringList>,
@as("Name") name: option<scheduledActionFilterName>
}
type revisionTargetsList = array<revisionTarget>
type recurringChargeList = array<recurringCharge>
type partnerIntegrationInfoList = array<partnerIntegrationInfo>
type parametersList = array<parameter>
type nodeConfigurationOptionsFilter = {
@as("Values") values: valueStringList,
@as("Operator") operator: operatorType,
@as("Name") name: nodeConfigurationOptionsFilterName
}
type nodeConfigurationOptionList = array<nodeConfigurationOption>
type networkInterfaceList = array<networkInterface>
type eventInfoMap = {
@as("Severity") severity: amazonawsString,
@as("EventDescription") eventDescription: amazonawsString,
@as("EventCategories") eventCategories: eventCategoriesList,
@as("EventId") eventId: amazonawsString
}
type event = {
@as("EventId") eventId: amazonawsString,
@as("Date") date: tStamp,
@as("Severity") severity: amazonawsString,
@as("EventCategories") eventCategories: eventCategoriesList,
@as("Message") message: amazonawsString,
@as("SourceType") sourceType: sourceType,
@as("SourceIdentifier") sourceIdentifier: amazonawsString
}
type endpointAuthorization = {
@as("EndpointCount") endpointCount: amazonawsInteger,
@as("AllowedVPCs") allowedVPCs: vpcIdentifierList,
@as("AllowedAllVPCs") allowedAllVPCs: amazonawsBoolean,
@as("Status") status: authorizationStatus,
@as("ClusterStatus") clusterStatus: amazonawsString,
@as("AuthorizeTime") authorizeTime: tStamp,
@as("ClusterIdentifier") clusterIdentifier: amazonawsString,
@as("Grantee") grantee: amazonawsString,
@as("Grantor") grantor: amazonawsString
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
@as("NetworkInterfaces") networkInterfaces: networkInterfaceList,
@as("VpcId") vpcId: amazonawsString,
@as("VpcEndpointId") vpcEndpointId: amazonawsString
}
type usageLimit = {
@as("Tags") tags: tagList,
@as("BreachAction") breachAction: usageLimitBreachAction,
@as("Period") period: usageLimitPeriod,
@as("Amount") amount: amazonawsLong,
@as("LimitType") limitType: usageLimitLimitType,
@as("FeatureType") featureType: usageLimitFeatureType,
@as("ClusterIdentifier") clusterIdentifier: amazonawsString,
@as("UsageLimitId") usageLimitId: amazonawsString
}
type updateTarget = {
@as("SupportedOperations") supportedOperations: supportedOperationList,
@as("DatabaseVersion") databaseVersion: amazonawsString,
@as("MaintenanceTrackName") maintenanceTrackName: amazonawsString
}
type taggedResourceList = array<taggedResource>
type snapshotSchedule = {
@as("AssociatedClusters") associatedClusters: associatedClusterList,
@as("AssociatedClusterCount") associatedClusterCount: integerOptional,
@as("NextInvocations") nextInvocations: scheduledSnapshotTimeList,
@as("Tags") tags: tagList,
@as("ScheduleDescription") scheduleDescription: amazonawsString,
@as("ScheduleIdentifier") scheduleIdentifier: amazonawsString,
@as("ScheduleDefinitions") scheduleDefinitions: scheduleDefinitionList
}
type snapshotCopyGrant = {
@as("Tags") tags: tagList,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("SnapshotCopyGrantName") snapshotCopyGrantName: amazonawsString
}
type snapshot = {
@as("SnapshotRetentionStartTime") snapshotRetentionStartTime: tStamp,
@as("ManualSnapshotRemainingDays") manualSnapshotRemainingDays: integerOptional,
@as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: integerOptional,
@as("MaintenanceTrackName") maintenanceTrackName: amazonawsString,
@as("EnhancedVpcRouting") enhancedVpcRouting: amazonawsBoolean,
@as("RestorableNodeTypes") restorableNodeTypes: restorableNodeTypeList,
@as("Tags") tags: tagList,
@as("SourceRegion") sourceRegion: amazonawsString,
@as("ElapsedTimeInSeconds") elapsedTimeInSeconds: amazonawsLong,
@as("EstimatedSecondsToCompletion") estimatedSecondsToCompletion: amazonawsLong,
@as("CurrentBackupRateInMegaBytesPerSecond") currentBackupRateInMegaBytesPerSecond: amazonawsDouble,
@as("BackupProgressInMegaBytes") backupProgressInMegaBytes: amazonawsDouble,
@as("ActualIncrementalBackupSizeInMegaBytes") actualIncrementalBackupSizeInMegaBytes: amazonawsDouble,
@as("TotalBackupSizeInMegaBytes") totalBackupSizeInMegaBytes: amazonawsDouble,
@as("OwnerAccount") ownerAccount: amazonawsString,
@as("AccountsWithRestoreAccess") accountsWithRestoreAccess: accountsWithRestoreAccessList,
@as("EncryptedWithHSM") encryptedWithHSM: amazonawsBoolean,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("Encrypted") encrypted: amazonawsBoolean,
@as("VpcId") vpcId: amazonawsString,
@as("DBName") dBName: amazonawsString,
@as("NumberOfNodes") numberOfNodes: amazonawsInteger,
@as("NodeType") nodeType: amazonawsString,
@as("SnapshotType") snapshotType: amazonawsString,
@as("EngineFullVersion") engineFullVersion: amazonawsString,
@as("ClusterVersion") clusterVersion: amazonawsString,
@as("MasterUsername") masterUsername: amazonawsString,
@as("ClusterCreateTime") clusterCreateTime: tStamp,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("Port") port: amazonawsInteger,
@as("Status") status: amazonawsString,
@as("SnapshotCreateTime") snapshotCreateTime: tStamp,
@as("ClusterIdentifier") clusterIdentifier: amazonawsString,
@as("SnapshotIdentifier") snapshotIdentifier: amazonawsString
}
type scheduledActionFilterList = array<scheduledActionFilter>
type scheduledAction = {
@as("EndTime") endTime: tStamp,
@as("StartTime") startTime: tStamp,
@as("NextInvocations") nextInvocations: scheduledActionTimeList,
@as("State") state: scheduledActionState,
@as("ScheduledActionDescription") scheduledActionDescription: amazonawsString,
@as("IamRole") iamRole: amazonawsString,
@as("Schedule") schedule: amazonawsString,
@as("TargetAction") targetAction: scheduledActionType,
@as("ScheduledActionName") scheduledActionName: amazonawsString
}
type reservedNodeOffering = {
@as("ReservedNodeOfferingType") reservedNodeOfferingType: reservedNodeOfferingType,
@as("RecurringCharges") recurringCharges: recurringChargeList,
@as("OfferingType") offeringType: amazonawsString,
@as("CurrencyCode") currencyCode: amazonawsString,
@as("UsagePrice") usagePrice: amazonawsDouble,
@as("FixedPrice") fixedPrice: amazonawsDouble,
@as("Duration") duration: amazonawsInteger,
@as("NodeType") nodeType: amazonawsString,
@as("ReservedNodeOfferingId") reservedNodeOfferingId: amazonawsString
}
type reservedNode = {
@as("ReservedNodeOfferingType") reservedNodeOfferingType: reservedNodeOfferingType,
@as("RecurringCharges") recurringCharges: recurringChargeList,
@as("OfferingType") offeringType: amazonawsString,
@as("State") state: amazonawsString,
@as("NodeCount") nodeCount: amazonawsInteger,
@as("CurrencyCode") currencyCode: amazonawsString,
@as("UsagePrice") usagePrice: amazonawsDouble,
@as("FixedPrice") fixedPrice: amazonawsDouble,
@as("Duration") duration: amazonawsInteger,
@as("StartTime") startTime: tStamp,
@as("NodeType") nodeType: amazonawsString,
@as("ReservedNodeOfferingId") reservedNodeOfferingId: amazonawsString,
@as("ReservedNodeId") reservedNodeId: amazonawsString
}
type nodeConfigurationOptionsFilterList = array<nodeConfigurationOptionsFilter>
type iPRange = {
@as("Tags") tags: tagList,
@as("CIDRIP") cIDRIP: amazonawsString,
@as("Status") status: amazonawsString
}
type hsmConfiguration = {
@as("Tags") tags: tagList,
@as("HsmPartitionName") hsmPartitionName: amazonawsString,
@as("HsmIpAddress") hsmIpAddress: amazonawsString,
@as("Description") description: amazonawsString,
@as("HsmConfigurationIdentifier") hsmConfigurationIdentifier: amazonawsString
}
type hsmClientCertificate = {
@as("Tags") tags: tagList,
@as("HsmClientCertificatePublicKey") hsmClientCertificatePublicKey: amazonawsString,
@as("HsmClientCertificateIdentifier") hsmClientCertificateIdentifier: amazonawsString
}
type eventSubscription = {
@as("Tags") tags: tagList,
@as("Enabled") enabled: amazonawsBoolean,
@as("Severity") severity: amazonawsString,
@as("EventCategoriesList") eventCategoriesList: eventCategoriesList,
@as("SourceIdsList") sourceIdsList: sourceIdsList,
@as("SourceType") sourceType: amazonawsString,
@as("SubscriptionCreationTime") subscriptionCreationTime: tStamp,
@as("Status") status: amazonawsString,
@as("SnsTopicArn") snsTopicArn: amazonawsString,
@as("CustSubscriptionId") custSubscriptionId: amazonawsString,
@as("CustomerAwsId") customerAwsId: amazonawsString
}
type eventList = array<event>
type eventInfoMapList = array<eventInfoMap>
type endpointAuthorizations = array<endpointAuthorization>
type eC2SecurityGroup = {
@as("Tags") tags: tagList,
@as("EC2SecurityGroupOwnerId") eC2SecurityGroupOwnerId: amazonawsString,
@as("EC2SecurityGroupName") eC2SecurityGroupName: amazonawsString,
@as("Status") status: amazonawsString
}
type defaultClusterParameters = {
@as("Parameters") parameters: parametersList,
@as("Marker") marker: amazonawsString,
@as("ParameterGroupFamily") parameterGroupFamily: amazonawsString
}
type clusterParameterGroupStatus = {
@as("ClusterParameterStatusList") clusterParameterStatusList: clusterParameterStatusList,
@as("ParameterApplyStatus") parameterApplyStatus: amazonawsString,
@as("ParameterGroupName") parameterGroupName: amazonawsString
}
type clusterParameterGroup = {
@as("Tags") tags: tagList,
@as("Description") description: amazonawsString,
@as("ParameterGroupFamily") parameterGroupFamily: amazonawsString,
@as("ParameterGroupName") parameterGroupName: amazonawsString
}
type clusterDbRevision = {
@as("RevisionTargets") revisionTargets: revisionTargetsList,
@as("DatabaseRevisionReleaseDate") databaseRevisionReleaseDate: tStamp,
@as("CurrentDatabaseRevision") currentDatabaseRevision: amazonawsString,
@as("ClusterIdentifier") clusterIdentifier: amazonawsString
}
type availabilityZone = {
@as("SupportedPlatforms") supportedPlatforms: supportedPlatformsList,
@as("Name") name: amazonawsString
}
type accountAttribute = {
@as("AttributeValues") attributeValues: attributeValueList,
@as("AttributeName") attributeName: amazonawsString
}
type vpcEndpointsList = array<vpcEndpoint>
type usageLimits = array<usageLimit>
type subnet = {
@as("SubnetStatus") subnetStatus: amazonawsString,
@as("SubnetAvailabilityZone") subnetAvailabilityZone: availabilityZone,
@as("SubnetIdentifier") subnetIdentifier: amazonawsString
}
type snapshotScheduleList = array<snapshotSchedule>
type snapshotList = array<snapshot>
type snapshotCopyGrantList = array<snapshotCopyGrant>
type scheduledActionList = array<scheduledAction>
type reservedNodeOfferingList = array<reservedNodeOffering>
type reservedNodeList = array<reservedNode>
type parameterGroupList = array<clusterParameterGroup>
type iPRangeList = array<iPRange>
type hsmConfigurationList = array<hsmConfiguration>
type hsmClientCertificateList = array<hsmClientCertificate>
type eventSubscriptionsList = array<eventSubscription>
type eventCategoriesMap = {
@as("Events") events: eventInfoMapList,
@as("SourceType") sourceType: amazonawsString
}
type endpointAccess = {
@as("VpcEndpoint") vpcEndpoint: vpcEndpoint,
@as("VpcSecurityGroups") vpcSecurityGroups: vpcSecurityGroupMembershipList,
@as("Address") address: amazonawsString,
@as("Port") port: amazonawsInteger,
@as("EndpointCreateTime") endpointCreateTime: tStamp,
@as("EndpointName") endpointName: amazonawsString,
@as("EndpointStatus") endpointStatus: amazonawsString,
@as("SubnetGroupName") subnetGroupName: amazonawsString,
@as("ResourceOwner") resourceOwner: amazonawsString,
@as("ClusterIdentifier") clusterIdentifier: amazonawsString
}
type eligibleTracksToUpdateList = array<updateTarget>
type eC2SecurityGroupList = array<eC2SecurityGroup>
type clusterParameterGroupStatusList = array<clusterParameterGroupStatus>
type clusterDbRevisionsList = array<clusterDbRevision>
type availabilityZoneList = array<availabilityZone>
type attributeList = array<accountAttribute>
type subnetList = array<subnet>
type orderableClusterOption = {
@as("AvailabilityZones") availabilityZones: availabilityZoneList,
@as("NodeType") nodeType: amazonawsString,
@as("ClusterType") clusterType: amazonawsString,
@as("ClusterVersion") clusterVersion: amazonawsString
}
type maintenanceTrack = {
@as("UpdateTargets") updateTargets: eligibleTracksToUpdateList,
@as("DatabaseVersion") databaseVersion: amazonawsString,
@as("MaintenanceTrackName") maintenanceTrackName: amazonawsString
}
type eventCategoriesMapList = array<eventCategoriesMap>
type endpointAccesses = array<endpointAccess>
type endpoint = {
@as("VpcEndpoints") vpcEndpoints: vpcEndpointsList,
@as("Port") port: amazonawsInteger,
@as("Address") address: amazonawsString
}
type clusterSecurityGroup = {
@as("Tags") tags: tagList,
@as("IPRanges") iPRanges: iPRangeList,
@as("EC2SecurityGroups") eC2SecurityGroups: eC2SecurityGroupList,
@as("Description") description: amazonawsString,
@as("ClusterSecurityGroupName") clusterSecurityGroupName: amazonawsString
}
type trackList = array<maintenanceTrack>
type orderableClusterOptionsList = array<orderableClusterOption>
type clusterSubnetGroup = {
@as("Tags") tags: tagList,
@as("Subnets") subnets: subnetList,
@as("SubnetGroupStatus") subnetGroupStatus: amazonawsString,
@as("VpcId") vpcId: amazonawsString,
@as("Description") description: amazonawsString,
@as("ClusterSubnetGroupName") clusterSubnetGroupName: amazonawsString
}
type clusterSecurityGroups = array<clusterSecurityGroup>
type cluster = {
@as("AquaConfiguration") aquaConfiguration: aquaConfiguration,
@as("TotalStorageCapacityInMegaBytes") totalStorageCapacityInMegaBytes: longOptional,
@as("ClusterNamespaceArn") clusterNamespaceArn: amazonawsString,
@as("AvailabilityZoneRelocationStatus") availabilityZoneRelocationStatus: amazonawsString,
@as("ResizeInfo") resizeInfo: resizeInfo,
@as("NextMaintenanceWindowStartTime") nextMaintenanceWindowStartTime: tStamp,
@as("ExpectedNextSnapshotScheduleTimeStatus") expectedNextSnapshotScheduleTimeStatus: amazonawsString,
@as("ExpectedNextSnapshotScheduleTime") expectedNextSnapshotScheduleTime: tStamp,
@as("SnapshotScheduleState") snapshotScheduleState: scheduleState,
@as("SnapshotScheduleIdentifier") snapshotScheduleIdentifier: amazonawsString,
@as("DeferredMaintenanceWindows") deferredMaintenanceWindows: deferredMaintenanceWindowsList,
@as("ElasticResizeNumberOfNodeOptions") elasticResizeNumberOfNodeOptions: amazonawsString,
@as("MaintenanceTrackName") maintenanceTrackName: amazonawsString,
@as("PendingActions") pendingActions: pendingActionsList,
@as("IamRoles") iamRoles: clusterIamRoleList,
@as("EnhancedVpcRouting") enhancedVpcRouting: amazonawsBoolean,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("Tags") tags: tagList,
@as("ClusterRevisionNumber") clusterRevisionNumber: amazonawsString,
@as("ElasticIpStatus") elasticIpStatus: elasticIpStatus,
@as("ClusterNodes") clusterNodes: clusterNodesList,
@as("ClusterPublicKey") clusterPublicKey: amazonawsString,
@as("ClusterSnapshotCopyStatus") clusterSnapshotCopyStatus: clusterSnapshotCopyStatus,
@as("HsmStatus") hsmStatus: hsmStatus,
@as("DataTransferProgress") dataTransferProgress: dataTransferProgress,
@as("RestoreStatus") restoreStatus: restoreStatus,
@as("Encrypted") encrypted: amazonawsBoolean,
@as("PubliclyAccessible") publiclyAccessible: amazonawsBoolean,
@as("NumberOfNodes") numberOfNodes: amazonawsInteger,
@as("AllowVersionUpgrade") allowVersionUpgrade: amazonawsBoolean,
@as("ClusterVersion") clusterVersion: amazonawsString,
@as("PendingModifiedValues") pendingModifiedValues: pendingModifiedValues,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("VpcId") vpcId: amazonawsString,
@as("ClusterSubnetGroupName") clusterSubnetGroupName: amazonawsString,
@as("ClusterParameterGroups") clusterParameterGroups: clusterParameterGroupStatusList,
@as("VpcSecurityGroups") vpcSecurityGroups: vpcSecurityGroupMembershipList,
@as("ClusterSecurityGroups") clusterSecurityGroups: clusterSecurityGroupMembershipList,
@as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: amazonawsInteger,
@as("AutomatedSnapshotRetentionPeriod") automatedSnapshotRetentionPeriod: amazonawsInteger,
@as("ClusterCreateTime") clusterCreateTime: tStamp,
@as("Endpoint") endpoint: endpoint,
@as("DBName") dBName: amazonawsString,
@as("MasterUsername") masterUsername: amazonawsString,
@as("ModifyStatus") modifyStatus: amazonawsString,
@as("ClusterAvailabilityStatus") clusterAvailabilityStatus: amazonawsString,
@as("ClusterStatus") clusterStatus: amazonawsString,
@as("NodeType") nodeType: amazonawsString,
@as("ClusterIdentifier") clusterIdentifier: amazonawsString
}
type clusterSubnetGroups = array<clusterSubnetGroup>
type clusterList = array<cluster>
type clientType;
@module("@aws-sdk/client-redshift") @new external createClient: unit => clientType = "RedshiftClient";
module UpdatePartnerStatus = {
  type t;
  type request = {
@as("StatusMessage") statusMessage: partnerIntegrationStatusMessage,
@as("Status") status: option<partnerIntegrationStatus>,
@as("PartnerName") partnerName: option<partnerIntegrationPartnerName>,
@as("DatabaseName") databaseName: option<partnerIntegrationDatabaseName>,
@as("ClusterIdentifier") clusterIdentifier: option<partnerIntegrationClusterIdentifier>,
@as("AccountId") accountId: option<partnerIntegrationAccountId>
}
  type response = {
@as("PartnerName") partnerName: partnerIntegrationPartnerName,
@as("DatabaseName") databaseName: partnerIntegrationDatabaseName
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "UpdatePartnerStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyClusterSnapshotSchedule = {
  type t;
  type request = {
@as("DisassociateSchedule") disassociateSchedule: booleanOptional,
@as("ScheduleIdentifier") scheduleIdentifier: amazonawsString,
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>
}
  
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "ModifyClusterSnapshotScheduleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module EnableLogging = {
  type t;
  type request = {
@as("S3KeyPrefix") s3KeyPrefix: amazonawsString,
@as("BucketName") bucketName: option<amazonawsString>,
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>
}
  type response = {
@as("LastFailureMessage") lastFailureMessage: amazonawsString,
@as("LastFailureTime") lastFailureTime: tStamp,
@as("LastSuccessfulDeliveryTime") lastSuccessfulDeliveryTime: tStamp,
@as("S3KeyPrefix") s3KeyPrefix: amazonawsString,
@as("BucketName") bucketName: amazonawsString,
@as("LoggingEnabled") loggingEnabled: amazonawsBoolean
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "EnableLoggingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableLogging = {
  type t;
  type request = {
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>
}
  type response = {
@as("LastFailureMessage") lastFailureMessage: amazonawsString,
@as("LastFailureTime") lastFailureTime: tStamp,
@as("LastSuccessfulDeliveryTime") lastSuccessfulDeliveryTime: tStamp,
@as("S3KeyPrefix") s3KeyPrefix: amazonawsString,
@as("BucketName") bucketName: amazonawsString,
@as("LoggingEnabled") loggingEnabled: amazonawsBoolean
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DisableLoggingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStorage = {
  type t;
  
  type response = {
@as("TotalProvisionedStorageInMegaBytes") totalProvisionedStorageInMegaBytes: amazonawsDouble,
@as("TotalBackupSizeInMegaBytes") totalBackupSizeInMegaBytes: amazonawsDouble
}
  @module("@aws-sdk/client-redshift") @new external new_: (unit) => t = "DescribeStorageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLoggingStatus = {
  type t;
  type request = {
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>
}
  type response = {
@as("LastFailureMessage") lastFailureMessage: amazonawsString,
@as("LastFailureTime") lastFailureTime: tStamp,
@as("LastSuccessfulDeliveryTime") lastSuccessfulDeliveryTime: tStamp,
@as("S3KeyPrefix") s3KeyPrefix: amazonawsString,
@as("BucketName") bucketName: amazonawsString,
@as("LoggingEnabled") loggingEnabled: amazonawsBoolean
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeLoggingStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteUsageLimit = {
  type t;
  type request = {
@as("UsageLimitId") usageLimitId: option<amazonawsString>
}
  
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DeleteUsageLimitCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteSnapshotSchedule = {
  type t;
  type request = {
@as("ScheduleIdentifier") scheduleIdentifier: option<amazonawsString>
}
  
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DeleteSnapshotScheduleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteSnapshotCopyGrant = {
  type t;
  type request = {
@as("SnapshotCopyGrantName") snapshotCopyGrantName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DeleteSnapshotCopyGrantCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteScheduledAction = {
  type t;
  type request = {
@as("ScheduledActionName") scheduledActionName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DeleteScheduledActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeletePartner = {
  type t;
  type request = {
@as("PartnerName") partnerName: option<partnerIntegrationPartnerName>,
@as("DatabaseName") databaseName: option<partnerIntegrationDatabaseName>,
@as("ClusterIdentifier") clusterIdentifier: option<partnerIntegrationClusterIdentifier>,
@as("AccountId") accountId: option<partnerIntegrationAccountId>
}
  type response = {
@as("PartnerName") partnerName: partnerIntegrationPartnerName,
@as("DatabaseName") databaseName: partnerIntegrationDatabaseName
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DeletePartnerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteHsmConfiguration = {
  type t;
  type request = {
@as("HsmConfigurationIdentifier") hsmConfigurationIdentifier: option<amazonawsString>
}
  
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DeleteHsmConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteHsmClientCertificate = {
  type t;
  type request = {
@as("HsmClientCertificateIdentifier") hsmClientCertificateIdentifier: option<amazonawsString>
}
  
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DeleteHsmClientCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteEventSubscription = {
  type t;
  type request = {
@as("SubscriptionName") subscriptionName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DeleteEventSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteClusterSubnetGroup = {
  type t;
  type request = {
@as("ClusterSubnetGroupName") clusterSubnetGroupName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DeleteClusterSubnetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteClusterSecurityGroup = {
  type t;
  type request = {
@as("ClusterSecurityGroupName") clusterSecurityGroupName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DeleteClusterSecurityGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteClusterParameterGroup = {
  type t;
  type request = {
@as("ParameterGroupName") parameterGroupName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DeleteClusterParameterGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AddPartner = {
  type t;
  type request = {
@as("PartnerName") partnerName: option<partnerIntegrationPartnerName>,
@as("DatabaseName") databaseName: option<partnerIntegrationDatabaseName>,
@as("ClusterIdentifier") clusterIdentifier: option<partnerIntegrationClusterIdentifier>,
@as("AccountId") accountId: option<partnerIntegrationAccountId>
}
  type response = {
@as("PartnerName") partnerName: partnerIntegrationPartnerName,
@as("DatabaseName") databaseName: partnerIntegrationDatabaseName
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "AddPartnerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RevokeEndpointAccess = {
  type t;
  type request = {
@as("Force") force: amazonawsBoolean,
@as("VpcIds") vpcIds: vpcIdentifierList,
@as("Account") account: amazonawsString,
@as("ClusterIdentifier") clusterIdentifier: amazonawsString
}
  type response = endpointAuthorization;
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "RevokeEndpointAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RestoreTableFromClusterSnapshot = {
  type t;
  type request = {
@as("EnableCaseSensitiveIdentifier") enableCaseSensitiveIdentifier: booleanOptional,
@as("NewTableName") newTableName: option<amazonawsString>,
@as("TargetSchemaName") targetSchemaName: amazonawsString,
@as("TargetDatabaseName") targetDatabaseName: amazonawsString,
@as("SourceTableName") sourceTableName: option<amazonawsString>,
@as("SourceSchemaName") sourceSchemaName: amazonawsString,
@as("SourceDatabaseName") sourceDatabaseName: option<amazonawsString>,
@as("SnapshotIdentifier") snapshotIdentifier: option<amazonawsString>,
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>
}
  type response = {
@as("TableRestoreStatus") tableRestoreStatus: tableRestoreStatus
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "RestoreTableFromClusterSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyAquaConfiguration = {
  type t;
  type request = {
@as("AquaConfigurationStatus") aquaConfigurationStatus: aquaConfigurationStatus,
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>
}
  type response = {
@as("AquaConfiguration") aquaConfiguration: aquaConfiguration
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "ModifyAquaConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetClusterCredentials = {
  type t;
  type request = {
@as("DbGroups") dbGroups: dbGroupList,
@as("AutoCreate") autoCreate: booleanOptional,
@as("DurationSeconds") durationSeconds: integerOptional,
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>,
@as("DbName") dbName: amazonawsString,
@as("DbUser") dbUser: option<amazonawsString>
}
  type response = {
@as("Expiration") expiration: tStamp,
@as("DbPassword") dbPassword: sensitiveString,
@as("DbUser") dbUser: amazonawsString
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "GetClusterCredentialsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeResize = {
  type t;
  type request = {
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>
}
  type response = {
@as("DataTransferProgressPercent") dataTransferProgressPercent: doubleOptional,
@as("TargetEncryptionType") targetEncryptionType: amazonawsString,
@as("Message") message: amazonawsString,
@as("ResizeType") resizeType: amazonawsString,
@as("EstimatedTimeToCompletionInSeconds") estimatedTimeToCompletionInSeconds: longOptional,
@as("ElapsedTimeInSeconds") elapsedTimeInSeconds: longOptional,
@as("ProgressInMegaBytes") progressInMegaBytes: longOptional,
@as("TotalResizeDataInMegaBytes") totalResizeDataInMegaBytes: longOptional,
@as("AvgResizeRateInMegaBytesPerSecond") avgResizeRateInMegaBytesPerSecond: doubleOptional,
@as("ImportTablesNotStarted") importTablesNotStarted: importTablesNotStarted,
@as("ImportTablesInProgress") importTablesInProgress: importTablesInProgress,
@as("ImportTablesCompleted") importTablesCompleted: importTablesCompleted,
@as("Status") status: amazonawsString,
@as("TargetClusterType") targetClusterType: amazonawsString,
@as("TargetNumberOfNodes") targetNumberOfNodes: integerOptional,
@as("TargetNodeType") targetNodeType: amazonawsString
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeResizeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTags = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceName") resourceName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DeleteTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CancelResize = {
  type t;
  type request = {
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>
}
  type response = {
@as("DataTransferProgressPercent") dataTransferProgressPercent: doubleOptional,
@as("TargetEncryptionType") targetEncryptionType: amazonawsString,
@as("Message") message: amazonawsString,
@as("ResizeType") resizeType: amazonawsString,
@as("EstimatedTimeToCompletionInSeconds") estimatedTimeToCompletionInSeconds: longOptional,
@as("ElapsedTimeInSeconds") elapsedTimeInSeconds: longOptional,
@as("ProgressInMegaBytes") progressInMegaBytes: longOptional,
@as("TotalResizeDataInMegaBytes") totalResizeDataInMegaBytes: longOptional,
@as("AvgResizeRateInMegaBytesPerSecond") avgResizeRateInMegaBytesPerSecond: doubleOptional,
@as("ImportTablesNotStarted") importTablesNotStarted: importTablesNotStarted,
@as("ImportTablesInProgress") importTablesInProgress: importTablesInProgress,
@as("ImportTablesCompleted") importTablesCompleted: importTablesCompleted,
@as("Status") status: amazonawsString,
@as("TargetClusterType") targetClusterType: amazonawsString,
@as("TargetNumberOfNodes") targetNumberOfNodes: integerOptional,
@as("TargetNodeType") targetNodeType: amazonawsString
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "CancelResizeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AuthorizeEndpointAccess = {
  type t;
  type request = {
@as("VpcIds") vpcIds: vpcIdentifierList,
@as("Account") account: option<amazonawsString>,
@as("ClusterIdentifier") clusterIdentifier: amazonawsString
}
  type response = endpointAuthorization;
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "AuthorizeEndpointAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResetClusterParameterGroup = {
  type t;
  type request = {
@as("Parameters") parameters: parametersList,
@as("ResetAllParameters") resetAllParameters: amazonawsBoolean,
@as("ParameterGroupName") parameterGroupName: option<amazonawsString>
}
  type response = {
@as("ParameterGroupStatus") parameterGroupStatus: amazonawsString,
@as("ParameterGroupName") parameterGroupName: amazonawsString
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "ResetClusterParameterGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyUsageLimit = {
  type t;
  type request = {
@as("BreachAction") breachAction: usageLimitBreachAction,
@as("Amount") amount: longOptional,
@as("UsageLimitId") usageLimitId: option<amazonawsString>
}
  type response = usageLimit;
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "ModifyUsageLimitCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifySnapshotSchedule = {
  type t;
  type request = {
@as("ScheduleDefinitions") scheduleDefinitions: option<scheduleDefinitionList>,
@as("ScheduleIdentifier") scheduleIdentifier: option<amazonawsString>
}
  type response = snapshotSchedule;
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "ModifySnapshotScheduleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyScheduledAction = {
  type t;
  type request = {
@as("Enable") enable: booleanOptional,
@as("EndTime") endTime: tStamp,
@as("StartTime") startTime: tStamp,
@as("ScheduledActionDescription") scheduledActionDescription: amazonawsString,
@as("IamRole") iamRole: amazonawsString,
@as("Schedule") schedule: amazonawsString,
@as("TargetAction") targetAction: scheduledActionType,
@as("ScheduledActionName") scheduledActionName: option<amazonawsString>
}
  type response = scheduledAction;
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "ModifyScheduledActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyClusterParameterGroup = {
  type t;
  type request = {
@as("Parameters") parameters: option<parametersList>,
@as("ParameterGroupName") parameterGroupName: option<amazonawsString>
}
  type response = {
@as("ParameterGroupStatus") parameterGroupStatus: amazonawsString,
@as("ParameterGroupName") parameterGroupName: amazonawsString
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "ModifyClusterParameterGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTableRestoreStatus = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("TableRestoreRequestId") tableRestoreRequestId: amazonawsString,
@as("ClusterIdentifier") clusterIdentifier: amazonawsString
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("TableRestoreStatusDetails") tableRestoreStatusDetails: tableRestoreStatusList
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeTableRestoreStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePartners = {
  type t;
  type request = {
@as("PartnerName") partnerName: partnerIntegrationPartnerName,
@as("DatabaseName") databaseName: partnerIntegrationDatabaseName,
@as("ClusterIdentifier") clusterIdentifier: option<partnerIntegrationClusterIdentifier>,
@as("AccountId") accountId: option<partnerIntegrationAccountId>
}
  type response = {
@as("PartnerIntegrationInfoList") partnerIntegrationInfoList: partnerIntegrationInfoList
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribePartnersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeClusterVersions = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("ClusterParameterGroupFamily") clusterParameterGroupFamily: amazonawsString,
@as("ClusterVersion") clusterVersion: amazonawsString
}
  type response = {
@as("ClusterVersions") clusterVersions: clusterVersionList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeClusterVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeClusterParameters = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Source") source: amazonawsString,
@as("ParameterGroupName") parameterGroupName: option<amazonawsString>
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("Parameters") parameters: parametersList
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeClusterParametersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateUsageLimit = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("BreachAction") breachAction: usageLimitBreachAction,
@as("Period") period: usageLimitPeriod,
@as("Amount") amount: option<amazonawsLong>,
@as("LimitType") limitType: option<usageLimitLimitType>,
@as("FeatureType") featureType: option<usageLimitFeatureType>,
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>
}
  type response = usageLimit;
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "CreateUsageLimitCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTags = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceName") resourceName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "CreateTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateSnapshotSchedule = {
  type t;
  type request = {
@as("NextInvocations") nextInvocations: integerOptional,
@as("DryRun") dryRun: booleanOptional,
@as("Tags") tags: tagList,
@as("ScheduleDescription") scheduleDescription: amazonawsString,
@as("ScheduleIdentifier") scheduleIdentifier: amazonawsString,
@as("ScheduleDefinitions") scheduleDefinitions: scheduleDefinitionList
}
  type response = snapshotSchedule;
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "CreateSnapshotScheduleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateScheduledAction = {
  type t;
  type request = {
@as("Enable") enable: booleanOptional,
@as("EndTime") endTime: tStamp,
@as("StartTime") startTime: tStamp,
@as("ScheduledActionDescription") scheduledActionDescription: amazonawsString,
@as("IamRole") iamRole: option<amazonawsString>,
@as("Schedule") schedule: option<amazonawsString>,
@as("TargetAction") targetAction: option<scheduledActionType>,
@as("ScheduledActionName") scheduledActionName: option<amazonawsString>
}
  type response = scheduledAction;
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "CreateScheduledActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchModifyClusterSnapshots = {
  type t;
  type request = {
@as("Force") force: amazonawsBoolean,
@as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: integerOptional,
@as("SnapshotIdentifierList") snapshotIdentifierList: option<snapshotIdentifierList>
}
  type response = {
@as("Errors") errors: batchSnapshotOperationErrors,
@as("Resources") resources: snapshotIdentifierList
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "BatchModifyClusterSnapshotsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDeleteClusterSnapshots = {
  type t;
  type request = {
@as("Identifiers") identifiers: option<deleteClusterSnapshotMessageList>
}
  type response = {
@as("Errors") errors: batchSnapshotOperationErrorList,
@as("Resources") resources: snapshotIdentifierList
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "BatchDeleteClusterSnapshotsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RevokeSnapshotAccess = {
  type t;
  type request = {
@as("AccountWithRestoreAccess") accountWithRestoreAccess: option<amazonawsString>,
@as("SnapshotClusterIdentifier") snapshotClusterIdentifier: amazonawsString,
@as("SnapshotIdentifier") snapshotIdentifier: option<amazonawsString>
}
  type response = {
@as("Snapshot") snapshot: snapshot
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "RevokeSnapshotAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PurchaseReservedNodeOffering = {
  type t;
  type request = {
@as("NodeCount") nodeCount: integerOptional,
@as("ReservedNodeOfferingId") reservedNodeOfferingId: option<amazonawsString>
}
  type response = {
@as("ReservedNode") reservedNode: reservedNode
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "PurchaseReservedNodeOfferingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyEventSubscription = {
  type t;
  type request = {
@as("Enabled") enabled: booleanOptional,
@as("Severity") severity: amazonawsString,
@as("EventCategories") eventCategories: eventCategoriesList,
@as("SourceIds") sourceIds: sourceIdsList,
@as("SourceType") sourceType: amazonawsString,
@as("SnsTopicArn") snsTopicArn: amazonawsString,
@as("SubscriptionName") subscriptionName: option<amazonawsString>
}
  type response = {
@as("EventSubscription") eventSubscription: eventSubscription
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "ModifyEventSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyEndpointAccess = {
  type t;
  type request = {
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: vpcSecurityGroupIdList,
@as("EndpointName") endpointName: option<amazonawsString>
}
  type response = endpointAccess;
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "ModifyEndpointAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyClusterSnapshot = {
  type t;
  type request = {
@as("Force") force: amazonawsBoolean,
@as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: integerOptional,
@as("SnapshotIdentifier") snapshotIdentifier: option<amazonawsString>
}
  type response = {
@as("Snapshot") snapshot: snapshot
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "ModifyClusterSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTags = {
  type t;
  type request = {
@as("TagValues") tagValues: tagValueList,
@as("TagKeys") tagKeys: tagKeyList,
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("ResourceType") resourceType: amazonawsString,
@as("ResourceName") resourceName: amazonawsString
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("TaggedResources") taggedResources: taggedResourceList
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeNodeConfigurationOptions = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: integerOptional,
@as("Marker") marker: amazonawsString,
@as("Filters") filters: nodeConfigurationOptionsFilterList,
@as("OwnerAccount") ownerAccount: amazonawsString,
@as("SnapshotIdentifier") snapshotIdentifier: amazonawsString,
@as("ClusterIdentifier") clusterIdentifier: amazonawsString,
@as("ActionType") actionType: option<actionType>
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("NodeConfigurationOptionList") nodeConfigurationOptionList: nodeConfigurationOptionList
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeNodeConfigurationOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEvents = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Duration") duration: integerOptional,
@as("EndTime") endTime: tStamp,
@as("StartTime") startTime: tStamp,
@as("SourceType") sourceType: sourceType,
@as("SourceIdentifier") sourceIdentifier: amazonawsString
}
  type response = {
@as("Events") events: eventList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEndpointAuthorization = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Grantee") grantee: booleanOptional,
@as("Account") account: amazonawsString,
@as("ClusterIdentifier") clusterIdentifier: amazonawsString
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("EndpointAuthorizationList") endpointAuthorizationList: endpointAuthorizations
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeEndpointAuthorizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDefaultClusterParameters = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("ParameterGroupFamily") parameterGroupFamily: option<amazonawsString>
}
  type response = {
@as("DefaultClusterParameters") defaultClusterParameters: defaultClusterParameters
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeDefaultClusterParametersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteEndpointAccess = {
  type t;
  type request = {
@as("EndpointName") endpointName: option<amazonawsString>
}
  type response = endpointAccess;
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DeleteEndpointAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteClusterSnapshot = {
  type t;
  type request = deleteClusterSnapshotMessage;
  type response = {
@as("Snapshot") snapshot: snapshot
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DeleteClusterSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSnapshotCopyGrant = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("SnapshotCopyGrantName") snapshotCopyGrantName: option<amazonawsString>
}
  type response = {
@as("SnapshotCopyGrant") snapshotCopyGrant: snapshotCopyGrant
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "CreateSnapshotCopyGrantCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateHsmConfiguration = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("HsmServerPublicCertificate") hsmServerPublicCertificate: option<amazonawsString>,
@as("HsmPartitionPassword") hsmPartitionPassword: option<amazonawsString>,
@as("HsmPartitionName") hsmPartitionName: option<amazonawsString>,
@as("HsmIpAddress") hsmIpAddress: option<amazonawsString>,
@as("Description") description: option<amazonawsString>,
@as("HsmConfigurationIdentifier") hsmConfigurationIdentifier: option<amazonawsString>
}
  type response = {
@as("HsmConfiguration") hsmConfiguration: hsmConfiguration
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "CreateHsmConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateHsmClientCertificate = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("HsmClientCertificateIdentifier") hsmClientCertificateIdentifier: option<amazonawsString>
}
  type response = {
@as("HsmClientCertificate") hsmClientCertificate: hsmClientCertificate
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "CreateHsmClientCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateEventSubscription = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Enabled") enabled: booleanOptional,
@as("Severity") severity: amazonawsString,
@as("EventCategories") eventCategories: eventCategoriesList,
@as("SourceIds") sourceIds: sourceIdsList,
@as("SourceType") sourceType: amazonawsString,
@as("SnsTopicArn") snsTopicArn: option<amazonawsString>,
@as("SubscriptionName") subscriptionName: option<amazonawsString>
}
  type response = {
@as("EventSubscription") eventSubscription: eventSubscription
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "CreateEventSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateEndpointAccess = {
  type t;
  type request = {
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: vpcSecurityGroupIdList,
@as("SubnetGroupName") subnetGroupName: option<amazonawsString>,
@as("EndpointName") endpointName: option<amazonawsString>,
@as("ResourceOwner") resourceOwner: amazonawsString,
@as("ClusterIdentifier") clusterIdentifier: amazonawsString
}
  type response = endpointAccess;
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "CreateEndpointAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateClusterSnapshot = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: integerOptional,
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>,
@as("SnapshotIdentifier") snapshotIdentifier: option<amazonawsString>
}
  type response = {
@as("Snapshot") snapshot: snapshot
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "CreateClusterSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateClusterParameterGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Description") description: option<amazonawsString>,
@as("ParameterGroupFamily") parameterGroupFamily: option<amazonawsString>,
@as("ParameterGroupName") parameterGroupName: option<amazonawsString>
}
  type response = {
@as("ClusterParameterGroup") clusterParameterGroup: clusterParameterGroup
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "CreateClusterParameterGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CopyClusterSnapshot = {
  type t;
  type request = {
@as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: integerOptional,
@as("TargetSnapshotIdentifier") targetSnapshotIdentifier: option<amazonawsString>,
@as("SourceSnapshotClusterIdentifier") sourceSnapshotClusterIdentifier: amazonawsString,
@as("SourceSnapshotIdentifier") sourceSnapshotIdentifier: option<amazonawsString>
}
  type response = {
@as("Snapshot") snapshot: snapshot
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "CopyClusterSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AuthorizeSnapshotAccess = {
  type t;
  type request = {
@as("AccountWithRestoreAccess") accountWithRestoreAccess: option<amazonawsString>,
@as("SnapshotClusterIdentifier") snapshotClusterIdentifier: amazonawsString,
@as("SnapshotIdentifier") snapshotIdentifier: option<amazonawsString>
}
  type response = {
@as("Snapshot") snapshot: snapshot
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "AuthorizeSnapshotAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcceptReservedNodeExchange = {
  type t;
  type request = {
@as("TargetReservedNodeOfferingId") targetReservedNodeOfferingId: option<amazonawsString>,
@as("ReservedNodeId") reservedNodeId: option<amazonawsString>
}
  type response = {
@as("ExchangedReservedNode") exchangedReservedNode: reservedNode
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "AcceptReservedNodeExchangeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetReservedNodeExchangeOfferings = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("ReservedNodeId") reservedNodeId: option<amazonawsString>
}
  type response = {
@as("ReservedNodeOfferings") reservedNodeOfferings: reservedNodeOfferingList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "GetReservedNodeExchangeOfferingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeUsageLimits = {
  type t;
  type request = {
@as("TagValues") tagValues: tagValueList,
@as("TagKeys") tagKeys: tagKeyList,
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("FeatureType") featureType: usageLimitFeatureType,
@as("ClusterIdentifier") clusterIdentifier: amazonawsString,
@as("UsageLimitId") usageLimitId: amazonawsString
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("UsageLimits") usageLimits: usageLimits
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeUsageLimitsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSnapshotSchedules = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: integerOptional,
@as("Marker") marker: amazonawsString,
@as("TagValues") tagValues: tagValueList,
@as("TagKeys") tagKeys: tagKeyList,
@as("ScheduleIdentifier") scheduleIdentifier: amazonawsString,
@as("ClusterIdentifier") clusterIdentifier: amazonawsString
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("SnapshotSchedules") snapshotSchedules: snapshotScheduleList
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeSnapshotSchedulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSnapshotCopyGrants = {
  type t;
  type request = {
@as("TagValues") tagValues: tagValueList,
@as("TagKeys") tagKeys: tagKeyList,
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("SnapshotCopyGrantName") snapshotCopyGrantName: amazonawsString
}
  type response = {
@as("SnapshotCopyGrants") snapshotCopyGrants: snapshotCopyGrantList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeSnapshotCopyGrantsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeScheduledActions = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: integerOptional,
@as("Marker") marker: amazonawsString,
@as("Filters") filters: scheduledActionFilterList,
@as("Active") active: booleanOptional,
@as("EndTime") endTime: tStamp,
@as("StartTime") startTime: tStamp,
@as("TargetActionType") targetActionType: scheduledActionTypeValues,
@as("ScheduledActionName") scheduledActionName: amazonawsString
}
  type response = {
@as("ScheduledActions") scheduledActions: scheduledActionList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeScheduledActionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReservedNodes = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("ReservedNodeId") reservedNodeId: amazonawsString
}
  type response = {
@as("ReservedNodes") reservedNodes: reservedNodeList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeReservedNodesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReservedNodeOfferings = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("ReservedNodeOfferingId") reservedNodeOfferingId: amazonawsString
}
  type response = {
@as("ReservedNodeOfferings") reservedNodeOfferings: reservedNodeOfferingList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeReservedNodeOfferingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeHsmConfigurations = {
  type t;
  type request = {
@as("TagValues") tagValues: tagValueList,
@as("TagKeys") tagKeys: tagKeyList,
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("HsmConfigurationIdentifier") hsmConfigurationIdentifier: amazonawsString
}
  type response = {
@as("HsmConfigurations") hsmConfigurations: hsmConfigurationList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeHsmConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeHsmClientCertificates = {
  type t;
  type request = {
@as("TagValues") tagValues: tagValueList,
@as("TagKeys") tagKeys: tagKeyList,
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("HsmClientCertificateIdentifier") hsmClientCertificateIdentifier: amazonawsString
}
  type response = {
@as("HsmClientCertificates") hsmClientCertificates: hsmClientCertificateList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeHsmClientCertificatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEventSubscriptions = {
  type t;
  type request = {
@as("TagValues") tagValues: tagValueList,
@as("TagKeys") tagKeys: tagKeyList,
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("SubscriptionName") subscriptionName: amazonawsString
}
  type response = {
@as("EventSubscriptionsList") eventSubscriptionsList: eventSubscriptionsList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeEventSubscriptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeClusterSnapshots = {
  type t;
  type request = {
@as("SortingEntities") sortingEntities: snapshotSortingEntityList,
@as("ClusterExists") clusterExists: booleanOptional,
@as("TagValues") tagValues: tagValueList,
@as("TagKeys") tagKeys: tagKeyList,
@as("OwnerAccount") ownerAccount: amazonawsString,
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("EndTime") endTime: tStamp,
@as("StartTime") startTime: tStamp,
@as("SnapshotType") snapshotType: amazonawsString,
@as("SnapshotIdentifier") snapshotIdentifier: amazonawsString,
@as("ClusterIdentifier") clusterIdentifier: amazonawsString
}
  type response = {
@as("Snapshots") snapshots: snapshotList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeClusterSnapshotsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeClusterParameterGroups = {
  type t;
  type request = {
@as("TagValues") tagValues: tagValueList,
@as("TagKeys") tagKeys: tagKeyList,
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("ParameterGroupName") parameterGroupName: amazonawsString
}
  type response = {
@as("ParameterGroups") parameterGroups: parameterGroupList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeClusterParameterGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeClusterDbRevisions = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("ClusterIdentifier") clusterIdentifier: amazonawsString
}
  type response = {
@as("ClusterDbRevisions") clusterDbRevisions: clusterDbRevisionsList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeClusterDbRevisionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountAttributes = {
  type t;
  type request = {
@as("AttributeNames") attributeNames: attributeNameList
}
  type response = {
@as("AccountAttributes") accountAttributes: attributeList
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeAccountAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RevokeClusterSecurityGroupIngress = {
  type t;
  type request = {
@as("EC2SecurityGroupOwnerId") eC2SecurityGroupOwnerId: amazonawsString,
@as("EC2SecurityGroupName") eC2SecurityGroupName: amazonawsString,
@as("CIDRIP") cIDRIP: amazonawsString,
@as("ClusterSecurityGroupName") clusterSecurityGroupName: option<amazonawsString>
}
  type response = {
@as("ClusterSecurityGroup") clusterSecurityGroup: clusterSecurityGroup
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "RevokeClusterSecurityGroupIngressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEventCategories = {
  type t;
  type request = {
@as("SourceType") sourceType: amazonawsString
}
  type response = {
@as("EventCategoriesMapList") eventCategoriesMapList: eventCategoriesMapList
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeEventCategoriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEndpointAccess = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("VpcId") vpcId: amazonawsString,
@as("EndpointName") endpointName: amazonawsString,
@as("ResourceOwner") resourceOwner: amazonawsString,
@as("ClusterIdentifier") clusterIdentifier: amazonawsString
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("EndpointAccessList") endpointAccessList: endpointAccesses
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeEndpointAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateClusterSecurityGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Description") description: option<amazonawsString>,
@as("ClusterSecurityGroupName") clusterSecurityGroupName: option<amazonawsString>
}
  type response = {
@as("ClusterSecurityGroup") clusterSecurityGroup: clusterSecurityGroup
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "CreateClusterSecurityGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AuthorizeClusterSecurityGroupIngress = {
  type t;
  type request = {
@as("EC2SecurityGroupOwnerId") eC2SecurityGroupOwnerId: amazonawsString,
@as("EC2SecurityGroupName") eC2SecurityGroupName: amazonawsString,
@as("CIDRIP") cIDRIP: amazonawsString,
@as("ClusterSecurityGroupName") clusterSecurityGroupName: option<amazonawsString>
}
  type response = {
@as("ClusterSecurityGroup") clusterSecurityGroup: clusterSecurityGroup
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "AuthorizeClusterSecurityGroupIngressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RotateEncryptionKey = {
  type t;
  type request = {
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>
}
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "RotateEncryptionKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResumeCluster = {
  type t;
  type request = resumeClusterMessage;
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "ResumeClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RestoreFromClusterSnapshot = {
  type t;
  type request = {
@as("AquaConfigurationStatus") aquaConfigurationStatus: aquaConfigurationStatus,
@as("AvailabilityZoneRelocation") availabilityZoneRelocation: booleanOptional,
@as("NumberOfNodes") numberOfNodes: integerOptional,
@as("SnapshotScheduleIdentifier") snapshotScheduleIdentifier: amazonawsString,
@as("MaintenanceTrackName") maintenanceTrackName: amazonawsString,
@as("IamRoles") iamRoles: iamRoleArnList,
@as("AdditionalInfo") additionalInfo: amazonawsString,
@as("EnhancedVpcRouting") enhancedVpcRouting: booleanOptional,
@as("NodeType") nodeType: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: integerOptional,
@as("AutomatedSnapshotRetentionPeriod") automatedSnapshotRetentionPeriod: integerOptional,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: vpcSecurityGroupIdList,
@as("ClusterSecurityGroups") clusterSecurityGroups: clusterSecurityGroupNameList,
@as("ClusterParameterGroupName") clusterParameterGroupName: amazonawsString,
@as("ElasticIp") elasticIp: amazonawsString,
@as("HsmConfigurationIdentifier") hsmConfigurationIdentifier: amazonawsString,
@as("HsmClientCertificateIdentifier") hsmClientCertificateIdentifier: amazonawsString,
@as("OwnerAccount") ownerAccount: amazonawsString,
@as("PubliclyAccessible") publiclyAccessible: booleanOptional,
@as("ClusterSubnetGroupName") clusterSubnetGroupName: amazonawsString,
@as("AllowVersionUpgrade") allowVersionUpgrade: booleanOptional,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("Port") port: integerOptional,
@as("SnapshotClusterIdentifier") snapshotClusterIdentifier: amazonawsString,
@as("SnapshotIdentifier") snapshotIdentifier: option<amazonawsString>,
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>
}
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "RestoreFromClusterSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResizeCluster = {
  type t;
  type request = resizeClusterMessage;
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "ResizeClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RebootCluster = {
  type t;
  type request = {
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>
}
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "RebootClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PauseCluster = {
  type t;
  type request = pauseClusterMessage;
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "PauseClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifySnapshotCopyRetentionPeriod = {
  type t;
  type request = {
@as("Manual") manual: amazonawsBoolean,
@as("RetentionPeriod") retentionPeriod: option<amazonawsInteger>,
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>
}
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "ModifySnapshotCopyRetentionPeriodCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyClusterSubnetGroup = {
  type t;
  type request = {
@as("SubnetIds") subnetIds: option<subnetIdentifierList>,
@as("Description") description: amazonawsString,
@as("ClusterSubnetGroupName") clusterSubnetGroupName: option<amazonawsString>
}
  type response = {
@as("ClusterSubnetGroup") clusterSubnetGroup: clusterSubnetGroup
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "ModifyClusterSubnetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyClusterMaintenance = {
  type t;
  type request = {
@as("DeferMaintenanceDuration") deferMaintenanceDuration: integerOptional,
@as("DeferMaintenanceEndTime") deferMaintenanceEndTime: tStamp,
@as("DeferMaintenanceStartTime") deferMaintenanceStartTime: tStamp,
@as("DeferMaintenanceIdentifier") deferMaintenanceIdentifier: amazonawsString,
@as("DeferMaintenance") deferMaintenance: booleanOptional,
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>
}
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "ModifyClusterMaintenanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyClusterIamRoles = {
  type t;
  type request = {
@as("RemoveIamRoles") removeIamRoles: iamRoleArnList,
@as("AddIamRoles") addIamRoles: iamRoleArnList,
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>
}
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "ModifyClusterIamRolesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyClusterDbRevision = {
  type t;
  type request = {
@as("RevisionTarget") revisionTarget: option<amazonawsString>,
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>
}
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "ModifyClusterDbRevisionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyCluster = {
  type t;
  type request = {
@as("Port") port: integerOptional,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("AvailabilityZoneRelocation") availabilityZoneRelocation: booleanOptional,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("Encrypted") encrypted: booleanOptional,
@as("MaintenanceTrackName") maintenanceTrackName: amazonawsString,
@as("EnhancedVpcRouting") enhancedVpcRouting: booleanOptional,
@as("ElasticIp") elasticIp: amazonawsString,
@as("PubliclyAccessible") publiclyAccessible: booleanOptional,
@as("NewClusterIdentifier") newClusterIdentifier: amazonawsString,
@as("HsmConfigurationIdentifier") hsmConfigurationIdentifier: amazonawsString,
@as("HsmClientCertificateIdentifier") hsmClientCertificateIdentifier: amazonawsString,
@as("AllowVersionUpgrade") allowVersionUpgrade: booleanOptional,
@as("ClusterVersion") clusterVersion: amazonawsString,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: integerOptional,
@as("AutomatedSnapshotRetentionPeriod") automatedSnapshotRetentionPeriod: integerOptional,
@as("ClusterParameterGroupName") clusterParameterGroupName: amazonawsString,
@as("MasterUserPassword") masterUserPassword: amazonawsString,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: vpcSecurityGroupIdList,
@as("ClusterSecurityGroups") clusterSecurityGroups: clusterSecurityGroupNameList,
@as("NumberOfNodes") numberOfNodes: integerOptional,
@as("NodeType") nodeType: amazonawsString,
@as("ClusterType") clusterType: amazonawsString,
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>
}
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "ModifyClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableSnapshotCopy = {
  type t;
  type request = {
@as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: integerOptional,
@as("SnapshotCopyGrantName") snapshotCopyGrantName: amazonawsString,
@as("RetentionPeriod") retentionPeriod: integerOptional,
@as("DestinationRegion") destinationRegion: option<amazonawsString>,
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>
}
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "EnableSnapshotCopyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableSnapshotCopy = {
  type t;
  type request = {
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>
}
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DisableSnapshotCopyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeOrderableClusterOptions = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("NodeType") nodeType: amazonawsString,
@as("ClusterVersion") clusterVersion: amazonawsString
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("OrderableClusterOptions") orderableClusterOptions: orderableClusterOptionsList
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeOrderableClusterOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeClusterTracks = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("MaintenanceTrackName") maintenanceTrackName: amazonawsString
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("MaintenanceTracks") maintenanceTracks: trackList
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeClusterTracksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeClusterSecurityGroups = {
  type t;
  type request = {
@as("TagValues") tagValues: tagValueList,
@as("TagKeys") tagKeys: tagKeyList,
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("ClusterSecurityGroupName") clusterSecurityGroupName: amazonawsString
}
  type response = {
@as("ClusterSecurityGroups") clusterSecurityGroups: clusterSecurityGroups,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeClusterSecurityGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCluster = {
  type t;
  type request = {
@as("FinalClusterSnapshotRetentionPeriod") finalClusterSnapshotRetentionPeriod: integerOptional,
@as("FinalClusterSnapshotIdentifier") finalClusterSnapshotIdentifier: amazonawsString,
@as("SkipFinalClusterSnapshot") skipFinalClusterSnapshot: amazonawsBoolean,
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>
}
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DeleteClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateClusterSubnetGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("SubnetIds") subnetIds: option<subnetIdentifierList>,
@as("Description") description: option<amazonawsString>,
@as("ClusterSubnetGroupName") clusterSubnetGroupName: option<amazonawsString>
}
  type response = {
@as("ClusterSubnetGroup") clusterSubnetGroup: clusterSubnetGroup
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "CreateClusterSubnetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCluster = {
  type t;
  type request = {
@as("AquaConfigurationStatus") aquaConfigurationStatus: aquaConfigurationStatus,
@as("AvailabilityZoneRelocation") availabilityZoneRelocation: booleanOptional,
@as("SnapshotScheduleIdentifier") snapshotScheduleIdentifier: amazonawsString,
@as("MaintenanceTrackName") maintenanceTrackName: amazonawsString,
@as("IamRoles") iamRoles: iamRoleArnList,
@as("AdditionalInfo") additionalInfo: amazonawsString,
@as("EnhancedVpcRouting") enhancedVpcRouting: booleanOptional,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("Tags") tags: tagList,
@as("ElasticIp") elasticIp: amazonawsString,
@as("HsmConfigurationIdentifier") hsmConfigurationIdentifier: amazonawsString,
@as("HsmClientCertificateIdentifier") hsmClientCertificateIdentifier: amazonawsString,
@as("Encrypted") encrypted: booleanOptional,
@as("PubliclyAccessible") publiclyAccessible: booleanOptional,
@as("NumberOfNodes") numberOfNodes: integerOptional,
@as("AllowVersionUpgrade") allowVersionUpgrade: booleanOptional,
@as("ClusterVersion") clusterVersion: amazonawsString,
@as("Port") port: integerOptional,
@as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: integerOptional,
@as("AutomatedSnapshotRetentionPeriod") automatedSnapshotRetentionPeriod: integerOptional,
@as("ClusterParameterGroupName") clusterParameterGroupName: amazonawsString,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("ClusterSubnetGroupName") clusterSubnetGroupName: amazonawsString,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: vpcSecurityGroupIdList,
@as("ClusterSecurityGroups") clusterSecurityGroups: clusterSecurityGroupNameList,
@as("MasterUserPassword") masterUserPassword: option<amazonawsString>,
@as("MasterUsername") masterUsername: option<amazonawsString>,
@as("NodeType") nodeType: option<amazonawsString>,
@as("ClusterType") clusterType: amazonawsString,
@as("ClusterIdentifier") clusterIdentifier: option<amazonawsString>,
@as("DBName") dBName: amazonawsString
}
  type response = {
@as("Cluster") cluster: cluster
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "CreateClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeClusters = {
  type t;
  type request = {
@as("TagValues") tagValues: tagValueList,
@as("TagKeys") tagKeys: tagKeyList,
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("ClusterIdentifier") clusterIdentifier: amazonawsString
}
  type response = {
@as("Clusters") clusters: clusterList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeClustersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeClusterSubnetGroups = {
  type t;
  type request = {
@as("TagValues") tagValues: tagValueList,
@as("TagKeys") tagKeys: tagKeyList,
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("ClusterSubnetGroupName") clusterSubnetGroupName: amazonawsString
}
  type response = {
@as("ClusterSubnetGroups") clusterSubnetGroups: clusterSubnetGroups,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-redshift") @new external new_: (request) => t = "DescribeClusterSubnetGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
