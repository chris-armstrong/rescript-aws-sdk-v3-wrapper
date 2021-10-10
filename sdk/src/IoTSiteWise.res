type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-iotsitewise") @new
external createClient: unit => awsServiceClient = "IoTSiteWiseClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type variableName = string
type url = string
type traversalType = [@as("PATH_TO_ROOT") #PATH_TO_ROOT]
type traversalDirection = [@as("CHILD") #CHILD | @as("PARENT") #PARENT]
type timestamp_ = Js.Date.t
type timeOrdering = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type timeInSeconds = float
type tagValue = string
type tagKey = string
type ssoapplicationId = string
type resourceType = [@as("PROJECT") #PROJECT | @as("PORTAL") #PORTAL]
type resourceId = string
type resourceArn = string
type resolution = string
type quality = [@as("UNCERTAIN") #UNCERTAIN | @as("BAD") #BAD | @as("GOOD") #GOOD]
type propertyValueStringValue = string
type propertyValueIntegerValue = int
type propertyValueDoubleValue = float
type propertyValueBooleanValue = bool
type propertyUnit = string
type propertyNotificationTopic = string
type propertyNotificationState = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type propertyDataType = [
  | @as("STRUCT") #STRUCT
  | @as("BOOLEAN") #BOOLEAN
  | @as("DOUBLE") #DOUBLE
  | @as("INTEGER") #INTEGER
  | @as("STRING") #STRING
]
type propertyAlias = string
type portalState = [
  | @as("FAILED") #FAILED
  | @as("ACTIVE") #ACTIVE
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("CREATING") #CREATING
]
type portalClientId = string
type permission = [@as("VIEWER") #VIEWER | @as("ADMINISTRATOR") #ADMINISTRATOR]
type offsetInNanos = int
type nextToken = string
type name = string
type monitorErrorMessage = string
type monitorErrorCode = [
  | @as("LIMIT_EXCEEDED") #LIMIT_EXCEEDED
  | @as("VALIDATION_ERROR") #VALIDATION_ERROR
  | @as("INTERNAL_FAILURE") #INTERNAL_FAILURE
]
@ocaml.doc("<p>Contains an asset measurement property. For more information, see
      <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#measurements\">Measurements</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
type measurement = unit
type maxResults = int
type maxInterpolatedResults = int
type macro = string
type loggingLevel = [@as("OFF") #OFF | @as("INFO") #INFO | @as("ERROR") #ERROR]
type listAssetsFilter = [@as("TOP_LEVEL") #TOP_LEVEL | @as("ALL") #ALL]
type kmsKeyId = string
type intervalInSeconds = float
type interval = string
type interpolationType = string
type imageFileType = [@as("PNG") #PNG]
type imageFileData = NodeJs.Buffer.t
type identityType = [@as("IAM") #IAM | @as("GROUP") #GROUP | @as("USER") #USER]
type identityId = string
type id = string
type expression = string
type exceptionMessage = string
type errorMessage = string
type errorCode = [
  | @as("INTERNAL_FAILURE") #INTERNAL_FAILURE
  | @as("VALIDATION_ERROR") #VALIDATION_ERROR
]
type entryId = string
type encryptionType = [
  | @as("KMS_BASED_ENCRYPTION") #KMS_BASED_ENCRYPTION
  | @as("SITEWISE_DEFAULT_ENCRYPTION") #SITEWISE_DEFAULT_ENCRYPTION
]
type email = string
type description = string
type defaultValue = string
type dashboardDefinition = string
type configurationState = [
  | @as("UPDATE_FAILED") #UPDATE_FAILED
  | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS
  | @as("ACTIVE") #ACTIVE
]
type clientToken = string
type capabilitySyncStatus = [
  | @as("SYNC_FAILED") #SYNC_FAILED
  | @as("OUT_OF_SYNC") #OUT_OF_SYNC
  | @as("IN_SYNC") #IN_SYNC
]
type capabilityNamespace = string
type capabilityConfiguration = string
type batchPutAssetPropertyValueErrorCode = [
  | @as("AccessDeniedException") #AccessDeniedException
  | @as("TimestampOutOfRangeException") #TimestampOutOfRangeException
  | @as("ConflictingOperationException") #ConflictingOperationException
  | @as("LimitExceededException") #LimitExceededException
  | @as("ThrottlingException") #ThrottlingException
  | @as("ServiceUnavailableException") #ServiceUnavailableException
  | @as("InternalFailureException") #InternalFailureException
  | @as("InvalidRequestException") #InvalidRequestException
  | @as("ResourceNotFoundException") #ResourceNotFoundException
]
type authMode = [@as("SSO") #SSO | @as("IAM") #IAM]
type assetState = [
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
type assetRelationshipType = [@as("HIERARCHY") #HIERARCHY]
type assetPropertyAlias = string
type assetModelState = [
  | @as("FAILED") #FAILED
  | @as("DELETING") #DELETING
  | @as("PROPAGATING") #PROPAGATING
  | @as("UPDATING") #UPDATING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
type assetErrorMessage = string
type assetErrorCode = [@as("INTERNAL_FAILURE") #INTERNAL_FAILURE]
type amazonResourceName = string
type aggregatedDoubleValue = float
type aggregateType = [
  | @as("STANDARD_DEVIATION") #STANDARD_DEVIATION
  | @as("SUM") #SUM
  | @as("MINIMUM") #MINIMUM
  | @as("MAXIMUM") #MAXIMUM
  | @as("COUNT") #COUNT
  | @as("AVERAGE") #AVERAGE
]
type arn = string
@ocaml.doc("<p>Contains an asset property value (of a single type only).</p>")
type variant = {
  @ocaml.doc("<p>Asset property data of type Boolean (true or false).</p>")
  booleanValue: option<propertyValueBooleanValue>,
  @ocaml.doc("<p>Asset property data of type double (floating point number).</p>")
  doubleValue: option<propertyValueDoubleValue>,
  @ocaml.doc("<p>Asset property data of type integer (whole number).</p>")
  integerValue: option<propertyValueIntegerValue>,
  @ocaml.doc("<p>Asset property data of type string (sequence of characters).</p>")
  stringValue: option<propertyValueStringValue>,
}
@ocaml.doc("<p>Identifies a property value used in an expression.</p>")
type variableValue = {
  @ocaml.doc("<p>The ID of the hierarchy to query for the property ID. You can use the hierarchy's name
      instead of the hierarchy's ID.</p>
         <p>You use a hierarchy ID instead of a model ID because you can have several hierarchies
      using the same model and therefore the same <code>propertyId</code>. For example, you might
      have separately grouped assets that come from the same asset model. For more information, see
      <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html\">Asset hierarchies</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
  hierarchyId: option<macro>,
  @ocaml.doc("<p>The ID of the property to use as the variable. You can use the property <code>name</code>
      if it's from the same asset model.</p>")
  propertyId: macro,
}
@ocaml.doc("<p>Contains information for a user identity in an access policy.</p>")
type userIdentity = {@ocaml.doc("<p>The AWS SSO ID of the user.</p>") id: identityId}
@ocaml.doc("<p>Contains a tumbling window, which is a repeating fixed-sized, non-overlapping, and
      contiguous time interval. This window is used in metric and aggregation computations.</p>")
type tumblingWindow = {
  @ocaml.doc("<p>The time interval for the tumbling window. Note that <code>w</code> represents weeks,
        <code>d</code> represents days, <code>h</code> represents hours, and <code>m</code>
      represents minutes. AWS IoT SiteWise computes the <code>1w</code> interval the end of Sunday at midnight
      each week (UTC), the <code>1d</code> interval at the end of each day at midnight (UTC), the
        <code>1h</code> interval at the end of each hour, and so on. </p>
         <p>When AWS IoT SiteWise aggregates data points for metric computations, the start of each interval is
      exclusive and the end of each interval is inclusive. AWS IoT SiteWise places the computed data point at
      the end of the interval.</p>")
  interval: interval,
}
@ocaml.doc("<p>Contains a timestamp with optional nanosecond granularity.</p>")
type timeInNanos = {
  @ocaml.doc("<p>The nanosecond offset from <code>timeInSeconds</code>.</p>")
  offsetInNanos: option<offsetInNanos>,
  @ocaml.doc("<p>The timestamp date, in seconds, in the Unix epoch format. Fractional nanosecond data is
      provided by <code>offsetInNanos</code>.</p>")
  timeInSeconds: timeInSeconds,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type qualities = array<quality>
@ocaml.doc("<p>Contains asset property value notification information. When the notification state is enabled, AWS IoT SiteWise publishes property value
      updates to a unique MQTT topic. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/interact-with-other-services.html\">Interacting with other services</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
type propertyNotification = {
  @ocaml.doc("<p>The current notification state.</p>") state: propertyNotificationState,
  @ocaml.doc(
    "<p>The MQTT topic to which AWS IoT SiteWise publishes property value update notifications.</p>"
  )
  topic: propertyNotificationTopic,
}
@ocaml.doc("<p>Contains project summary information.</p>")
type projectSummary = {
  @ocaml.doc("<p>The date the project was last updated, in Unix epoch time.</p>")
  lastUpdateDate: option<timestamp_>,
  @ocaml.doc("<p>The date the project was created, in Unix epoch time.</p>")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>The project's description.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the project.</p>") name: name,
  @ocaml.doc("<p>The ID of the project.</p>") id: id,
}
@ocaml.doc("<p>Identifies a specific AWS IoT SiteWise Monitor project.</p>")
type projectResource = {@ocaml.doc("<p>The ID of the project.</p>") id: id}
@ocaml.doc("<p>Identifies an AWS IoT SiteWise Monitor portal.</p>")
type portalResource = {@ocaml.doc("<p>The ID of the portal.</p>") id: id}
@ocaml.doc("<p>Contains AWS IoT SiteWise Monitor error details.</p>")
type monitorErrorDetails = {
  @ocaml.doc("<p>The error message.</p>") message: option<monitorErrorMessage>,
  @ocaml.doc("<p>The error code.</p>") code: option<monitorErrorCode>,
}
@ocaml.doc("<p>Contains logging options.</p>")
type loggingOptions = {
  @ocaml.doc("<p>The AWS IoT SiteWise logging verbosity level.</p>") level: loggingLevel,
}
@ocaml.doc("<p>Contains an image that is uploaded to AWS IoT SiteWise and available at a URL.</p>")
type imageLocation = {
  @ocaml.doc("<p>The URL where the image is available. The URL is valid for 15 minutes so that you can view
      and download the image</p>")
  url: url,
  @ocaml.doc("<p>The ID of the image.</p>") id: id,
}
@ocaml.doc("<p>Contains an image file.</p>")
type imageFile = {
  @ocaml.doc("<p>The file type of the image.</p>") @as("type") type_: imageFileType,
  @ocaml.doc("<p>The image file contents, represented as a base64-encoded string. The file size must be
      less than 1 MB.</p>")
  data: imageFileData,
}
type ids = array<id>
@ocaml.doc("<p>Contains information about an AWS Identity and Access Management (IAM) user.</p>")
type iamuserIdentity = {
  @ocaml.doc("<p>The ARN of the IAM user. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM ARNs</a> in the
      <i>IAM User Guide</i>.</p>
         <note>
            <p>If you delete the IAM user, access policies that contain this identity include an
        empty <code>arn</code>. You can delete the access policy for the IAM user that no longer
        exists.</p>
         </note>")
  arn: arn,
}
@ocaml.doc("<p>Contains information about an AWS Identity and Access Management (IAM) role. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html\">IAM roles</a> in the
      <i>IAM User Guide</i>.</p>")
type iamroleIdentity = {
  @ocaml.doc("<p>The ARN of the IAM role. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM ARNs</a> in the
      <i>IAM User Guide</i>.</p>")
  arn: arn,
}
@ocaml.doc("<p>Contains information for a group identity in an access policy.</p>")
type groupIdentity = {@ocaml.doc("<p>The AWS SSO ID of the group.</p>") id: identityId}
@ocaml.doc("<p>Contains details for a gateway that runs on AWS IoT Greengrass. To create a gateway that runs on AWS IoT Greengrass,
      you must add the IoT SiteWise connector to a Greengrass group and deploy it. Your Greengrass
      group must also have permissions to upload data to AWS IoT SiteWise. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateway-connector.html\">Ingesting data using a
        gateway</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
type greengrass = {
  @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the Greengrass group. For more information about how to find a group's
      ARN, see <a href=\"https://docs.aws.amazon.com/greengrass/latest/apireference/listgroups-get.html\">ListGroups</a> and <a href=\"https://docs.aws.amazon.com/greengrass/latest/apireference/getgroup-get.html\">GetGroup</a> in the
        <i>AWS IoT Greengrass API Reference</i>.</p>")
  groupArn: arn,
}
@ocaml.doc("<p>Contains a summary of a gateway capability configuration.</p>")
type gatewayCapabilitySummary = {
  @ocaml.doc("<p>The synchronization status of the capability configuration. The sync status can be one of the following:</p>
         <ul>
            <li>
               <p>
                  <code>IN_SYNC</code> – The gateway is running the capability configuration.</p>
            </li>
            <li>
               <p>
                  <code>OUT_OF_SYNC</code> – The gateway hasn't received the capability configuration.</p>
            </li>
            <li>
               <p>
                  <code>SYNC_FAILED</code> – The gateway rejected the capability configuration.</p>
            </li>
         </ul>")
  capabilitySyncStatus: capabilitySyncStatus,
  @ocaml.doc("<p>The namespace of the capability configuration.
      For example, if you configure OPC-UA
      sources from the AWS IoT SiteWise console, your OPC-UA capability configuration has the namespace
        <code>iotsitewise:opcuacollector:version</code>, where <code>version</code> is a number such as
        <code>1</code>.</p>")
  capabilityNamespace: capabilityNamespace,
}
@ocaml.doc("<p>Contains the details of an AWS IoT SiteWise error.</p>")
type errorDetails = {
  @ocaml.doc("<p>The error message.</p>") message: errorMessage,
  @ocaml.doc("<p>The error code.</p>") code: errorCode,
}
@ocaml.doc("<p>Contains a dashboard summary.</p>")
type dashboardSummary = {
  @ocaml.doc("<p>The date the dashboard was last updated, in Unix epoch time.</p>")
  lastUpdateDate: option<timestamp_>,
  @ocaml.doc("<p>The date the dashboard was created, in Unix epoch time.</p>")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>The dashboard's description.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the dashboard</p>") name: name,
  @ocaml.doc("<p>The ID of the dashboard.</p>") id: id,
}
@ocaml.doc("<p>Contains the details of an AWS IoT SiteWise configuration error.</p>")
type configurationErrorDetails = {
  @ocaml.doc("<p>The error message.</p>") message: errorMessage,
  @ocaml.doc("<p>The error code.</p>") code: errorCode,
}
@ocaml.doc("<p>Contains an asset attribute property. For more information, see
      <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#attributes\">Attributes</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
type attribute = {
  @ocaml.doc("<p>The default value of the asset model property attribute. All assets that you create from
      the asset model contain this attribute value. You can update an attribute's value after you
      create an asset. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-attribute-values.html\">Updating attribute values</a> in the
        <i>AWS IoT SiteWise User Guide</i>.</p>")
  defaultValue: option<defaultValue>,
}
@ocaml.doc("<p>Contains an asset model hierarchy used in asset model creation. An asset model hierarchy
      determines the kind (or type) of asset that can belong to a hierarchy.</p>")
type assetModelHierarchyDefinition = {
  @ocaml.doc("<p>The ID of an asset model for this hierarchy.</p>") childAssetModelId: id,
  @ocaml.doc("<p>The name of the asset model hierarchy definition (as specified in the <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html\">CreateAssetModel</a> or
        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html\">UpdateAssetModel</a> API operation).</p>")
  name: name,
}
@ocaml.doc("<p>Describes an asset hierarchy that contains a hierarchy's name, ID, and child asset model
      ID that specifies the type of asset that can be in this hierarchy.</p>")
type assetModelHierarchy = {
  @ocaml.doc("<p>The ID of the asset model. All assets in this hierarchy must be instances of the
        <code>childAssetModelId</code> asset model.</p>")
  childAssetModelId: id,
  @ocaml.doc("<p>The name of the asset model hierarchy that you specify by using the <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html\">CreateAssetModel</a> or
        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html\">UpdateAssetModel</a> API operation.</p>")
  name: name,
  @ocaml.doc("<p>The ID of the asset model hierarchy. This ID is a <code>hierarchyId</code>.</p>")
  id: option<id>,
}
type assetIDs = array<id>
@ocaml.doc("<p>Contains information about a parent asset and a child asset that are related through an
      asset hierarchy.</p>")
type assetHierarchyInfo = {
  @ocaml.doc("<p>The ID of the child asset in this asset relationship.</p>")
  childAssetId: option<id>,
  @ocaml.doc("<p>The ID of the parent asset in this asset relationship.</p>")
  parentAssetId: option<id>,
}
@ocaml.doc("<p>Describes an asset hierarchy that contains a hierarchy's name and ID.</p>")
type assetHierarchy = {
  @ocaml.doc("<p>The hierarchy name provided in the <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html\">CreateAssetModel</a> or <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html\">UpdateAssetModel</a>
      API operation.</p>")
  name: name,
  @ocaml.doc("<p>The ID of the hierarchy. This ID is a <code>hierarchyId</code>.</p>")
  id: option<id>,
}
@ocaml.doc("<p>Contains error details for the requested associate project asset action.</p>")
type assetErrorDetails = {
  @ocaml.doc("<p>The error message.</p>") message: assetErrorMessage,
  @ocaml.doc("<p>The error code.</p>") code: assetErrorCode,
  @ocaml.doc("<p>The ID of the asset.</p>") assetId: id,
}
@ocaml.doc("<p>Contains the configuration information of an alarm created in an AWS IoT SiteWise Monitor portal. 
  You can use the alarm to monitor an asset property and get notified when the asset property value is outside a specified range. For more information, see .</p>")
type alarms = {
  @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the AWS Lambda function that manages alarm notifications. For more information, see <a href=\"https://docs.aws.amazon.com/\">Managing alarm notifications</a> 
      in the <i>AWS IoT Events Developer Guide</i>.</p>")
  notificationLambdaArn: option<arn>,
  @ocaml.doc(
    "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the IAM role that allows the alarm to perform actions and access AWS resources, including AWS IoT Events.</p>"
  )
  alarmRoleArn: arn,
}
@ocaml.doc("<p>Contains the (pre-calculated) aggregate values for an asset property.</p>")
type aggregates = {
  @ocaml.doc("<p>The standard deviation of the time series over a time interval window.</p>")
  standardDeviation: option<aggregatedDoubleValue>,
  @ocaml.doc("<p>The sum of the time series over a time interval window.</p>")
  sum: option<aggregatedDoubleValue>,
  @ocaml.doc("<p>The minimum value of the time series over a time interval window.</p>")
  minimum: option<aggregatedDoubleValue>,
  @ocaml.doc("<p>The maximum value of the time series over a time interval window.</p>")
  maximum: option<aggregatedDoubleValue>,
  @ocaml.doc("<p>The count of data points in the time series over a time interval window.</p>")
  count: option<aggregatedDoubleValue>,
  @ocaml.doc("<p>The average (mean) value of the time series over a time interval window.</p>")
  average: option<aggregatedDoubleValue>,
}
type aggregateTypes = array<aggregateType>
type timestamps = array<timeInNanos>
@ocaml.doc("<p>Contains an AWS IoT SiteWise Monitor resource ID for a portal or project.</p>")
type resource = {
  @ocaml.doc("<p>A project resource.</p>") project: option<projectResource>,
  @ocaml.doc("<p>A portal resource.</p>") portal: option<portalResource>,
}
type projectSummaries = array<projectSummary>
@ocaml.doc("<p>Contains information about the current status of a portal.</p>")
type portalStatus = {
  @ocaml.doc("<p>Contains associated error information, if any.</p>")
  error: option<monitorErrorDetails>,
  @ocaml.doc("<p>The current state of the portal.</p>") state: portalState,
}
@ocaml.doc("<p>Contains a time interval window used for data aggregate computations (for example,
      average, sum, count, and so on).</p>")
type metricWindow = {
  @ocaml.doc("<p>The tumbling time interval window.</p>") tumbling: option<tumblingWindow>,
}
@ocaml.doc("<p>Contains information about an interpolated asset property value.</p>")
type interpolatedAssetPropertyValue = {
  value: variant,
  @as("timestamp") timestamp_: timeInNanos,
}
@ocaml.doc("<p>Contains an image that is one of the following:</p>
         <ul>
            <li>
               <p>An image file. Choose this option to upload a new image.</p>
            </li>
            <li>
               <p>The ID of an existing image. Choose this option to keep an existing image.</p>
            </li>
         </ul>")
type image = {
  file: option<imageFile>,
  @ocaml.doc(
    "<p>The ID of an existing image. Specify this parameter to keep an existing image.</p>"
  )
  id: option<id>,
}
@ocaml.doc("<p>Contains an identity that can access an AWS IoT SiteWise Monitor resource.</p>
         <note>
            <p>Currently, you can't use AWS APIs to retrieve AWS SSO identity IDs. You can find the
        AWS SSO identity IDs in the URL of user and group pages in the <a href=\"https://console.aws.amazon.com/singlesignon\">AWS SSO console</a>.</p>
         </note>")
type identity = {
  @ocaml.doc("<p>An IAM role identity.</p>") iamRole: option<iamroleIdentity>,
  @ocaml.doc("<p>An IAM user identity.</p>") iamUser: option<iamuserIdentity>,
  @ocaml.doc("<p>An AWS SSO group identity.</p>") group: option<groupIdentity>,
  @ocaml.doc("<p>An AWS SSO user identity.</p>") user: option<userIdentity>,
}
@ocaml.doc("<p>Contains a gateway's platform information.</p>")
type gatewayPlatform = {
  @ocaml.doc("<p>A gateway that runs on AWS IoT Greengrass.</p>") greengrass: greengrass,
}
type gatewayCapabilitySummaries = array<gatewayCapabilitySummary>
@ocaml.doc("<p>Contains expression variable information.</p>")
type expressionVariable = {
  @ocaml.doc("<p>The variable that identifies an asset property from which to use values.</p>")
  value: variableValue,
  @ocaml.doc("<p>The friendly name of the variable to be used in the expression.</p>")
  name: variableName,
}
type dashboardSummaries = array<dashboardSummary>
@ocaml.doc("<p>Contains current status information for the configuration.</p>")
type configurationStatus = {
  @ocaml.doc("<p>Contains associated error information, if any.</p>")
  error: option<configurationErrorDetails>,
  @ocaml.doc("<p>The current state of the configuration.</p>") state: configurationState,
}
type batchDisassociateProjectAssetsErrors = array<assetErrorDetails>
type batchAssociateProjectAssetsErrors = array<assetErrorDetails>
@ocaml.doc("<p>Contains information about the current status of an asset. For more information, see
        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-and-model-states.html\">Asset and model
        states</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
type assetStatus = {
  @ocaml.doc("<p>Contains associated error information, if any.</p>") error: option<errorDetails>,
  @ocaml.doc("<p>The current status of the asset.</p>") state: assetState,
}
@ocaml.doc("<p>Contains information about assets that are related to one another.</p>")
type assetRelationshipSummary = {
  @ocaml.doc("<p>The relationship type of the assets in this relationship. This value is one of the
      following:</p>
         <ul>
            <li>
               <p>
                  <code>HIERARCHY</code> – The assets are related through an asset hierarchy. If
          you specify this relationship type, this asset relationship includes the
            <code>hierarchyInfo</code> object.</p>
            </li>
         </ul>")
  relationshipType: assetRelationshipType,
  @ocaml.doc("<p>The assets that are related through an asset hierarchy.</p>
         <p>This object is present if the <code>relationshipType</code> is
      <code>HIERARCHY</code>.</p>")
  hierarchyInfo: option<assetHierarchyInfo>,
}
@ocaml.doc("<p>Contains asset property value information.</p>")
type assetPropertyValue = {
  @ocaml.doc("<p>The quality of the asset property value.</p>") quality: option<quality>,
  @ocaml.doc("<p>The timestamp of the asset property value.</p>") @as("timestamp")
  timestamp_: timeInNanos,
  @ocaml.doc("<p>The value of the asset property (see <code>Variant</code>).</p>") value: variant,
}
@ocaml.doc("<p>Contains asset property information.</p>")
type assetProperty = {
  @ocaml.doc(
    "<p>The unit (such as <code>Newtons</code> or <code>RPM</code>) of the asset property.</p>"
  )
  @as("unit")
  unit_: option<propertyUnit>,
  @ocaml.doc("<p>The data type of the structure for this property. This parameter exists on properties that
      have the <code>STRUCT</code> data type.</p>")
  dataTypeSpec: option<name>,
  @ocaml.doc("<p>The data type of the asset property.</p>") dataType: propertyDataType,
  @ocaml.doc(
    "<p>The asset property's notification topic and state. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html\">UpdateAssetProperty</a>.</p>"
  )
  notification: option<propertyNotification>,
  @ocaml.doc("<p>The property alias that identifies the property, such as an OPC-UA server data stream path
        (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the
        <i>AWS IoT SiteWise User Guide</i>.</p>")
  alias: option<propertyAlias>,
  @ocaml.doc("<p>The name of the property.</p>") name: name,
  @ocaml.doc("<p>The ID of the asset property.</p>") id: id,
}
@ocaml.doc("<p>Contains current status information for an asset model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-and-model-states.html\">Asset and model
        states</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
type assetModelStatus = {
  @ocaml.doc("<p>Contains associated error information, if any.</p>") error: option<errorDetails>,
  @ocaml.doc("<p>The current state of the asset model.</p>") state: assetModelState,
}
type assetModelHierarchyDefinitions = array<assetModelHierarchyDefinition>
type assetModelHierarchies = array<assetModelHierarchy>
type assetHierarchies = array<assetHierarchy>
@ocaml.doc("<p>Contains aggregated asset property values (for example, average, minimum, and
      maximum).</p>")
type aggregatedValue = {
  @ocaml.doc("<p>The value of the aggregates.</p>") value: aggregates,
  @ocaml.doc("<p>The quality of the aggregated data.</p>") quality: option<quality>,
  @ocaml.doc("<p>The date the aggregating computations occurred, in Unix epoch time.</p>")
  @as("timestamp")
  timestamp_: timestamp_,
}
@ocaml.doc("<p>Contains a portal summary.</p>")
type portalSummary = {
  status: portalStatus,
  @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the service role that allows the portal's users to access your AWS IoT SiteWise
      resources on your behalf. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html\">Using service roles for AWS IoT SiteWise Monitor</a> in the
        <i>AWS IoT SiteWise User Guide</i>.</p>")
  roleArn: option<arn>,
  @ocaml.doc("<p>The date the portal was last updated, in Unix epoch time.</p>")
  lastUpdateDate: option<timestamp_>,
  @ocaml.doc("<p>The date the portal was created, in Unix epoch time.</p>")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>The URL for the AWS IoT SiteWise Monitor portal. You can use this URL to access portals that
      use AWS SSO for authentication. For portals that use IAM for authentication, you must use the 
      AWS IoT SiteWise console to get a URL that you can use to access the portal.</p>")
  startUrl: url,
  @ocaml.doc("<p>The portal's description.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the portal.</p>") name: name,
  @ocaml.doc("<p>The ID of the portal.</p>") id: id,
}
type interpolatedAssetPropertyValues = array<interpolatedAssetPropertyValue>
@ocaml.doc("<p>Contains a summary of a gateway.</p>")
type gatewaySummary = {
  @ocaml.doc("<p>The date the gateway was last updated, in Unix epoch time.</p>")
  lastUpdateDate: timestamp_,
  @ocaml.doc("<p>The date the gateway was created, in Unix epoch time.</p>")
  creationDate: timestamp_,
  @ocaml.doc("<p>A list of gateway capability summaries that each contain a namespace and status. Each
      gateway capability defines data sources for the gateway. To retrieve a capability
      configuration's definition, use <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGatewayCapabilityConfiguration.html\">DescribeGatewayCapabilityConfiguration</a>.</p>")
  gatewayCapabilitySummaries: option<gatewayCapabilitySummaries>,
  @ocaml.doc("<p>The name of the asset.</p>") gatewayName: name,
  @ocaml.doc("<p>The ID of the gateway device.</p>") gatewayId: id,
}
type expressionVariables = array<expressionVariable>
@ocaml.doc("<p>Contains error information from updating a batch of asset property values.</p>")
type batchPutAssetPropertyError = {
  @ocaml.doc("<p>A list of timestamps for each  error, if any.</p>") timestamps: timestamps,
  @ocaml.doc("<p>The associated error message.</p>") errorMessage: errorMessage,
  @ocaml.doc("<p>The error code.</p>") errorCode: batchPutAssetPropertyValueErrorCode,
}
@ocaml.doc("<p>Contains a summary of an associated asset.</p>")
type associatedAssetsSummary = {
  @ocaml.doc(
    "<p>A list of asset hierarchies that each contain a <code>hierarchyId</code>. A hierarchy specifies allowed parent/child asset relationships.</p>"
  )
  hierarchies: assetHierarchies,
  @ocaml.doc("<p>The current status of the asset.</p>") status: assetStatus,
  @ocaml.doc("<p>The date the asset was last updated, in Unix epoch time.</p>")
  lastUpdateDate: timestamp_,
  @ocaml.doc("<p>The date the asset was created, in Unix epoch time.</p>") creationDate: timestamp_,
  @ocaml.doc("<p>The ID of the asset model used to create the asset.</p>") assetModelId: id,
  @ocaml.doc("<p>The name of the asset.</p>") name: name,
  @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the asset, which has the following format.</p>
        <p>
            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}</code>
         </p>")
  arn: arn,
  @ocaml.doc("<p>The ID of the asset.</p>") id: id,
}
@ocaml.doc("<p>Contains a summary of an asset.</p>")
type assetSummary = {
  @ocaml.doc(
    "<p>A list of asset hierarchies that each contain a <code>hierarchyId</code>. A hierarchy specifies allowed parent/child asset relationships.</p>"
  )
  hierarchies: assetHierarchies,
  @ocaml.doc("<p>The current status of the asset.</p>") status: assetStatus,
  @ocaml.doc("<p>The date the asset was last updated, in Unix epoch time.</p>")
  lastUpdateDate: timestamp_,
  @ocaml.doc("<p>The date the asset was created, in Unix epoch time.</p>") creationDate: timestamp_,
  @ocaml.doc("<p>The ID of the asset model used to create this asset.</p>") assetModelId: id,
  @ocaml.doc("<p>The name of the asset.</p>") name: name,
  @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the asset, which has the following format.</p>
        <p>
            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}</code>
         </p>")
  arn: arn,
  @ocaml.doc("<p>The ID of the asset.</p>") id: id,
}
type assetRelationshipSummaries = array<assetRelationshipSummary>
type assetPropertyValues = array<assetPropertyValue>
type assetPropertyValueHistory = array<assetPropertyValue>
type assetProperties = array<assetProperty>
@ocaml.doc("<p>Contains a summary of an asset model.</p>")
type assetModelSummary = {
  @ocaml.doc("<p>The current status of the asset model.</p>") status: assetModelStatus,
  @ocaml.doc("<p>The date the asset model was last updated, in Unix epoch time.</p>")
  lastUpdateDate: timestamp_,
  @ocaml.doc("<p>The date the asset model was created, in Unix epoch time.</p>")
  creationDate: timestamp_,
  @ocaml.doc("<p>The asset model description.</p>") description: description,
  @ocaml.doc("<p>The name of the asset model.</p>") name: name,
  @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the asset model, which has the following format.</p>
        <p>
            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}</code>
         </p>")
  arn: arn,
  @ocaml.doc("<p>The ID of the asset model (used with AWS IoT SiteWise APIs).</p>") id: id,
}
type aggregatedValues = array<aggregatedValue>
@ocaml.doc("<p>Contains an access policy that defines an identity's access to an AWS IoT SiteWise Monitor
      resource.</p>")
type accessPolicySummary = {
  @ocaml.doc("<p>The date the access policy was last updated, in Unix epoch time.</p>")
  lastUpdateDate: option<timestamp_>,
  @ocaml.doc("<p>The date the access policy was created, in Unix epoch time.</p>")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>The permissions for the access policy. Note that a project <code>ADMINISTRATOR</code> is
      also known as a project owner.</p>")
  permission: permission,
  @ocaml.doc("<p>The AWS IoT SiteWise Monitor resource (a portal or project).</p>")
  resource: resource,
  @ocaml.doc("<p>The identity (an AWS SSO user, an AWS SSO group, or an IAM user).</p>")
  identity: identity,
  @ocaml.doc("<p>The ID of the access policy.</p>") id: id,
}
@ocaml.doc("<p>Contains an asset transform property. A transform is a one-to-one mapping of a property's
      data points from one form to another. For example, you can use a transform to convert a
      Celsius data stream to Fahrenheit by applying the transformation expression to each data point
      of the Celsius stream. A transform can only have a data type of <code>DOUBLE</code> and
      consume properties with data types of <code>INTEGER</code> or <code>DOUBLE</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#transforms\">Transforms</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
type transform = {
  @ocaml.doc("<p>The list of variables used in the expression.</p>") variables: expressionVariables,
  @ocaml.doc("<p>The mathematical expression that defines the transformation function. You can specify up
      to 10 variables per expression. You can specify up to 10 functions per
      expression. </p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html\">Quotas</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
  expression: expression,
}
@ocaml.doc("<p>Contains a list of value updates for an asset property in the list of asset entries
      consumed by the <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchPutAssetPropertyValue.html\">BatchPutAssetPropertyValue</a> API
      operation.</p>")
type putAssetPropertyValueEntry = {
  @ocaml.doc("<p>The list of property values to upload. You can specify up to 10
        <code>propertyValues</code> array elements. </p>")
  propertyValues: assetPropertyValues,
  @ocaml.doc("<p>The property alias that identifies the property, such as an OPC-UA server data stream path
        (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the
        <i>AWS IoT SiteWise User Guide</i>.</p>")
  propertyAlias: option<assetPropertyAlias>,
  @ocaml.doc("<p>The ID of the asset property for this entry.</p>") propertyId: option<id>,
  @ocaml.doc("<p>The ID of the asset to update.</p>") assetId: option<id>,
  @ocaml.doc("<p>The user specified ID for the entry. You can use this ID to identify which entries
      failed.</p>")
  entryId: entryId,
}
type portalSummaries = array<portalSummary>
@ocaml.doc("<p>Contains an asset metric property. With metrics, you can calculate aggregate functions,
      such as an average, maximum, or minimum, as specified through an expression. A metric maps
      several values to a single value (such as a sum).</p>
         <p>The maximum number of dependent/cascading variables used in any one metric calculation is
      10. Therefore, a <i>root</i> metric can have
      up to 10 cascading metrics in its computational dependency
      tree. Additionally, a metric can only have a data type of <code>DOUBLE</code> and consume
      properties with data types of <code>INTEGER</code> or <code>DOUBLE</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#metrics\">Metrics</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
type metric = {
  @ocaml.doc("<p>The window (time interval) over which AWS IoT SiteWise computes the metric's aggregation expression.
      AWS IoT SiteWise computes one data point per <code>window</code>.</p>")
  window: metricWindow,
  @ocaml.doc("<p>The list of variables used in the expression.</p>") variables: expressionVariables,
  @ocaml.doc("<p>The mathematical expression that defines the metric aggregation function. You can specify
      up to 10 variables per expression. You can specify up to 10 functions
      per expression. </p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html\">Quotas</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
  expression: expression,
}
type gatewaySummaries = array<gatewaySummary>
type batchPutAssetPropertyErrors = array<batchPutAssetPropertyError>
type associatedAssetsSummaries = array<associatedAssetsSummary>
type assetSummaries = array<assetSummary>
type assetModelSummaries = array<assetModelSummary>
@ocaml.doc("<p>Contains information about a composite model in an asset. This object contains the asset's
      properties that you define in the composite model.</p>")
type assetCompositeModel = {
  @ocaml.doc("<p>The asset properties that this composite model defines.</p>")
  properties: assetProperties,
  @ocaml.doc("<p>The type of the composite model. For alarm composite models, this type is
        <code>AWS/ALARM</code>.</p>")
  @as("type")
  type_: name,
  @ocaml.doc("<p>The description of the composite model.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the composite model.</p>") name: name,
}
type accessPolicySummaries = array<accessPolicySummary>
type putAssetPropertyValueEntries = array<putAssetPropertyValueEntry>
@ocaml.doc("<p>Contains a property type, which can be one of <code>attribute</code>,
        <code>measurement</code>, <code>metric</code>, or <code>transform</code>.</p>")
type propertyType = {
  @ocaml.doc("<p>Specifies an asset metric property. A metric contains a mathematical expression that uses
      aggregate functions to process all input data points over a time interval and output a single
      data point, such as to calculate the average hourly temperature.</p>")
  metric: option<metric>,
  @ocaml.doc("<p>Specifies an asset transform property. A transform contains a mathematical expression that
      maps a property's data points from one form to another, such as a unit conversion from Celsius
      to Fahrenheit.</p>")
  transform: option<transform>,
  @ocaml.doc("<p>Specifies an asset measurement property. A measurement represents a device's raw sensor
      data stream, such as timestamped temperature values or timestamped power values.</p>")
  measurement: option<measurement>,
  @ocaml.doc("<p>Specifies an asset attribute property. An attribute generally contains static information,
      such as the serial number of an <a href=\"https://en.wikipedia.org/wiki/Internet_of_things#Industrial_applications\">IIoT</a> wind turbine.</p>")
  attribute: option<attribute>,
}
@ocaml.doc("<p>Contains error information for asset property value entries that are associated with the
        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchPutAssetPropertyValue.html\">BatchPutAssetPropertyValue</a> API.</p>")
type batchPutAssetPropertyErrorEntry = {
  @ocaml.doc("<p>The list of update property value errors.</p>")
  errors: batchPutAssetPropertyErrors,
  @ocaml.doc("<p>The ID of the failed entry.</p>") entryId: entryId,
}
type assetCompositeModels = array<assetCompositeModel>
@ocaml.doc("<p>Contains asset property information.</p>")
type property = {
  @ocaml.doc(
    "<p>The property type (see <code>PropertyType</code>). A property contains one type.</p>"
  )
  @as("type")
  type_: option<propertyType>,
  @ocaml.doc(
    "<p>The unit (such as <code>Newtons</code> or <code>RPM</code>) of the asset property.</p>"
  )
  @as("unit")
  unit_: option<propertyUnit>,
  @ocaml.doc("<p>The property data type.</p>") dataType: propertyDataType,
  @ocaml.doc(
    "<p>The asset property's notification topic and state. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html\">UpdateAssetProperty</a>.</p>"
  )
  notification: option<propertyNotification>,
  @ocaml.doc("<p>The property alias that identifies the property, such as an OPC-UA server data stream path
        (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the
        <i>AWS IoT SiteWise User Guide</i>.</p>")
  alias: option<propertyAlias>,
  @ocaml.doc("<p>The name of the property.</p>") name: name,
  @ocaml.doc("<p>The ID of the asset property.</p>") id: id,
}
type batchPutAssetPropertyErrorEntries = array<batchPutAssetPropertyErrorEntry>
@ocaml.doc("<p>Contains an asset model property definition. This property definition is applied to all
      assets created from the asset model.</p>")
type assetModelPropertyDefinition = {
  @ocaml.doc("<p>The property definition type (see <code>PropertyType</code>). You can only specify one
      type in a property definition.</p>")
  @as("type")
  type_: propertyType,
  @ocaml.doc("<p>The unit of the property definition, such as <code>Newtons</code> or
      <code>RPM</code>.</p>")
  @as("unit")
  unit_: option<propertyUnit>,
  @ocaml.doc("<p>The data type of the structure for this property. This parameter is required on properties
      that have the <code>STRUCT</code> data type.</p>
         <p>The options for this parameter depend on the type of the composite model in which you
      define this property. Use <code>AWS/ALARM_STATE</code> for alarm state in alarm composite
      models.</p>")
  dataTypeSpec: option<name>,
  @ocaml.doc("<p>The data type of the property definition.</p>
         <p>If you specify <code>STRUCT</code>, you must also specify <code>dataTypeSpec</code> to
      identify the type of the structure for this property.</p>")
  dataType: propertyDataType,
  @ocaml.doc("<p>The name of the property definition.</p>") name: name,
}
@ocaml.doc("<p>Contains information about an asset model property.</p>")
type assetModelProperty = {
  @ocaml.doc("<p>The property type (see <code>PropertyType</code>).</p>") @as("type")
  type_: propertyType,
  @ocaml.doc("<p>The unit of the asset model property, such as <code>Newtons</code> or
      <code>RPM</code>.</p>")
  @as("unit")
  unit_: option<propertyUnit>,
  @ocaml.doc("<p>The data type of the structure for this property. This parameter exists on properties that
      have the <code>STRUCT</code> data type.</p>")
  dataTypeSpec: option<name>,
  @ocaml.doc("<p>The data type of the asset model property.</p>") dataType: propertyDataType,
  @ocaml.doc("<p>The name of the asset model property.</p>") name: name,
  @ocaml.doc("<p>The ID of the asset model property.</p>") id: option<id>,
}
@ocaml.doc("<p>Contains information about a composite model property on an asset.</p>")
type compositeModelProperty = {
  assetProperty: property,
  @ocaml.doc("<p>The type of the composite model that defines this property.</p>") @as("type")
  type_: name,
  @ocaml.doc("<p>The name of the property.</p>") name: name,
}
type assetModelPropertyDefinitions = array<assetModelPropertyDefinition>
type assetModelProperties = array<assetModelProperty>
@ocaml.doc("<p>Contains a composite model definition in an asset model. This composite model definition
      is applied to all assets created from the asset model.</p>")
type assetModelCompositeModelDefinition = {
  @ocaml.doc("<p>The asset property definitions for this composite model.</p>")
  properties: option<assetModelPropertyDefinitions>,
  @ocaml.doc("<p>The type of the composite model. For alarm composite models, this type is
      <code>AWS/ALARM</code>.</p>")
  @as("type")
  type_: name,
  @ocaml.doc("<p>The description of the composite model.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the composite model.</p>") name: name,
}
@ocaml.doc("<p>Contains information about a composite model in an asset model. This object contains the
      asset property definitions that you define in the composite model.</p>")
type assetModelCompositeModel = {
  @ocaml.doc("<p>The asset property definitions for this composite model.</p>")
  properties: option<assetModelProperties>,
  @ocaml.doc("<p>The type of the composite model. For alarm composite models, this type is
      <code>AWS/ALARM</code>.</p>")
  @as("type")
  type_: name,
  @ocaml.doc("<p>The description of the composite model.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the composite model.</p>") name: name,
}
type assetModelCompositeModels = array<assetModelCompositeModel>
type assetModelCompositeModelDefinitions = array<assetModelCompositeModelDefinition>
@ocaml.doc("<p>Welcome to the AWS IoT SiteWise API Reference. AWS IoT SiteWise is an AWS service that connects <a href=\"https://en.wikipedia.org/wiki/Internet_of_things#Industrial_applications\">Industrial Internet of Things (IIoT)</a> devices to the power of the AWS Cloud. For more information, see the
      <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/\">AWS IoT SiteWise User Guide</a>. For information about AWS IoT SiteWise quotas, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html\">Quotas</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
module UpdateProject = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>A new description for the project.</p>") projectDescription: option<description>,
    @ocaml.doc("<p>A new friendly name for the project.</p>") projectName: name,
    @ocaml.doc("<p>The ID of the project to update.</p>") projectId: id,
  }

  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "UpdateProjectCommand"
  let make = (~projectName, ~projectId, ~clientToken=?, ~projectDescription=?, ()) =>
    new({
      clientToken: clientToken,
      projectDescription: projectDescription,
      projectName: projectName,
      projectId: projectId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateGatewayCapabilityConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The JSON document that defines the configuration for the gateway capability. For more
      information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/configure-sources.html#configure-source-cli\">Configuring data sources (CLI)</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
    capabilityConfiguration: capabilityConfiguration,
    @ocaml.doc("<p>The namespace of the gateway capability configuration to be updated.
      For example, if you configure OPC-UA
      sources from the AWS IoT SiteWise console, your OPC-UA capability configuration has the namespace
        <code>iotsitewise:opcuacollector:version</code>, where <code>version</code> is a number such as
        <code>1</code>.</p>")
    capabilityNamespace: capabilityNamespace,
    @ocaml.doc("<p>The ID of the gateway to be updated.</p>") gatewayId: id,
  }
  type response = {
    @ocaml.doc("<p>The synchronization status of the capability configuration. The sync status can be one of the following:</p>
         <ul>
            <li>
               <p>
                  <code>IN_SYNC</code> – The gateway is running the capability configuration.</p>
            </li>
            <li>
               <p>
                  <code>OUT_OF_SYNC</code> – The gateway hasn't received the capability configuration.</p>
            </li>
            <li>
               <p>
                  <code>SYNC_FAILED</code> – The gateway rejected the capability configuration.</p>
            </li>
         </ul>
         <p>After you update a capability configuration, its sync status is <code>OUT_OF_SYNC</code>
      until the gateway receives and applies or rejects the updated configuration.</p>")
    capabilitySyncStatus: capabilitySyncStatus,
    @ocaml.doc("<p>The namespace of the gateway capability.</p>")
    capabilityNamespace: capabilityNamespace,
  }
  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "UpdateGatewayCapabilityConfigurationCommand"
  let make = (~capabilityConfiguration, ~capabilityNamespace, ~gatewayId, ()) =>
    new({
      capabilityConfiguration: capabilityConfiguration,
      capabilityNamespace: capabilityNamespace,
      gatewayId: gatewayId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGateway = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, friendly name for the gateway.</p>") gatewayName: name,
    @ocaml.doc("<p>The ID of the gateway to update.</p>") gatewayId: id,
  }

  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "UpdateGatewayCommand"
  let make = (~gatewayName, ~gatewayId, ()) => new({gatewayName: gatewayName, gatewayId: gatewayId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateDashboard = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The new dashboard definition, as specified in a JSON literal. For detailed information,
      see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html\">Creating dashboards (CLI)</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
    dashboardDefinition: dashboardDefinition,
    @ocaml.doc("<p>A new description for the dashboard.</p>")
    dashboardDescription: option<description>,
    @ocaml.doc("<p>A new friendly name for the dashboard.</p>") dashboardName: name,
    @ocaml.doc("<p>The ID of the dashboard to update.</p>") dashboardId: id,
  }

  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "UpdateDashboardCommand"
  let make = (
    ~dashboardDefinition,
    ~dashboardName,
    ~dashboardId,
    ~clientToken=?,
    ~dashboardDescription=?,
    (),
  ) =>
    new({
      clientToken: clientToken,
      dashboardDefinition: dashboardDefinition,
      dashboardDescription: dashboardDescription,
      dashboardName: dashboardName,
      dashboardId: dashboardId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateAssetProperty = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The MQTT notification state (enabled or disabled) for this asset property.
      When the notification state is enabled, AWS IoT SiteWise publishes property value
      updates to a unique MQTT topic. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/interact-with-other-services.html\">Interacting with other services</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>
         <p>If you omit this parameter, the notification state is set to <code>DISABLED</code>.</p>")
    propertyNotificationState: option<propertyNotificationState>,
    @ocaml.doc("<p>The property alias that identifies the property, such as an OPC-UA server data stream path
        (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the
        <i>AWS IoT SiteWise User Guide</i>.</p>
         <p>If you omit this parameter, the alias is removed from the property.</p>")
    propertyAlias: option<propertyAlias>,
    @ocaml.doc("<p>The ID of the asset property to be updated.</p>") propertyId: id,
    @ocaml.doc("<p>The ID of the asset to be updated.</p>") assetId: id,
  }

  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "UpdateAssetPropertyCommand"
  let make = (
    ~propertyId,
    ~assetId,
    ~clientToken=?,
    ~propertyNotificationState=?,
    ~propertyAlias=?,
    (),
  ) =>
    new({
      clientToken: clientToken,
      propertyNotificationState: propertyNotificationState,
      propertyAlias: propertyAlias,
      propertyId: propertyId,
      assetId: assetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateAssets = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The ID of the child asset to disassociate.</p>") childAssetId: id,
    @ocaml.doc("<p>The ID of a hierarchy in the parent asset's model. Hierarchies allow different groupings
      of assets to be formed that all come from the same asset model. You can use the hierarchy ID
      to identify the correct asset to disassociate. For more information, see
      <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html\">Asset hierarchies</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
    hierarchyId: id,
    @ocaml.doc("<p>The ID of the parent asset from which to disassociate the child asset.</p>")
    assetId: id,
  }

  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "DisassociateAssetsCommand"
  let make = (~childAssetId, ~hierarchyId, ~assetId, ~clientToken=?, ()) =>
    new({
      clientToken: clientToken,
      childAssetId: childAssetId,
      hierarchyId: hierarchyId,
      assetId: assetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeProject = {
  type t
  type request = {@ocaml.doc("<p>The ID of the project.</p>") projectId: id}
  type response = {
    @ocaml.doc("<p>The date the project was last updated, in Unix epoch time.</p>")
    projectLastUpdateDate: timestamp_,
    @ocaml.doc("<p>The date the project was created, in Unix epoch time.</p>")
    projectCreationDate: timestamp_,
    @ocaml.doc("<p>The project's description.</p>") projectDescription: option<description>,
    @ocaml.doc("<p>The ID of the portal that the project is in.</p>") portalId: id,
    @ocaml.doc("<p>The name of the project.</p>") projectName: name,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the project, which has the following format.</p>
        <p>
            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:project/${ProjectId}</code>
         </p>")
    projectArn: arn,
    @ocaml.doc("<p>The ID of the project.</p>") projectId: id,
  }
  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "DescribeProjectCommand"
  let make = (~projectId, ()) => new({projectId: projectId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGatewayCapabilityConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace of the capability configuration.
      For example, if you configure OPC-UA
      sources from the AWS IoT SiteWise console, your OPC-UA capability configuration has the namespace
        <code>iotsitewise:opcuacollector:version</code>, where <code>version</code> is a number such as
        <code>1</code>.</p>")
    capabilityNamespace: capabilityNamespace,
    @ocaml.doc("<p>The ID of the gateway that defines the capability configuration.</p>")
    gatewayId: id,
  }
  type response = {
    @ocaml.doc("<p>The synchronization status of the capability configuration. The sync status can be one of the following:</p>
         <ul>
            <li>
               <p>
                  <code>IN_SYNC</code> – The gateway is running the capability configuration.</p>
            </li>
            <li>
               <p>
                  <code>OUT_OF_SYNC</code> – The gateway hasn't received the capability configuration.</p>
            </li>
            <li>
               <p>
                  <code>SYNC_FAILED</code> – The gateway rejected the capability configuration.</p>
            </li>
         </ul>")
    capabilitySyncStatus: capabilitySyncStatus,
    @ocaml.doc("<p>The JSON document that defines the gateway capability's configuration. For more
      information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/configure-sources.html#configure-source-cli\">Configuring data sources (CLI)</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
    capabilityConfiguration: capabilityConfiguration,
    @ocaml.doc("<p>The namespace of the gateway capability.</p>")
    capabilityNamespace: capabilityNamespace,
    @ocaml.doc("<p>The ID of the gateway that defines the capability configuration.</p>")
    gatewayId: id,
  }
  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "DescribeGatewayCapabilityConfigurationCommand"
  let make = (~capabilityNamespace, ~gatewayId, ()) =>
    new({capabilityNamespace: capabilityNamespace, gatewayId: gatewayId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDashboard = {
  type t
  type request = {@ocaml.doc("<p>The ID of the dashboard.</p>") dashboardId: id}
  type response = {
    @ocaml.doc("<p>The date the dashboard was last updated, in Unix epoch time.</p>")
    dashboardLastUpdateDate: timestamp_,
    @ocaml.doc("<p>The date the dashboard was created, in Unix epoch time.</p>")
    dashboardCreationDate: timestamp_,
    @ocaml.doc("<p>The dashboard's definition JSON literal. For detailed information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html\">Creating
        dashboards (CLI)</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
    dashboardDefinition: dashboardDefinition,
    @ocaml.doc("<p>The dashboard's description.</p>") dashboardDescription: option<description>,
    @ocaml.doc("<p>The ID of the project that the dashboard is in.</p>") projectId: id,
    @ocaml.doc("<p>The name of the dashboard.</p>") dashboardName: name,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the dashboard, which has the following format.</p>
        <p>
            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:dashboard/${DashboardId}</code>
         </p>")
    dashboardArn: arn,
    @ocaml.doc("<p>The ID of the dashboard.</p>") dashboardId: id,
  }
  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "DescribeDashboardCommand"
  let make = (~dashboardId, ()) => new({dashboardId: dashboardId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteProject = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The ID of the project.</p>") projectId: id,
  }

  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "DeleteProjectCommand"
  let make = (~projectId, ~clientToken=?, ()) =>
    new({clientToken: clientToken, projectId: projectId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteGateway = {
  type t
  type request = {@ocaml.doc("<p>The ID of the gateway to delete.</p>") gatewayId: id}

  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "DeleteGatewayCommand"
  let make = (~gatewayId, ()) => new({gatewayId: gatewayId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDashboard = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The ID of the dashboard to delete.</p>") dashboardId: id,
  }

  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "DeleteDashboardCommand"
  let make = (~dashboardId, ~clientToken=?, ()) =>
    new({clientToken: clientToken, dashboardId: dashboardId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAccessPolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The ID of the access policy to be deleted.</p>") accessPolicyId: id,
  }

  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "DeleteAccessPolicyCommand"
  let make = (~accessPolicyId, ~clientToken=?, ()) =>
    new({clientToken: clientToken, accessPolicyId: accessPolicyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateAssets = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The ID of the child asset to be associated.</p>") childAssetId: id,
    @ocaml.doc("<p>The ID of a hierarchy in the parent asset's model. Hierarchies allow different groupings
      of assets to be formed that all come from the same asset model. For more information, see
      <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html\">Asset hierarchies</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
    hierarchyId: id,
    @ocaml.doc("<p>The ID of the parent asset.</p>") assetId: id,
  }

  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "AssociateAssetsCommand"
  let make = (~childAssetId, ~hierarchyId, ~assetId, ~clientToken=?, ()) =>
    new({
      clientToken: clientToken,
      childAssetId: childAssetId,
      hierarchyId: hierarchyId,
      assetId: assetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of keys for tags to remove from the resource.</p>") tagKeys: tagKeyList,
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the resource to untag.</p>"
    )
    resourceArn: amazonResourceName,
  }

  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of key-value pairs that contain metadata for the resource. For more information,
      see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your AWS IoT SiteWise
        resources</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
    tags: tagMap,
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the resource to tag.</p>"
    )
    resourceArn: amazonResourceName,
  }

  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutLoggingOptions = {
  type t
  type request = {@ocaml.doc("<p>The logging options to set.</p>") loggingOptions: loggingOptions}

  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "PutLoggingOptionsCommand"
  let make = (~loggingOptions, ()) => new({loggingOptions: loggingOptions})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the resource.</p>"
    )
    resourceArn: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>The list of key-value pairs that contain metadata for the resource. For more information,
      see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your AWS IoT SiteWise
        resources</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
    tags: option<tagMap>,
  }
  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProjectAssets = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per paginated request.</p>
         <p>Default: 50</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to be used for the next set of paginated results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ID of the project.</p>") projectId: id,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list that contains the IDs of each asset associated with the project.</p>")
    assetIds: assetIDs,
  }
  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "ListProjectAssetsCommand"
  let make = (~projectId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, projectId: projectId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLoggingOptions = {
  type t

  type response = {@ocaml.doc("<p>The current logging options.</p>") loggingOptions: loggingOptions}
  @module("@aws-sdk/client-iotsitewise") @new
  external new: unit => t = "DescribeLoggingOptionsCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProject = {
  type t
  type request = {
    @ocaml.doc("<p>A list of key-value pairs that contain metadata for the project. For more information, see
        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your AWS IoT SiteWise
        resources</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
    tags: option<tagMap>,
    @ocaml.doc(
      "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>A description for the project.</p>") projectDescription: option<description>,
    @ocaml.doc("<p>A friendly name for the project.</p>") projectName: name,
    @ocaml.doc("<p>The ID of the portal in which to create the project.</p>") portalId: id,
  }
  type response = {
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the project, which has the following format.</p>
        <p>
            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:project/${ProjectId}</code>
         </p>")
    projectArn: arn,
    @ocaml.doc("<p>The ID of the project.</p>") projectId: id,
  }
  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "CreateProjectCommand"
  let make = (~projectName, ~portalId, ~tags=?, ~clientToken=?, ~projectDescription=?, ()) =>
    new({
      tags: tags,
      clientToken: clientToken,
      projectDescription: projectDescription,
      projectName: projectName,
      portalId: portalId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDashboard = {
  type t
  type request = {
    @ocaml.doc("<p>A list of key-value pairs that contain metadata for the dashboard. For more information,
      see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your AWS IoT SiteWise
        resources</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
    tags: option<tagMap>,
    @ocaml.doc(
      "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The dashboard definition specified in a JSON literal. For detailed information, see
      <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html\">Creating dashboards (CLI)</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
    dashboardDefinition: dashboardDefinition,
    @ocaml.doc("<p>A description for the dashboard.</p>") dashboardDescription: option<description>,
    @ocaml.doc("<p>A friendly name for the dashboard.</p>") dashboardName: name,
    @ocaml.doc("<p>The ID of the project in which to create the dashboard.</p>") projectId: id,
  }
  type response = {
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the dashboard, which has the following format.</p>
        <p>
            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:dashboard/${DashboardId}</code>
         </p>")
    dashboardArn: arn,
    @ocaml.doc("<p>The ID of the dashboard.</p>") dashboardId: id,
  }
  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "CreateDashboardCommand"
  let make = (
    ~dashboardDefinition,
    ~dashboardName,
    ~projectId,
    ~tags=?,
    ~clientToken=?,
    ~dashboardDescription=?,
    (),
  ) =>
    new({
      tags: tags,
      clientToken: clientToken,
      dashboardDefinition: dashboardDefinition,
      dashboardDescription: dashboardDescription,
      dashboardName: dashboardName,
      projectId: projectId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePortal = {
  type t
  type request = {
    @ocaml.doc("<p>Contains the configuration information of an alarm created in an AWS IoT SiteWise Monitor portal. 
  You can use the alarm to monitor an asset property and get notified when the asset property value is outside a specified range. For more information, see .</p>")
    alarms: option<alarms>,
    @ocaml.doc("<p>The email address that sends alarm notifications.</p>")
    notificationSenderEmail: option<email>,
    @ocaml.doc(
      "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of a service role that allows the portal's users to access your AWS IoT SiteWise
      resources on your behalf. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html\">Using service roles for AWS IoT SiteWise Monitor</a> in the
        <i>AWS IoT SiteWise User Guide</i>.</p>")
    roleArn: arn,
    portalLogoImage: option<image>,
    @ocaml.doc("<p>The AWS administrator's contact email address.</p>") portalContactEmail: email,
    @ocaml.doc("<p>A new description for the portal.</p>") portalDescription: option<description>,
    @ocaml.doc("<p>A new friendly name for the portal.</p>") portalName: name,
    @ocaml.doc("<p>The ID of the portal to update.</p>") portalId: id,
  }
  type response = {
    @ocaml.doc("<p>The status of the portal, which contains a state (<code>UPDATING</code> after successfully
      calling this operation) and any error message.</p>")
    portalStatus: portalStatus,
  }
  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "UpdatePortalCommand"
  let make = (
    ~roleArn,
    ~portalContactEmail,
    ~portalName,
    ~portalId,
    ~alarms=?,
    ~notificationSenderEmail=?,
    ~clientToken=?,
    ~portalLogoImage=?,
    ~portalDescription=?,
    (),
  ) =>
    new({
      alarms: alarms,
      notificationSenderEmail: notificationSenderEmail,
      clientToken: clientToken,
      roleArn: roleArn,
      portalLogoImage: portalLogoImage,
      portalContactEmail: portalContactEmail,
      portalDescription: portalDescription,
      portalName: portalName,
      portalId: portalId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAsset = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>A unique, friendly name for the asset.</p>") assetName: name,
    @ocaml.doc("<p>The ID of the asset to update.</p>") assetId: id,
  }
  type response = {
    @ocaml.doc("<p>The status of the asset, which contains a state (<code>UPDATING</code> after successfully
      calling this operation) and any error message.</p>")
    assetStatus: assetStatus,
  }
  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "UpdateAssetCommand"
  let make = (~assetName, ~assetId, ~clientToken=?, ()) =>
    new({clientToken: clientToken, assetName: assetName, assetId: assetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAccessPolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc(
      "<p>The permission level for this access policy. Note that a project <code>ADMINISTRATOR</code> is also known as a project owner.</p>"
    )
    accessPolicyPermission: permission,
    @ocaml.doc(
      "<p>The AWS IoT SiteWise Monitor resource for this access policy. Choose either a portal or a project.</p>"
    )
    accessPolicyResource: resource,
    @ocaml.doc(
      "<p>The identity for this access policy. Choose an AWS SSO user, an AWS SSO group, or an IAM user.</p>"
    )
    accessPolicyIdentity: identity,
    @ocaml.doc("<p>The ID of the access policy.</p>") accessPolicyId: id,
  }

  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "UpdateAccessPolicyCommand"
  let make = (
    ~accessPolicyPermission,
    ~accessPolicyResource,
    ~accessPolicyIdentity,
    ~accessPolicyId,
    ~clientToken=?,
    (),
  ) =>
    new({
      clientToken: clientToken,
      accessPolicyPermission: accessPolicyPermission,
      accessPolicyResource: accessPolicyResource,
      accessPolicyIdentity: accessPolicyIdentity,
      accessPolicyId: accessPolicyId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutDefaultEncryptionConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The Key ID of the customer managed customer master key (CMK) used for AWS KMS encryption. This is required if you use
      <code>KMS_BASED_ENCRYPTION</code>.</p>")
    kmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>The type of encryption used for the encryption configuration.</p>")
    encryptionType: encryptionType,
  }
  type response = {
    @ocaml.doc("<p>The status of the account configuration. This contains the
      <code>ConfigurationState</code>. If there is an error, it also contains the
        <code>ErrorDetails</code>.</p>")
    configurationStatus: configurationStatus,
    @ocaml.doc("<p>The Key ARN of the AWS KMS CMK used for AWS KMS encryption if you use 
      <code>KMS_BASED_ENCRYPTION</code>.</p>")
    kmsKeyArn: option<arn>,
    @ocaml.doc("<p>The type of encryption used for the encryption configuration.</p>")
    encryptionType: encryptionType,
  }
  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "PutDefaultEncryptionConfigurationCommand"
  let make = (~encryptionType, ~kmsKeyId=?, ()) =>
    new({kmsKeyId: kmsKeyId, encryptionType: encryptionType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProjects = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per paginated request.</p>
         <p>Default: 50</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to be used for the next set of paginated results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ID of the portal.</p>") portalId: id,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list that summarizes each project in the portal.</p>")
    projectSummaries: projectSummaries,
  }
  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "ListProjectsCommand"
  let make = (~portalId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, portalId: portalId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDashboards = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per paginated request.</p>
         <p>Default: 50</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to be used for the next set of paginated results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ID of the project.</p>") projectId: id,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list that summarizes each dashboard in the project.</p>")
    dashboardSummaries: dashboardSummaries,
  }
  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "ListDashboardsCommand"
  let make = (~projectId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, projectId: projectId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAssetPropertyValue = {
  type t
  type request = {
    @ocaml.doc("<p>The property alias that identifies the property, such as an OPC-UA server data stream path
        (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the
        <i>AWS IoT SiteWise User Guide</i>.</p>")
    propertyAlias: option<assetPropertyAlias>,
    @ocaml.doc("<p>The ID of the asset property.</p>") propertyId: option<id>,
    @ocaml.doc("<p>The ID of the asset.</p>") assetId: option<id>,
  }
  type response = {
    @ocaml.doc("<p>The current asset property value.</p>")
    propertyValue: option<assetPropertyValue>,
  }
  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "GetAssetPropertyValueCommand"
  let make = (~propertyAlias=?, ~propertyId=?, ~assetId=?, ()) =>
    new({propertyAlias: propertyAlias, propertyId: propertyId, assetId: assetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePortal = {
  type t
  type request = {@ocaml.doc("<p>The ID of the portal.</p>") portalId: id}
  type response = {
    @ocaml.doc(
      "<p>Contains the configuration information of an alarm created in a AWS IoT SiteWise Monitor portal.</p>"
    )
    alarms: option<alarms>,
    @ocaml.doc("<p>The email address that sends alarm notifications.</p>")
    notificationSenderEmail: option<email>,
    @ocaml.doc("<p>The service to use to authenticate users to the portal.</p>")
    portalAuthMode: option<authMode>,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the service role that allows the portal's users to access your AWS IoT SiteWise
      resources on your behalf. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html\">Using service roles for AWS IoT SiteWise Monitor</a> in the
        <i>AWS IoT SiteWise User Guide</i>.</p>")
    roleArn: option<arn>,
    @ocaml.doc("<p>The portal's logo image, which is available at a URL.</p>")
    portalLogoImageLocation: option<imageLocation>,
    @ocaml.doc("<p>The date the portal was last updated, in Unix epoch time.</p>")
    portalLastUpdateDate: timestamp_,
    @ocaml.doc("<p>The date the portal was created, in Unix epoch time.</p>")
    portalCreationDate: timestamp_,
    @ocaml.doc(
      "<p>The current status of the portal, which contains a state and any error message.</p>"
    )
    portalStatus: portalStatus,
    @ocaml.doc("<p>The AWS administrator's contact email address.</p>") portalContactEmail: email,
    @ocaml.doc("<p>The URL for the AWS IoT SiteWise Monitor portal. You can use this URL to access portals that
      use AWS SSO for authentication. For portals that use IAM for authentication, you must use the 
      AWS IoT SiteWise console to get a URL that you can use to access the portal.</p>")
    portalStartUrl: url,
    @ocaml.doc("<p>The AWS SSO application generated client ID (used with AWS SSO APIs). AWS IoT SiteWise includes
        <code>portalClientId</code> for only portals that use AWS SSO to authenticate users.</p>")
    portalClientId: portalClientId,
    @ocaml.doc("<p>The portal's description.</p>") portalDescription: option<description>,
    @ocaml.doc("<p>The name of the portal.</p>") portalName: name,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the portal, which has the following format.</p>
        <p>
            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:portal/${PortalId}</code>
         </p>")
    portalArn: arn,
    @ocaml.doc("<p>The ID of the portal.</p>") portalId: id,
  }
  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "DescribePortalCommand"
  let make = (~portalId, ()) => new({portalId: portalId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGateway = {
  type t
  type request = {@ocaml.doc("<p>The ID of the gateway device.</p>") gatewayId: id}
  type response = {
    @ocaml.doc("<p>The date the gateway was last updated, in Unix epoch time.</p>")
    lastUpdateDate: timestamp_,
    @ocaml.doc("<p>The date the gateway was created, in Unix epoch time.</p>")
    creationDate: timestamp_,
    @ocaml.doc("<p>A list of gateway capability summaries that each contain a namespace and status. Each
      gateway capability defines data sources for the gateway. To retrieve a capability
      configuration's definition, use <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGatewayCapabilityConfiguration.html\">DescribeGatewayCapabilityConfiguration</a>.</p>")
    gatewayCapabilitySummaries: gatewayCapabilitySummaries,
    @ocaml.doc("<p>The gateway's platform.</p>") gatewayPlatform: option<gatewayPlatform>,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the gateway, which has the following format.</p>
        <p>
            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:gateway/${GatewayId}</code>
         </p>")
    gatewayArn: arn,
    @ocaml.doc("<p>The name of the gateway.</p>") gatewayName: name,
    @ocaml.doc("<p>The ID of the gateway device.</p>") gatewayId: id,
  }
  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "DescribeGatewayCommand"
  let make = (~gatewayId, ()) => new({gatewayId: gatewayId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDefaultEncryptionConfiguration = {
  type t

  type response = {
    @ocaml.doc("<p>The status of the account configuration. This contains the
      <code>ConfigurationState</code>. If
      there's an error, it also contains the <code>ErrorDetails</code>.</p>")
    configurationStatus: configurationStatus,
    @ocaml.doc("<p>The key ARN of the customer managed customer master key (CMK) used for AWS KMS encryption
      if you use <code>KMS_BASED_ENCRYPTION</code>.</p>")
    kmsKeyArn: option<arn>,
    @ocaml.doc("<p>The type of encryption used for the encryption configuration.</p>")
    encryptionType: encryptionType,
  }
  @module("@aws-sdk/client-iotsitewise") @new
  external new: unit => t = "DescribeDefaultEncryptionConfigurationCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccessPolicy = {
  type t
  type request = {@ocaml.doc("<p>The ID of the access policy.</p>") accessPolicyId: id}
  type response = {
    @ocaml.doc("<p>The date the access policy was last updated, in Unix epoch time.</p>")
    accessPolicyLastUpdateDate: timestamp_,
    @ocaml.doc("<p>The date the access policy was created, in Unix epoch time.</p>")
    accessPolicyCreationDate: timestamp_,
    @ocaml.doc("<p>The access policy permission. Note that a project <code>ADMINISTRATOR</code> is also known
      as a project owner.</p>")
    accessPolicyPermission: permission,
    @ocaml.doc("<p>The AWS IoT SiteWise Monitor resource (portal or project) to which this access policy provides
      access.</p>")
    accessPolicyResource: resource,
    @ocaml.doc("<p>The identity (AWS SSO user, AWS SSO group, or IAM user) to which this access policy
      applies.</p>")
    accessPolicyIdentity: identity,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the access policy, which has the following format.</p>
        <p>
            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:access-policy/${AccessPolicyId}</code>
         </p>")
    accessPolicyArn: arn,
    @ocaml.doc("<p>The ID of the access policy.</p>") accessPolicyId: id,
  }
  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "DescribeAccessPolicyCommand"
  let make = (~accessPolicyId, ()) => new({accessPolicyId: accessPolicyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeletePortal = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The ID of the portal to delete.</p>") portalId: id,
  }
  type response = {
    @ocaml.doc("<p>The status of the portal, which contains a state (<code>DELETING</code> after successfully
      calling this operation) and any error message.</p>")
    portalStatus: portalStatus,
  }
  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "DeletePortalCommand"
  let make = (~portalId, ~clientToken=?, ()) => new({clientToken: clientToken, portalId: portalId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAssetModel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The ID of the asset model to delete.</p>") assetModelId: id,
  }
  type response = {
    @ocaml.doc("<p>The status of the asset model, which contains a state (<code>DELETING</code> after
      successfully calling this operation) and any error message.</p>")
    assetModelStatus: assetModelStatus,
  }
  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "DeleteAssetModelCommand"
  let make = (~assetModelId, ~clientToken=?, ()) =>
    new({clientToken: clientToken, assetModelId: assetModelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAsset = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The ID of the asset to delete.</p>") assetId: id,
  }
  type response = {
    @ocaml.doc("<p>The status of the asset, which contains a state (<code>DELETING</code> after successfully
      calling this operation) and any error message.</p>")
    assetStatus: assetStatus,
  }
  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "DeleteAssetCommand"
  let make = (~assetId, ~clientToken=?, ()) => new({clientToken: clientToken, assetId: assetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePortal = {
  type t
  type request = {
    @ocaml.doc("<p>Contains the configuration information of an alarm created in an AWS IoT SiteWise Monitor portal. 
  You can use the alarm to monitor an asset property and get notified when the asset property value is outside a specified range. For more information, see .</p>")
    alarms: option<alarms>,
    @ocaml.doc("<p>The email address that sends alarm notifications.</p>
         <important>
            <p>If you use the AWS IoT Events managed AWS Lambda function to manage your emails, you must 
        <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html\">verify the sender email address in Amazon SES</a>.</p>
         </important>")
    notificationSenderEmail: option<email>,
    @ocaml.doc("<p>The service to use to authenticate users to the portal. Choose from the following
      options:</p>
         <ul>
            <li>
               <p>
                  <code>SSO</code> – The portal uses AWS Single Sign-On to authenticate users and manage
          user permissions. Before you can create a portal that uses AWS SSO, you must enable AWS SSO.
          For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-get-started.html#mon-gs-sso\">Enabling AWS SSO</a> in the
            <i>AWS IoT SiteWise User Guide</i>. This option is only available in AWS Regions other than
          the China Regions.</p>
            </li>
            <li>
               <p>
                  <code>IAM</code> – The portal uses AWS Identity and Access Management (IAM) to authenticate users and manage
          user permissions. This option is only available in the China Regions.</p>
            </li>
         </ul>
         <p>You can't change this value after you create a portal.</p>
         <p>Default: <code>SSO</code>
         </p>")
    portalAuthMode: option<authMode>,
    @ocaml.doc("<p>A list of key-value pairs that contain metadata for the portal. For more information, see
        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your AWS IoT SiteWise
        resources</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of a service role that allows the portal's users to access your AWS IoT SiteWise
      resources on your behalf. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html\">Using service roles for AWS IoT SiteWise Monitor</a> in the
        <i>AWS IoT SiteWise User Guide</i>.</p>")
    roleArn: arn,
    @ocaml.doc("<p>A logo image to display in the portal. Upload a square, high-resolution image. The
      image is displayed on a dark background.</p>")
    portalLogoImageFile: option<imageFile>,
    @ocaml.doc(
      "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The AWS administrator's contact email address.</p>") portalContactEmail: email,
    @ocaml.doc("<p>A description for the portal.</p>") portalDescription: option<description>,
    @ocaml.doc("<p>A friendly name for the portal.</p>") portalName: name,
  }
  type response = {
    @ocaml.doc("<p>The associated AWS SSO application ID, if the portal uses AWS SSO.</p>")
    ssoApplicationId: ssoapplicationId,
    @ocaml.doc("<p>The status of the portal, which contains a state (<code>CREATING</code> after successfully
      calling this operation) and any error message.</p>")
    portalStatus: portalStatus,
    @ocaml.doc("<p>The URL for the AWS IoT SiteWise Monitor portal. You can use this URL to access portals that
      use AWS SSO for authentication. For portals that use IAM for authentication, you must use the 
      AWS IoT SiteWise console to get a URL that you can use to access the portal.</p>")
    portalStartUrl: url,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the portal, which has the following format.</p>
        <p>
            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:portal/${PortalId}</code>
         </p>")
    portalArn: arn,
    @ocaml.doc("<p>The ID of the created portal.</p>") portalId: id,
  }
  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "CreatePortalCommand"
  let make = (
    ~roleArn,
    ~portalContactEmail,
    ~portalName,
    ~alarms=?,
    ~notificationSenderEmail=?,
    ~portalAuthMode=?,
    ~tags=?,
    ~portalLogoImageFile=?,
    ~clientToken=?,
    ~portalDescription=?,
    (),
  ) =>
    new({
      alarms: alarms,
      notificationSenderEmail: notificationSenderEmail,
      portalAuthMode: portalAuthMode,
      tags: tags,
      roleArn: roleArn,
      portalLogoImageFile: portalLogoImageFile,
      clientToken: clientToken,
      portalContactEmail: portalContactEmail,
      portalDescription: portalDescription,
      portalName: portalName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGateway = {
  type t
  type request = {
    @ocaml.doc("<p>A list of key-value pairs that contain metadata for the gateway. For more information, see
        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your AWS IoT SiteWise
        resources</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The gateway's platform. You can only specify one platform in a gateway.</p>")
    gatewayPlatform: gatewayPlatform,
    @ocaml.doc("<p>A unique, friendly name for the gateway.</p>") gatewayName: name,
  }
  type response = {
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the gateway, which has the following format.</p>
        <p>
            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:gateway/${GatewayId}</code>
         </p>")
    gatewayArn: arn,
    @ocaml.doc(
      "<p>The ID of the gateway device. You can use this ID when you call other AWS IoT SiteWise APIs.</p>"
    )
    gatewayId: id,
  }
  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "CreateGatewayCommand"
  let make = (~gatewayPlatform, ~gatewayName, ~tags=?, ()) =>
    new({tags: tags, gatewayPlatform: gatewayPlatform, gatewayName: gatewayName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAsset = {
  type t
  type request = {
    @ocaml.doc("<p>A list of key-value pairs that contain metadata for the asset. For more information, see
        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your AWS IoT SiteWise
        resources</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
    tags: option<tagMap>,
    @ocaml.doc(
      "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The ID of the asset model from which to create the asset.</p>") assetModelId: id,
    @ocaml.doc("<p>A unique, friendly name for the asset.</p>") assetName: name,
  }
  type response = {
    @ocaml.doc("<p>The status of the asset, which contains a state (<code>CREATING</code> after successfully
      calling this operation) and any error message.</p>")
    assetStatus: assetStatus,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the asset, which has the following format.</p>
        <p>
            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}</code>
         </p>")
    assetArn: arn,
    @ocaml.doc("<p>The ID of the asset. This ID uniquely identifies the asset within AWS IoT SiteWise and can be used with other
      AWS IoT SiteWise APIs.</p>")
    assetId: id,
  }
  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "CreateAssetCommand"
  let make = (~assetModelId, ~assetName, ~tags=?, ~clientToken=?, ()) =>
    new({tags: tags, clientToken: clientToken, assetModelId: assetModelId, assetName: assetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAccessPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>A list of key-value pairs that contain metadata for the access policy. For more
      information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your
        AWS IoT SiteWise resources</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
    tags: option<tagMap>,
    @ocaml.doc(
      "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc(
      "<p>The permission level for this access policy. Note that a project <code>ADMINISTRATOR</code> is also known as a project owner.</p>"
    )
    accessPolicyPermission: permission,
    @ocaml.doc(
      "<p>The AWS IoT SiteWise Monitor resource for this access policy. Choose either a portal or a project.</p>"
    )
    accessPolicyResource: resource,
    @ocaml.doc(
      "<p>The identity for this access policy. Choose an AWS SSO user, an AWS SSO group, or an IAM user.</p>"
    )
    accessPolicyIdentity: identity,
  }
  type response = {
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the access policy, which has the following format.</p>
        <p>
            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:access-policy/${AccessPolicyId}</code>
         </p>")
    accessPolicyArn: arn,
    @ocaml.doc("<p>The ID of the access policy.</p>") accessPolicyId: id,
  }
  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "CreateAccessPolicyCommand"
  let make = (
    ~accessPolicyPermission,
    ~accessPolicyResource,
    ~accessPolicyIdentity,
    ~tags=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      tags: tags,
      clientToken: clientToken,
      accessPolicyPermission: accessPolicyPermission,
      accessPolicyResource: accessPolicyResource,
      accessPolicyIdentity: accessPolicyIdentity,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDisassociateProjectAssets = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The IDs of the assets to be disassociated from the project.</p>") assetIds: ids,
    @ocaml.doc("<p>The ID of the project from which to disassociate the assets.</p>") projectId: id,
  }
  type response = {
    @ocaml.doc("<p>A list of associated error information, if any.</p>")
    errors: option<batchDisassociateProjectAssetsErrors>,
  }
  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "BatchDisassociateProjectAssetsCommand"
  let make = (~assetIds, ~projectId, ~clientToken=?, ()) =>
    new({clientToken: clientToken, assetIds: assetIds, projectId: projectId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchAssociateProjectAssets = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The IDs of the assets to be associated to the project.</p>") assetIds: ids,
    @ocaml.doc("<p>The ID of the project to which to associate the assets.</p>") projectId: id,
  }
  type response = {
    @ocaml.doc("<p>A list of associated error information, if any.</p>")
    errors: option<batchAssociateProjectAssetsErrors>,
  }
  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "BatchAssociateProjectAssetsCommand"
  let make = (~assetIds, ~projectId, ~clientToken=?, ()) =>
    new({clientToken: clientToken, assetIds: assetIds, projectId: projectId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssetRelationships = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per paginated request.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to be used for the next set of paginated results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The type of traversal to use to identify asset relationships. Choose the following
      option:</p>
         <ul>
            <li>
               <p>
                  <code>PATH_TO_ROOT</code> – Identify the asset's parent assets up to the root
          asset. The asset that you specify in <code>assetId</code> is the first result in the list
          of <code>assetRelationshipSummaries</code>, and the root asset is the last result.</p>
            </li>
         </ul>")
    traversalType: traversalType,
    @ocaml.doc("<p>The ID of the asset.</p>") assetId: id,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list that summarizes each asset relationship.</p>")
    assetRelationshipSummaries: assetRelationshipSummaries,
  }
  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "ListAssetRelationshipsCommand"
  let make = (~traversalType, ~assetId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      traversalType: traversalType,
      assetId: assetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInterpolatedAssetPropertyValues = {
  type t
  type request = {
    @ocaml.doc("<p>The interpolation type.</p>
         <p>Valid values: <code>LINEAR_INTERPOLATION</code>
         </p>")
    @as("type")
    type_: interpolationType,
    @ocaml.doc("<p>The maximum number of results to be returned per paginated request. 
      If not specified, the default value is 10.</p>")
    maxResults: option<maxInterpolatedResults>,
    @ocaml.doc("<p>The token to be used for the next set of paginated results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The time interval in seconds over which to interpolate data. Each interval starts when the
      previous one ends.</p>")
    intervalInSeconds: intervalInSeconds,
    @ocaml.doc("<p>The quality of the asset property value. You can use this parameter as a filter to choose
      only the asset property values that have a specific quality.</p>")
    quality: quality,
    @ocaml.doc("<p>The nanosecond offset converted from <code>endTimeInSeconds</code>.</p>")
    endTimeOffsetInNanos: option<offsetInNanos>,
    @ocaml.doc("<p>The inclusive end of the range from which to interpolate data, expressed in seconds in
      Unix epoch time.</p>")
    endTimeInSeconds: timeInSeconds,
    @ocaml.doc("<p>The nanosecond offset converted from <code>startTimeInSeconds</code>.</p>")
    startTimeOffsetInNanos: option<offsetInNanos>,
    @ocaml.doc("<p>The exclusive start of the range from which to interpolate data, expressed in seconds in
      Unix epoch time.</p>")
    startTimeInSeconds: timeInSeconds,
    @ocaml.doc("<p>The property alias that identifies the property, such as an OPC-UA server data stream path
        (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the
        <i>AWS IoT SiteWise User Guide</i>.</p>")
    propertyAlias: option<assetPropertyAlias>,
    @ocaml.doc("<p>The ID of the asset property.</p>") propertyId: option<id>,
    @ocaml.doc("<p>The ID of the asset.</p>") assetId: option<id>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The requested interpolated values.</p>")
    interpolatedAssetPropertyValues: interpolatedAssetPropertyValues,
  }
  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "GetInterpolatedAssetPropertyValuesCommand"
  let make = (
    ~type_,
    ~intervalInSeconds,
    ~quality,
    ~endTimeInSeconds,
    ~startTimeInSeconds,
    ~maxResults=?,
    ~nextToken=?,
    ~endTimeOffsetInNanos=?,
    ~startTimeOffsetInNanos=?,
    ~propertyAlias=?,
    ~propertyId=?,
    ~assetId=?,
    (),
  ) =>
    new({
      type_: type_,
      maxResults: maxResults,
      nextToken: nextToken,
      intervalInSeconds: intervalInSeconds,
      quality: quality,
      endTimeOffsetInNanos: endTimeOffsetInNanos,
      endTimeInSeconds: endTimeInSeconds,
      startTimeOffsetInNanos: startTimeOffsetInNanos,
      startTimeInSeconds: startTimeInSeconds,
      propertyAlias: propertyAlias,
      propertyId: propertyId,
      assetId: assetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAssetPropertyValueHistory = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per paginated request.</p>
         <p>Default: 100</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to be used for the next set of paginated results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The chronological sorting order of the requested information.</p>
         <p>Default: <code>ASCENDING</code>
         </p>")
    timeOrdering: option<timeOrdering>,
    @ocaml.doc("<p>The quality by which to filter asset data.</p>") qualities: option<qualities>,
    @ocaml.doc(
      "<p>The inclusive end of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>"
    )
    endDate: option<timestamp_>,
    @ocaml.doc(
      "<p>The exclusive start of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>"
    )
    startDate: option<timestamp_>,
    @ocaml.doc("<p>The property alias that identifies the property, such as an OPC-UA server data stream path
        (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the
        <i>AWS IoT SiteWise User Guide</i>.</p>")
    propertyAlias: option<assetPropertyAlias>,
    @ocaml.doc("<p>The ID of the asset property.</p>") propertyId: option<id>,
    @ocaml.doc("<p>The ID of the asset.</p>") assetId: option<id>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The asset property's value history.</p>")
    assetPropertyValueHistory: assetPropertyValueHistory,
  }
  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "GetAssetPropertyValueHistoryCommand"
  let make = (
    ~maxResults=?,
    ~nextToken=?,
    ~timeOrdering=?,
    ~qualities=?,
    ~endDate=?,
    ~startDate=?,
    ~propertyAlias=?,
    ~propertyId=?,
    ~assetId=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      timeOrdering: timeOrdering,
      qualities: qualities,
      endDate: endDate,
      startDate: startDate,
      propertyAlias: propertyAlias,
      propertyId: propertyId,
      assetId: assetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAssetPropertyAggregates = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per paginated request.</p>
         <p>Default: 100</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to be used for the next set of paginated results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The chronological sorting order of the requested information.</p>
         <p>Default: <code>ASCENDING</code>
         </p>")
    timeOrdering: option<timeOrdering>,
    @ocaml.doc(
      "<p>The inclusive end of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>"
    )
    endDate: timestamp_,
    @ocaml.doc(
      "<p>The exclusive start of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>"
    )
    startDate: timestamp_,
    @ocaml.doc("<p>The quality by which to filter asset data.</p>") qualities: option<qualities>,
    @ocaml.doc("<p>The time interval over which to aggregate data.</p>") resolution: resolution,
    @ocaml.doc("<p>The data aggregating function.</p>") aggregateTypes: aggregateTypes,
    @ocaml.doc("<p>The property alias that identifies the property, such as an OPC-UA server data stream path
        (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see
        <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the
        <i>AWS IoT SiteWise User Guide</i>.</p>")
    propertyAlias: option<assetPropertyAlias>,
    @ocaml.doc("<p>The ID of the asset property.</p>") propertyId: option<id>,
    @ocaml.doc("<p>The ID of the asset.</p>") assetId: option<id>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The requested aggregated values.</p>") aggregatedValues: aggregatedValues,
  }
  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "GetAssetPropertyAggregatesCommand"
  let make = (
    ~endDate,
    ~startDate,
    ~resolution,
    ~aggregateTypes,
    ~maxResults=?,
    ~nextToken=?,
    ~timeOrdering=?,
    ~qualities=?,
    ~propertyAlias=?,
    ~propertyId=?,
    ~assetId=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      timeOrdering: timeOrdering,
      endDate: endDate,
      startDate: startDate,
      qualities: qualities,
      resolution: resolution,
      aggregateTypes: aggregateTypes,
      propertyAlias: propertyAlias,
      propertyId: propertyId,
      assetId: assetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPortals = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per paginated request.</p>
         <p>Default: 50</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to be used for the next set of paginated results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list that summarizes each portal.</p>")
    portalSummaries: option<portalSummaries>,
  }
  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "ListPortalsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGateways = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per paginated request.</p>
         <p>Default: 50</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to be used for the next set of paginated results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list that summarizes each gateway.</p>") gatewaySummaries: gatewaySummaries,
  }
  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "ListGatewaysCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssociatedAssets = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per paginated request.</p>
         <p>Default: 50</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to be used for the next set of paginated results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The direction to list associated assets. Choose one of the following options:</p>
         <ul>
            <li>
               <p>
                  <code>CHILD</code> – The list includes all child assets associated to the
          asset. The <code>hierarchyId</code> parameter is required if you choose
          <code>CHILD</code>.</p>
            </li>
            <li>
               <p>
                  <code>PARENT</code> – The list includes the asset's parent asset.</p>
            </li>
         </ul>
         <p>Default: <code>CHILD</code>
         </p>")
    traversalDirection: option<traversalDirection>,
    @ocaml.doc("<p>The ID of the hierarchy by which child assets are associated to the asset. To find a
      hierarchy ID, use the <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAsset.html\">DescribeAsset</a> or <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetModel.html\">DescribeAssetModel</a> operations. This
      parameter is required if you choose <code>CHILD</code> for
      <code>traversalDirection</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html\">Asset hierarchies</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
    hierarchyId: option<id>,
    @ocaml.doc("<p>The ID of the asset to query.</p>") assetId: id,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list that summarizes the associated assets.</p>")
    assetSummaries: associatedAssetsSummaries,
  }
  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "ListAssociatedAssetsCommand"
  let make = (~assetId, ~maxResults=?, ~nextToken=?, ~traversalDirection=?, ~hierarchyId=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      traversalDirection: traversalDirection,
      hierarchyId: hierarchyId,
      assetId: assetId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssets = {
  type t
  type request = {
    @ocaml.doc("<p>The filter for the requested list of assets. Choose one of the following options:</p>
         <ul>
            <li>
               <p>
                  <code>ALL</code> – The list includes all assets for a given asset model ID. The
            <code>assetModelId</code> parameter is required if you filter by
          <code>ALL</code>.</p>
            </li>
            <li>
               <p>
                  <code>TOP_LEVEL</code> – The list includes only top-level assets in the asset
          hierarchy tree.</p>
            </li>
         </ul>
         <p>Default: <code>ALL</code>
         </p>")
    filter: option<listAssetsFilter>,
    @ocaml.doc("<p>The ID of the asset model by which to filter the list of assets. This parameter is
      required if you choose <code>ALL</code> for <code>filter</code>.</p>")
    assetModelId: option<id>,
    @ocaml.doc("<p>The maximum number of results to be returned per paginated request.</p>
         <p>Default: 50</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to be used for the next set of paginated results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list that summarizes each asset.</p>") assetSummaries: assetSummaries,
  }
  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "ListAssetsCommand"
  let make = (~filter=?, ~assetModelId=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({filter: filter, assetModelId: assetModelId, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssetModels = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per paginated request.</p>
         <p>Default: 50</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to be used for the next set of paginated results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list that summarizes each asset model.</p>")
    assetModelSummaries: assetModelSummaries,
  }
  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "ListAssetModelsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAccessPolicies = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per paginated request.</p>
         <p>Default: 50</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to be used for the next set of paginated results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARN of the IAM user. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM ARNs</a> in the
        <i>IAM User Guide</i>. This parameter is required if you specify
        <code>IAM</code> for <code>identityType</code>.</p>")
    iamArn: option<arn>,
    @ocaml.doc("<p>The ID of the resource. This parameter is required if you specify
        <code>resourceType</code>.</p>")
    resourceId: option<id>,
    @ocaml.doc("<p>The type of resource (portal or project). This parameter is required if you specify
        <code>resourceId</code>.</p>")
    resourceType: option<resourceType>,
    @ocaml.doc("<p>The ID of the identity. This parameter is required if you specify <code>USER</code> or
        <code>GROUP</code> for <code>identityType</code>.</p>")
    identityId: option<identityId>,
    @ocaml.doc("<p>The type of identity (AWS SSO user, AWS SSO group, or IAM user). This parameter is required
      if you specify <code>identityId</code>.</p>")
    identityType: option<identityType>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list that summarizes each access policy.</p>")
    accessPolicySummaries: accessPolicySummaries,
  }
  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "ListAccessPoliciesCommand"
  let make = (
    ~maxResults=?,
    ~nextToken=?,
    ~iamArn=?,
    ~resourceId=?,
    ~resourceType=?,
    ~identityId=?,
    ~identityType=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      iamArn: iamArn,
      resourceId: resourceId,
      resourceType: resourceType,
      identityId: identityId,
      identityType: identityType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAsset = {
  type t
  type request = {@ocaml.doc("<p>The ID of the asset.</p>") assetId: id}
  type response = {
    @ocaml.doc(
      "<p>The current status of the asset, which contains a state and any error message.</p>"
    )
    assetStatus: assetStatus,
    @ocaml.doc("<p>The date the asset was last updated, in Unix epoch time.</p>")
    assetLastUpdateDate: timestamp_,
    @ocaml.doc("<p>The date the asset was created, in Unix epoch time.</p>")
    assetCreationDate: timestamp_,
    @ocaml.doc("<p>The composite models for the asset.</p>")
    assetCompositeModels: option<assetCompositeModels>,
    @ocaml.doc(
      "<p>A list of asset hierarchies that each contain a <code>hierarchyId</code>. A hierarchy specifies allowed parent/child asset relationships.</p>"
    )
    assetHierarchies: assetHierarchies,
    @ocaml.doc("<p>The list of asset properties for the asset.</p>
         <p>This object doesn't include properties that you define in composite models. You can find
      composite model properties in the <code>assetCompositeModels</code> object.</p>")
    assetProperties: assetProperties,
    @ocaml.doc("<p>The ID of the asset model that was used to create the asset.</p>")
    assetModelId: id,
    @ocaml.doc("<p>The name of the asset.</p>") assetName: name,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the asset, which has the following format.</p>
        <p>
            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}</code>
         </p>")
    assetArn: arn,
    @ocaml.doc("<p>The ID of the asset.</p>") assetId: id,
  }
  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "DescribeAssetCommand"
  let make = (~assetId, ()) => new({assetId: assetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchPutAssetPropertyValue = {
  type t
  type request = {
    @ocaml.doc("<p>The list of asset property value entries for the batch put request. You can specify up to
      10 entries per request.</p>")
    entries: putAssetPropertyValueEntries,
  }
  type response = {
    @ocaml.doc("<p>A list of the errors (if any) associated with the batch put request. Each error entry
      contains the <code>entryId</code> of the entry that failed.</p>")
    errorEntries: batchPutAssetPropertyErrorEntries,
  }
  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "BatchPutAssetPropertyValueCommand"
  let make = (~entries, ()) => new({entries: entries})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAssetProperty = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the asset property.</p>") propertyId: id,
    @ocaml.doc("<p>The ID of the asset.</p>") assetId: id,
  }
  type response = {
    @ocaml.doc("<p>The composite asset model that declares this asset property, if this asset property exists
      in a composite model.</p>")
    compositeModel: option<compositeModelProperty>,
    @ocaml.doc("<p>The asset property's definition, alias, and notification state.</p>
         <p>This response includes this object for normal asset properties. If you describe an asset
      property in a composite model, this response includes the asset property information in
        <code>compositeModel</code>.</p>")
    assetProperty: option<property>,
    @ocaml.doc("<p>The ID of the asset model.</p>") assetModelId: id,
    @ocaml.doc("<p>The name of the asset.</p>") assetName: name,
    @ocaml.doc("<p>The ID of the asset.</p>") assetId: id,
  }
  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "DescribeAssetPropertyCommand"
  let make = (~propertyId, ~assetId, ()) => new({propertyId: propertyId, assetId: assetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAssetModel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The composite asset models that are part of this asset model.
      Composite asset models are asset models that contain specific properties. Each composite model
      has a type that defines the properties that the composite model supports. Use composite asset
      models to define alarms on this asset model.</p>")
    assetModelCompositeModels: option<assetModelCompositeModels>,
    @ocaml.doc("<p>The updated hierarchy definitions of the asset model. Each hierarchy specifies an asset
      model whose assets can be children of any other assets created from this asset model. For more
      information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html\">Asset hierarchies</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>
         <p>You can specify up to 10 hierarchies per asset model. For more
      information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html\">Quotas</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
    assetModelHierarchies: option<assetModelHierarchies>,
    @ocaml.doc("<p>The updated property definitions of the asset model. For more information, see
      <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html\">Asset properties</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>
         <p>You can specify up to 200 properties per asset model. For more
      information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html\">Quotas</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
    assetModelProperties: option<assetModelProperties>,
    @ocaml.doc("<p>A description for the asset model.</p>")
    assetModelDescription: option<description>,
    @ocaml.doc("<p>A unique, friendly name for the asset model.</p>") assetModelName: name,
    @ocaml.doc("<p>The ID of the asset model to update.</p>") assetModelId: id,
  }
  type response = {
    @ocaml.doc("<p>The status of the asset model, which contains a state (<code>UPDATING</code> after
      successfully calling this operation) and any error message.</p>")
    assetModelStatus: assetModelStatus,
  }
  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "UpdateAssetModelCommand"
  let make = (
    ~assetModelName,
    ~assetModelId,
    ~clientToken=?,
    ~assetModelCompositeModels=?,
    ~assetModelHierarchies=?,
    ~assetModelProperties=?,
    ~assetModelDescription=?,
    (),
  ) =>
    new({
      clientToken: clientToken,
      assetModelCompositeModels: assetModelCompositeModels,
      assetModelHierarchies: assetModelHierarchies,
      assetModelProperties: assetModelProperties,
      assetModelDescription: assetModelDescription,
      assetModelName: assetModelName,
      assetModelId: assetModelId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAssetModel = {
  type t
  type request = {@ocaml.doc("<p>The ID of the asset model.</p>") assetModelId: id}
  type response = {
    @ocaml.doc("<p>The current status of the asset model, which contains a state and any error
      message.</p>")
    assetModelStatus: assetModelStatus,
    @ocaml.doc("<p>The date the asset model was last updated, in Unix epoch time.</p>")
    assetModelLastUpdateDate: timestamp_,
    @ocaml.doc("<p>The date the asset model was created, in Unix epoch time.</p>")
    assetModelCreationDate: timestamp_,
    @ocaml.doc("<p>The list of composite asset models for the asset model.</p>")
    assetModelCompositeModels: option<assetModelCompositeModels>,
    @ocaml.doc("<p>A list of asset model hierarchies that each contain a <code>childAssetModelId</code> and a
        <code>hierarchyId</code> (named <code>id</code>). A hierarchy specifies allowed parent/child
      asset relationships for an asset model.</p>")
    assetModelHierarchies: assetModelHierarchies,
    @ocaml.doc("<p>The list of asset properties for the asset model.</p>
         <p>This object doesn't include properties that you define in composite models. You can find
      composite model properties in the <code>assetModelCompositeModels</code> object.</p>")
    assetModelProperties: assetModelProperties,
    @ocaml.doc("<p>The asset model's description.</p>") assetModelDescription: description,
    @ocaml.doc("<p>The name of the asset model.</p>") assetModelName: name,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the asset model, which has the following format.</p>
        <p>
            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}</code>
         </p>")
    assetModelArn: arn,
    @ocaml.doc("<p>The ID of the asset model.</p>") assetModelId: id,
  }
  @module("@aws-sdk/client-iotsitewise") @new
  external new: request => t = "DescribeAssetModelCommand"
  let make = (~assetModelId, ()) => new({assetModelId: assetModelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAssetModel = {
  type t
  type request = {
    @ocaml.doc("<p>A list of key-value pairs that contain metadata for the asset model. For more information,
      see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your AWS IoT SiteWise
        resources</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
    tags: option<tagMap>,
    @ocaml.doc(
      "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>"
    )
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The composite asset models that are part of this asset model.
      Composite asset models are asset models that contain specific properties. Each composite model
      has a type that defines the properties that the composite model supports. Use composite asset
      models to define alarms on this asset model.</p>")
    assetModelCompositeModels: option<assetModelCompositeModelDefinitions>,
    @ocaml.doc("<p>The hierarchy definitions of the asset model. Each hierarchy specifies an asset model
      whose assets can be children of any other assets created from this asset model. For more
      information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html\">Asset hierarchies</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>
         <p>You can specify up to 10 hierarchies per asset model. For more
      information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html\">Quotas</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
    assetModelHierarchies: option<assetModelHierarchyDefinitions>,
    @ocaml.doc("<p>The property definitions of the asset model. For more information, see
      <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html\">Asset properties</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>
         <p>You can specify up to 200 properties per asset model. For more
      information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html\">Quotas</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>")
    assetModelProperties: option<assetModelPropertyDefinitions>,
    @ocaml.doc("<p>A description for the asset model.</p>")
    assetModelDescription: option<description>,
    @ocaml.doc("<p>A unique, friendly name for the asset model.</p>") assetModelName: name,
  }
  type response = {
    @ocaml.doc("<p>The status of the asset model, which contains a state (<code>CREATING</code> after
      successfully calling this operation) and any error message.</p>")
    assetModelStatus: assetModelStatus,
    @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the asset model, which has the following format.</p>
        <p>
            <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}</code>
         </p>")
    assetModelArn: arn,
    @ocaml.doc(
      "<p>The ID of the asset model. You can use this ID when you call other AWS IoT SiteWise APIs.</p>"
    )
    assetModelId: id,
  }
  @module("@aws-sdk/client-iotsitewise") @new external new: request => t = "CreateAssetModelCommand"
  let make = (
    ~assetModelName,
    ~tags=?,
    ~clientToken=?,
    ~assetModelCompositeModels=?,
    ~assetModelHierarchies=?,
    ~assetModelProperties=?,
    ~assetModelDescription=?,
    (),
  ) =>
    new({
      tags: tags,
      clientToken: clientToken,
      assetModelCompositeModels: assetModelCompositeModels,
      assetModelHierarchies: assetModelHierarchies,
      assetModelProperties: assetModelProperties,
      assetModelDescription: assetModelDescription,
      assetModelName: assetModelName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
