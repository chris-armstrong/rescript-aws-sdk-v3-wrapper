type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-secretsmanager") @new
external createClient: unit => awsServiceClient = "SecretsManagerClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timestampType = Js.Date.t
type tagValueType = string
type tagKeyType = string
type statusType = [@as("InProgress") #InProgress | @as("Failed") #Failed | @as("InSync") #InSync]
type statusMessageType = string
type sortOrderType = [@as("desc") #Desc | @as("asc") #Asc]
type secretVersionStageType = string
type secretVersionIdType = string
type secretStringType = string
type secretNameType = string
type secretIdType = string
type secretBinaryType = NodeJs.Buffer.t
type secretARNType = string
type scheduleExpressionType = string
type rotationLambdaARNType = string
type rotationEnabledType = bool
type requireEachIncludedTypeType = bool
type regionType = string
type recoveryWindowInDaysType = float
type randomPasswordType = string
type passwordLengthType = float
type owningServiceType = string
type nonEmptyResourcePolicyType = string
type nextTokenType = string
type nameType = string
type maxResultsType = int
type lastRotatedDateType = Js.Date.t
type lastChangedDateType = Js.Date.t
type lastAccessedDateType = Js.Date.t
type kmsKeyIdType = string
type includeSpaceType = bool
type filterValueStringType = string
type filterNameStringType = [
  | @as("all") #All
  | @as("primary-region") #Primary_Region
  | @as("tag-value") #Tag_Value
  | @as("tag-key") #Tag_Key
  | @as("name") #Name
  | @as("description") #Description
]
type excludeUppercaseType = bool
type excludePunctuationType = bool
type excludeNumbersType = bool
type excludeLowercaseType = bool
type excludeCharactersType = string
type errorMessage = string
type durationType = string
type descriptionType = string
type deletionDateType = Js.Date.t
type deletedDateType = Js.Date.t
type createdDateType = Js.Date.t
type clientRequestTokenType = string
type booleanType = bool
type automaticallyRotateAfterDaysType = float
@ocaml.doc("<p>Displays errors that occurred during validation of the resource policy.</p>")
type validationErrorsEntry = {
  @ocaml.doc(
    "<p>Displays error messages if validation encounters problems during validation of the resource policy.</p>"
  )
  @as("ErrorMessage")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p>Checks the name of the policy.</p>") @as("CheckName") checkName: option<nameType>,
}
type tagKeyListType = array<tagKeyType>
@ocaml.doc("<p>A structure that contains information about a tag.</p>")
type tag = {
  @ocaml.doc("<p>The string value associated with the key of the tag.</p>") @as("Value")
  value: option<tagValueType>,
  @ocaml.doc("<p>The key identifier, or name, of the tag.</p>") @as("Key") key: option<tagKeyType>,
}
type secretVersionStagesType = array<secretVersionStageType>
@ocaml.doc("<p>A structure that defines the rotation configuration for the secret.</p>")
type rotationRulesType = {
  @ocaml.doc("<p>A <code>cron()</code> or <code>rate()</code> expression that defines the schedule for 
      rotating your secret. Secrets Manager rotation schedules use UTC time zone. </p>
         <p>Secrets Manager <code>rate()</code> expressions 
      represent the interval in days that you want to rotate your secret, for example 
      <code>rate(10 days)</code>. If you use a <code>rate()</code> expression, the rotation 
      window opens at midnight, and Secrets Manager rotates your secret any time that day after midnight. 
      You can set a <code>Duration</code> to shorten the rotation window.</p>
         <p>You can use a <code>cron()</code> expression to create rotation schedules that are 
      more detailed than a rotation interval. For more information, including examples, see 
      <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_schedule.html\">Schedule expressions 
        in Secrets Manager rotation</a>. If you use a <code>cron()</code> expression, Secrets Manager rotates 
      your secret any time during that day after the window opens. For example, 
      <code>cron(0 8 1 * ? *)</code> represents a rotation window that occurs on the first 
      day of every month beginning at 8:00 AM UTC. Secrets Manager rotates the secret any time that day 
      after 8:00 AM. You can set a <code>Duration</code> to shorten 
      the rotation window.</p>")
  @as("ScheduleExpression")
  scheduleExpression: option<scheduleExpressionType>,
  @ocaml.doc("<p>The length of the rotation window in hours, for example <code>3h</code> for a three hour window. Secrets Manager 
      rotates your secret at any time during this window. The window must not go into the next UTC 
      day. If you don't specify this value, the window automatically ends at the end of 
      the UTC day. The window begins according to the <code>ScheduleExpression</code>. For more 
      information, including examples, see <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_schedule.html\">Schedule expressions 
        in Secrets Manager rotation</a>.</p>")
  @as("Duration")
  duration: option<durationType>,
  @ocaml.doc("<p>The number of days between automatic scheduled rotations of the secret. You can use this 
      value to check that your secret meets your compliance guidelines for how often secrets must 
      be rotated.</p>
         <p>In <code>DescribeSecret</code> and <code>ListSecrets</code>, this value is calculated from 
      the rotation schedule after every successful rotation. In <code>RotateSecret</code>, you can 
      set the rotation schedule in <code>RotationRules</code> with <code>AutomaticallyAfterDays</code>
      or <code>ScheduleExpression</code>, but not both.</p>")
  @as("AutomaticallyAfterDays")
  automaticallyAfterDays: option<automaticallyRotateAfterDaysType>,
}
@ocaml.doc(
  "<p>A replication object consisting of a <code>RegionReplicationStatus</code> object and includes a Region, KMSKeyId, status, and status message.</p>"
)
type replicationStatusType = {
  @ocaml.doc("<p>The date that you last accessed the secret in the Region. </p>")
  @as("LastAccessedDate")
  lastAccessedDate: option<lastAccessedDateType>,
  @ocaml.doc("<p>Status message such as \"<i>Secret with this name already exists in this
      region</i>\".</p>")
  @as("StatusMessage")
  statusMessage: option<statusMessageType>,
  @ocaml.doc(
    "<p>The status can be <code>InProgress</code>, <code>Failed</code>, or <code>InSync</code>.</p>"
  )
  @as("Status")
  status: option<statusType>,
  @ocaml.doc("<p>Can be an <code>ARN</code>, <code>Key ID</code>, or <code>Alias</code>. </p>")
  @as("KmsKeyId")
  kmsKeyId: option<kmsKeyIdType>,
  @ocaml.doc("<p>The Region where replication occurs.</p>") @as("Region")
  region: option<regionType>,
}
@ocaml.doc(
  "<p>A custom type that specifies a <code>Region</code> and the <code>KmsKeyId</code> for a replica secret.</p>"
)
type replicaRegionType = {
  @ocaml.doc(
    "<p>The ARN, key ID, or alias of the KMS key to encrypt the secret. If you don't include this field, Secrets Manager uses <code>aws/secretsmanager</code>.</p>"
  )
  @as("KmsKeyId")
  kmsKeyId: option<kmsKeyIdType>,
  @ocaml.doc(
    "<p>A Region code. For a list of Region codes, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints\">Name and code of Regions</a>.</p>"
  )
  @as("Region")
  region: option<regionType>,
}
type removeReplicaRegionListType = array<regionType>
type kmsKeyIdListType = array<kmsKeyIdType>
type filterValuesStringList = array<filterValueStringType>
type validationErrorsType = array<validationErrorsEntry>
type tagListType = array<tag>
type secretVersionsToStagesMapType = Js.Dict.t<secretVersionStagesType>
@ocaml.doc("<p>A structure that contains information about one version of a secret.</p>")
type secretVersionsListEntry = {
  @ocaml.doc("<p>The KMS keys used to encrypt the secret version.</p>") @as("KmsKeyIds")
  kmsKeyIds: option<kmsKeyIdListType>,
  @ocaml.doc("<p>The date and time this version of the secret was created.</p>") @as("CreatedDate")
  createdDate: option<createdDateType>,
  @ocaml.doc("<p>The date that this version of the secret was last accessed. Note that the resolution of
      this field is at the date level and does not include the time.</p>")
  @as("LastAccessedDate")
  lastAccessedDate: option<lastAccessedDateType>,
  @ocaml.doc("<p>An array of staging labels that are currently associated with this version of the
      secret.</p>")
  @as("VersionStages")
  versionStages: option<secretVersionStagesType>,
  @ocaml.doc("<p>The unique version identifier of this version of the secret.</p>") @as("VersionId")
  versionId: option<secretVersionIdType>,
}
type replicationStatusListType = array<replicationStatusType>
@ocaml.doc(
  "<p>Allows you to add filters when you use the search function in Secrets Manager. For more information, see <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_search-secret.html\">Find secrets in Secrets Manager</a>.</p>"
)
type filter = {
  @ocaml.doc("<p>The keyword to filter for.</p>
         <p>You can prefix your search value with an exclamation mark (<code>!</code>) in order to perform negation filters. </p>")
  @as("Values")
  values: option<filterValuesStringList>,
  @ocaml.doc("<p>The following are keys you can use:</p>
         <ul>
            <li>
               <p>
                  <b>description</b>: Prefix match, not case-sensitive.</p>
            </li>
            <li>
               <p>
                  <b>name</b>: Prefix match, case-sensitive.</p>
            </li>
            <li>
               <p>
                  <b>tag-key</b>: Prefix match, case-sensitive.</p>
            </li>
            <li>
               <p>
                  <b>tag-value</b>: Prefix match, case-sensitive.</p>
            </li>
            <li>
               <p>
                  <b>primary-region</b>: Prefix match, case-sensitive.</p>
            </li>
            <li>
               <p>
                  <b>all</b>: Breaks the filter value string into words and then searches all attributes for matches. Not case-sensitive.</p>
            </li>
         </ul>")
  @as("Key")
  key: option<filterNameStringType>,
}
type addReplicaRegionListType = array<replicaRegionType>
type secretVersionsListType = array<secretVersionsListEntry>
@ocaml.doc("<p>A structure that contains the details about a secret. It does not include the encrypted
        <code>SecretString</code> and <code>SecretBinary</code> values. To get those values, use 
      <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_GetSecretValue.html\">GetSecretValue</a>
      .</p>")
type secretListEntry = {
  @ocaml.doc("<p>The Region where Secrets Manager originated the secret.</p>") @as("PrimaryRegion")
  primaryRegion: option<regionType>,
  @ocaml.doc("<p>The date and time when a secret was created.</p>") @as("CreatedDate")
  createdDate: option<timestampType>,
  @ocaml.doc("<p>Returns the name of the service that created the secret.</p>") @as("OwningService")
  owningService: option<owningServiceType>,
  @ocaml.doc("<p>A list of all of the currently assigned <code>SecretVersionStage</code> staging labels and
      the <code>SecretVersionId</code> attached to each one. Staging labels are used to keep
      track of the different versions during the rotation process.</p>
         <note>
            <p>A version that does not have any <code>SecretVersionStage</code> is considered
        deprecated and subject to deletion. Such versions are not included in this list.</p>
         </note>")
  @as("SecretVersionsToStages")
  secretVersionsToStages: option<secretVersionsToStagesMapType>,
  @ocaml.doc("<p>The list of user-defined tags associated with the secret. To add tags to a
      secret, use <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_TagResource.html\">
               <code>TagResource</code>
            </a>. 
      To remove tags, use <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_UntagResource.html\">
               <code>UntagResource</code>
            </a>.</p>")
  @as("Tags")
  tags: option<tagListType>,
  @ocaml.doc("<p>The date and time the deletion of the secret occurred. Not present on active secrets. The
      secret can be recovered until the number of days in the recovery window has passed, as
      specified in the <code>RecoveryWindowInDays</code> parameter of the <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_DeleteSecret.html\">
               <code>DeleteSecret</code>
            </a> operation.</p>")
  @as("DeletedDate")
  deletedDate: option<deletedDateType>,
  @ocaml.doc("<p>The last date that this secret was accessed. This value is truncated to midnight of the
      date and therefore shows only the date, not the time.</p>")
  @as("LastAccessedDate")
  lastAccessedDate: option<lastAccessedDateType>,
  @ocaml.doc("<p>The last date and time that this secret was modified in any way.</p>")
  @as("LastChangedDate")
  lastChangedDate: option<lastChangedDateType>,
  @ocaml.doc(
    "<p>The most recent date and time that the Secrets Manager rotation process was successfully completed. This value is null if the secret hasn't ever rotated.</p>"
  )
  @as("LastRotatedDate")
  lastRotatedDate: option<lastRotatedDateType>,
  @ocaml.doc("<p>A structure that defines the rotation configuration for the secret.</p>")
  @as("RotationRules")
  rotationRules: option<rotationRulesType>,
  @ocaml.doc("<p>The ARN of an Amazon Web Services Lambda function invoked by Secrets Manager to rotate and expire the
      secret either automatically per the schedule or manually by a call to <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_RotateSecret.html\">
               <code>RotateSecret</code>
            </a>.</p>")
  @as("RotationLambdaARN")
  rotationLambdaARN: option<rotationLambdaARNType>,
  @ocaml.doc("<p>Indicates whether automatic, scheduled rotation is enabled for this secret.</p>")
  @as("RotationEnabled")
  rotationEnabled: option<rotationEnabledType>,
  @ocaml.doc("<p>The ARN of the KMS key that Secrets Manager uses to encrypt the secret value. If the secret is encrypted with 
      the Amazon Web Services managed key <code>aws/secretsmanager</code>, this field is omitted.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<kmsKeyIdType>,
  @ocaml.doc("<p>The user-provided description of the secret.</p>") @as("Description")
  description: option<descriptionType>,
  @ocaml.doc("<p>The friendly name of the secret. You can use forward slashes in the name to represent a
      path hierarchy. For example, <code>/prod/databases/dbserver1</code> could represent the secret
      for a server named <code>dbserver1</code> in the folder <code>databases</code> in the folder
      <code>prod</code>. </p>")
  @as("Name")
  name: option<secretNameType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the secret.</p>") @as("ARN")
  arn: option<secretARNType>,
}
type filtersListType = array<filter>
type secretListType = array<secretListEntry>
@ocaml.doc("<fullname>Amazon Web Services Secrets Manager</fullname>
         <p>Amazon Web Services Secrets Manager provides a service to enable you to store, manage, and retrieve, secrets.</p>
    
         <p>This guide provides descriptions of the Secrets Manager API. For more information about using this
      service, see the <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/introduction.html\">Amazon Web Services Secrets Manager User Guide</a>.</p>
    
         <p>
            <b>API Version</b>
         </p>
    
         <p>This version of the Secrets Manager API Reference documents the Secrets Manager API version 2017-10-17.</p>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
         <p>
            <b>Support and Feedback for Amazon Web Services Secrets Manager</b>
         </p>
         <p>We welcome your feedback. Send your comments to <a href=\"mailto:awssecretsmanager-feedback@amazon.com\">awssecretsmanager-feedback@amazon.com</a>, or post your feedback and questions in the <a href=\"http://forums.aws.amazon.com/forum.jspa?forumID=296\">Amazon Web Services Secrets Manager Discussion Forum</a>. For more
      information about the Amazon Web Services Discussion Forums, see <a href=\"http://forums.aws.amazon.com/help.jspa\">Forums
        Help</a>.</p>
    
         <p>
            <b>Logging API Requests</b>
         </p>
         <p>Amazon Web Services Secrets Manager supports Amazon Web Services CloudTrail, a service that records Amazon Web Services API calls for your Amazon Web Services
      account and delivers log files to an Amazon S3 bucket. By using information that's collected
      by Amazon Web Services CloudTrail, you can determine the requests successfully made to Secrets Manager, who made the
      request, when it was made, and so on. For more about Amazon Web Services Secrets Manager and support for Amazon Web Services
      CloudTrail, see <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring.html#monitoring_cloudtrail\">Logging
        Amazon Web Services Secrets Manager Events with Amazon Web Services CloudTrail</a> in the <i>Amazon Web Services Secrets Manager User Guide</i>.
      To learn more about CloudTrail, including enabling it and find your log files, see the <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html\">Amazon Web Services CloudTrail User Guide</a>.</p>")
module UpdateSecretVersionStage = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the version to add the staging label to. To
      remove a label from a version, then do not specify this parameter.</p>
         <p>If the staging label is already attached to a different version of the secret, then you
      must also specify the <code>RemoveFromVersionId</code> parameter. </p>")
    @as("MoveToVersionId")
    moveToVersionId: option<secretVersionIdType>,
    @ocaml.doc("<p>The ID of the version that the staging label is to be removed
      from. If the staging label you are trying to attach to one version is already attached to a
      different version, then you must include this parameter and specify the version that the label
      is to be removed from. If the label is attached and you either do not specify this parameter,
      or the version ID does not match, then the operation fails.</p>")
    @as("RemoveFromVersionId")
    removeFromVersionId: option<secretVersionIdType>,
    @ocaml.doc("<p>The staging label to add to this version.</p>") @as("VersionStage")
    versionStage: secretVersionStageType,
    @ocaml.doc("<p>The ARN or the name of the secret with the version and staging labelsto modify.</p> 
         <p>For an ARN, we recommend that you specify a complete ARN rather 
      than a partial ARN.</p>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>The name of the secret that was updated.</p>") @as("Name")
    name: option<secretNameType>,
    @ocaml.doc("<p>The ARN of the secret that was updated.</p>") @as("ARN")
    arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new: request => t = "UpdateSecretVersionStageCommand"
  let make = (~versionStage, ~secretId, ~moveToVersionId=?, ~removeFromVersionId=?, ()) =>
    new({
      moveToVersionId: moveToVersionId,
      removeFromVersionId: removeFromVersionId,
      versionStage: versionStage,
      secretId: secretId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSecret = {
  type t
  type request = {
    @ocaml.doc("<p>The text data to encrypt and store in the new
      version of the secret. We recommend you use a JSON structure of key/value pairs for your secret value. </p>
         <p>Either <code>SecretBinary</code> or <code>SecretString</code> must have
      a value, but not both. </p>")
    @as("SecretString")
    secretString: option<secretStringType>,
    @ocaml.doc("<p>The binary data to encrypt and store in the new
      version of the secret. We recommend that you
      store your binary data in a file and then pass
      the contents of the file as a parameter. </p>
         <p>Either <code>SecretBinary</code> or
        <code>SecretString</code> must have a value, but not both.</p>
         <p>You can't access this parameter in the Secrets Manager console.</p>")
    @as("SecretBinary")
    secretBinary: option<secretBinaryType>,
    @ocaml.doc("<p>The ARN, key ID, or alias of the KMS key that Secrets Manager 
      uses to encrypt new secret versions as well as any existing versions the staging labels 
      <code>AWSCURRENT</code>, <code>AWSPENDING</code>, or <code>AWSPREVIOUS</code>. 
      For more information about versions and staging labels, see <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/getting-started.html#term_version\">Concepts: Version</a>.</p>
         <important>
            <p>You can only use the Amazon Web Services managed key <code>aws/secretsmanager</code> if you call this
        operation using credentials from the same Amazon Web Services account that owns the secret. If the secret is in
        a different account, then you must use a customer managed key and provide the ARN of that KMS key in
        this field. The user making the call must have permissions to both the secret and the KMS key in
        their respective accounts.</p>
         </important>")
    @as("KmsKeyId")
    kmsKeyId: option<kmsKeyIdType>,
    @ocaml.doc("<p>The description of the secret.</p>") @as("Description")
    description: option<descriptionType>,
    @ocaml.doc("<p>If you include <code>SecretString</code> or <code>SecretBinary</code>, then Secrets Manager creates 
    a new version for the secret, and this parameter specifies the unique identifier for the new 
    version.</p>
         <note>
            <p>If you use the Amazon Web Services CLI or one of the Amazon Web Services SDKs to call this operation, then you can
        leave this parameter empty. The CLI or SDK generates a random UUID for you and includes it
        as the value for this parameter in the request. If you don't use the SDK and instead
        generate a raw HTTP request to the Secrets Manager service endpoint, then you must generate a
        <code>ClientRequestToken</code> yourself for the new version and include the value in the
        request.</p>
         </note>
         <p>This value becomes the <code>VersionId</code> of the new version.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenType>,
    @ocaml.doc("<p>The ARN or name of the secret.</p> 
         <p>For an ARN, we recommend that you specify a complete ARN rather 
      than a partial ARN.</p>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>If Secrets Manager created a new version of the secret during this operation, then <code>VersionId</code>
      contains the unique identifier of the new version.</p>")
    @as("VersionId")
    versionId: option<secretVersionIdType>,
    @ocaml.doc("<p>The name of the secret that was updated.</p>") @as("Name")
    name: option<secretNameType>,
    @ocaml.doc("<p>The ARN of the secret that was updated.</p>") @as("ARN")
    arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new external new: request => t = "UpdateSecretCommand"
  let make = (
    ~secretId,
    ~secretString=?,
    ~secretBinary=?,
    ~kmsKeyId=?,
    ~description=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      secretString: secretString,
      secretBinary: secretBinary,
      kmsKeyId: kmsKeyId,
      description: description,
      clientRequestToken: clientRequestToken,
      secretId: secretId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopReplicationToReplica = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the primary secret. </p>") @as("SecretId") secretId: secretIdType,
  }
  type response = {
    @ocaml.doc(
      "<p>The ARN of the promoted secret. The ARN is the same as the original primary secret except the Region is changed.</p>"
    )
    @as("ARN")
    arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new: request => t = "StopReplicationToReplicaCommand"
  let make = (~secretId, ()) => new({secretId: secretId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreSecret = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN or name of the secret to restore.</p>
         <p>For an ARN, we recommend that you specify a complete ARN rather 
      than a partial ARN.</p>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>The name of the secret that was restored.</p>") @as("Name")
    name: option<secretNameType>,
    @ocaml.doc("<p>The ARN of the secret that was restored.</p>") @as("ARN")
    arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new external new: request => t = "RestoreSecretCommand"
  let make = (~secretId, ()) => new({secretId: secretId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutResourcePolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies whether to block resource-based policies that allow broad access to the secret. By default, Secrets Manager blocks policies that allow broad access, for example those that use a wildcard for the principal.</p>"
    )
    @as("BlockPublicPolicy")
    blockPublicPolicy: option<booleanType>,
    @ocaml.doc("<p>A JSON-formatted string for an Amazon Web Services
      resource-based policy. For example policies, see <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html\">Permissions 
        policy examples</a>.</p>")
    @as("ResourcePolicy")
    resourcePolicy: nonEmptyResourcePolicyType,
    @ocaml.doc("<p>The ARN or name of the secret to attach the resource-based policy.</p>
         <p>For an ARN, we recommend that you specify a complete ARN rather 
      than a partial ARN.</p>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>The name of the secret.</p>") @as("Name") name: option<nameType>,
    @ocaml.doc("<p>The ARN of the secret.</p>") @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new: request => t = "PutResourcePolicyCommand"
  let make = (~resourcePolicy, ~secretId, ~blockPublicPolicy=?, ()) =>
    new({blockPublicPolicy: blockPublicPolicy, resourcePolicy: resourcePolicy, secretId: secretId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN or name of the secret to retrieve the attached resource-based policy for.</p>
         <p>For an ARN, we recommend that you specify a complete ARN rather 
      than a partial ARN.</p>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>A JSON-formatted string that contains the permissions policy 
      attached to the secret. For more information about permissions policies, see <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html\">Authentication and access control for
        Secrets Manager</a>.</p>")
    @as("ResourcePolicy")
    resourcePolicy: option<nonEmptyResourcePolicyType>,
    @ocaml.doc("<p>The name of the secret that the resource-based policy was retrieved for.</p>")
    @as("Name")
    name: option<nameType>,
    @ocaml.doc("<p>The ARN of the secret that the resource-based policy was retrieved for.</p>")
    @as("ARN")
    arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new: request => t = "GetResourcePolicyCommand"
  let make = (~secretId, ()) => new({secretId: secretId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRandomPassword = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies whether to include at least one upper and lowercase letter, one number, and one punctuation. 
      If you don't include this switch, the password contains at least one of every character type.</p>")
    @as("RequireEachIncludedType")
    requireEachIncludedType: option<requireEachIncludedTypeType>,
    @ocaml.doc("<p>Specifies whether to include the space character. If you 
      include this switch, the password can contain space characters.</p>")
    @as("IncludeSpace")
    includeSpace: option<includeSpaceType>,
    @ocaml.doc("<p>Specifies whether to exclude lowercase letters from the password. If
      you don't include this switch, the password can contain lowercase letters.</p>")
    @as("ExcludeLowercase")
    excludeLowercase: option<excludeLowercaseType>,
    @ocaml.doc("<p>Specifies whether to exclude uppercase letters from the password. If you 
      don't include this switch, the password can contain uppercase letters.</p>")
    @as("ExcludeUppercase")
    excludeUppercase: option<excludeUppercaseType>,
    @ocaml.doc("<p>Specifies whether to exclude the following punctuation characters from the password: 
      <code>! \" # $ % & ' ( ) * + , - . / : ; < = > ? @ [ \\ ] ^ _ ` { | } ~</code>. 
      If you don't include this switch, the password can contain punctuation.</p>")
    @as("ExcludePunctuation")
    excludePunctuation: option<excludePunctuationType>,
    @ocaml.doc("<p>Specifies whether to exclude numbers from the password. If you don't 
      include this switch, the password can contain numbers.</p>")
    @as("ExcludeNumbers")
    excludeNumbers: option<excludeNumbersType>,
    @ocaml.doc("<p>A string of the characters that you don't want in the password.</p>")
    @as("ExcludeCharacters")
    excludeCharacters: option<excludeCharactersType>,
    @ocaml.doc("<p>The length of the password. If you don't include this parameter, the 
      default length is 32 characters.</p>")
    @as("PasswordLength")
    passwordLength: option<passwordLengthType>,
  }
  type response = {
    @ocaml.doc("<p>A string with the password.</p>") @as("RandomPassword")
    randomPassword: option<randomPasswordType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new: request => t = "GetRandomPasswordCommand"
  let make = (
    ~requireEachIncludedType=?,
    ~includeSpace=?,
    ~excludeLowercase=?,
    ~excludeUppercase=?,
    ~excludePunctuation=?,
    ~excludeNumbers=?,
    ~excludeCharacters=?,
    ~passwordLength=?,
    (),
  ) =>
    new({
      requireEachIncludedType: requireEachIncludedType,
      includeSpace: includeSpace,
      excludeLowercase: excludeLowercase,
      excludeUppercase: excludeUppercase,
      excludePunctuation: excludePunctuation,
      excludeNumbers: excludeNumbers,
      excludeCharacters: excludeCharacters,
      passwordLength: passwordLength,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSecret = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies whether to delete the secret without any recovery window. You
      can't use both this parameter and <code>RecoveryWindowInDays</code> in the same
      call. If you don't use either, then Secrets Manager defaults to a 30 day recovery window.</p>
         <p>Secrets Manager performs the actual deletion with an asynchronous background process, so there might 
      be a short delay before the secret is permanently deleted. If you delete a secret and then 
      immediately create a secret with the same name, use appropriate back off and retry logic.</p>
         <important>
            <p>Use this parameter with caution. This parameter causes the operation to skip the normal
        recovery window before the permanent deletion that Secrets Manager would normally impose with the
          <code>RecoveryWindowInDays</code> parameter. If you delete a secret with the
          <code>ForceDeleteWithouRecovery</code> parameter, then you have no opportunity to recover
        the secret. You lose the secret permanently.</p>
         </important>")
    @as("ForceDeleteWithoutRecovery")
    forceDeleteWithoutRecovery: option<booleanType>,
    @ocaml.doc("<p>The number of days from 7 to 30 that Secrets Manager waits before permanently deleting the
      secret. You can't use both this parameter and <code>ForceDeleteWithoutRecovery</code>
      in the same call. If you don't use either, then Secrets Manager defaults to a 30 day recovery window.</p>")
    @as("RecoveryWindowInDays")
    recoveryWindowInDays: option<recoveryWindowInDaysType>,
    @ocaml.doc("<p>The ARN or name of the secret to delete.</p>
         <p>For an ARN, we recommend that you specify a complete ARN rather 
      than a partial ARN.</p>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>The date and time after which this secret Secrets Manager can permanently delete this secret, 
      and it can no longer be restored. This value is the date and time of the delete request 
      plus the number of days in <code>RecoveryWindowInDays</code>.</p>")
    @as("DeletionDate")
    deletionDate: option<deletionDateType>,
    @ocaml.doc("<p>The name of the secret.</p>") @as("Name") name: option<secretNameType>,
    @ocaml.doc("<p>The ARN of the secret.</p>") @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new external new: request => t = "DeleteSecretCommand"
  let make = (~secretId, ~forceDeleteWithoutRecovery=?, ~recoveryWindowInDays=?, ()) =>
    new({
      forceDeleteWithoutRecovery: forceDeleteWithoutRecovery,
      recoveryWindowInDays: recoveryWindowInDays,
      secretId: secretId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN or name of the secret to delete the attached resource-based policy for.</p>
         <p>For an ARN, we recommend that you specify a complete ARN rather 
      than a partial ARN.</p>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>The name of the secret that the resource-based policy was deleted for.</p>")
    @as("Name")
    name: option<nameType>,
    @ocaml.doc("<p>The ARN of the secret that the resource-based policy was deleted for.</p>")
    @as("ARN")
    arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new: request => t = "DeleteResourcePolicyCommand"
  let make = (~secretId, ()) => new({secretId: secretId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelRotateSecret = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN or name of the secret.</p> 
         <p>For an ARN, we recommend that you specify a complete ARN rather 
      than a partial ARN.</p>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier of the version of the secret created during the rotation. This
      version might not be complete, and should be evaluated for possible deletion. We recommend 
      that you remove the <code>VersionStage</code> value <code>AWSPENDING</code> from this version so that 
      Secrets Manager can delete it. Failing to clean up a cancelled rotation can block you from
      starting future rotations.</p>")
    @as("VersionId")
    versionId: option<secretVersionIdType>,
    @ocaml.doc("<p>The name of the secret.</p>") @as("Name") name: option<secretNameType>,
    @ocaml.doc("<p>The ARN of the secret.</p>") @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new: request => t = "CancelRotateSecretCommand"
  let make = (~secretId, ()) => new({secretId: secretId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tag key names to remove from the secret. You don't specify the value. Both the
      key and its associated value are removed.</p>
         <p>This parameter requires a JSON text string argument.</p>
         <p>For storing multiple values, we recommend that you use a JSON text 
    string argument and specify key/value pairs. For more information, see <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html\">Specifying parameter values for the Amazon Web Services CLI</a>
    in the Amazon Web Services CLI User Guide.</p>")
    @as("TagKeys")
    tagKeys: tagKeyListType,
    @ocaml.doc("<p>The ARN or name of the secret.</p>
         <p>For an ARN, we recommend that you specify a complete ARN rather 
      than a partial ARN.</p>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {.}
  @module("@aws-sdk/client-secretsmanager") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~secretId, ()) => new({tagKeys: tagKeys, secretId: secretId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RotateSecret = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies whether to rotate the secret immediately or wait until the next scheduled rotation window. 
    The rotation schedule is defined in <a>RotateSecretRequest$RotationRules</a>.</p>
         <p>If you don't immediately rotate the secret, Secrets Manager tests the rotation configuration by running the 
    <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html\">
               <code>testSecret</code> 
      step</a> of the Lambda rotation function. The test creates an <code>AWSPENDING</code> version of the secret and then removes it.</p>
         <p>If you don't specify this value, then by default, Secrets Manager rotates the secret immediately.</p>")
    @as("RotateImmediately")
    rotateImmediately: option<booleanType>,
    @ocaml.doc("<p>A structure that defines the rotation configuration for this secret.</p>")
    @as("RotationRules")
    rotationRules: option<rotationRulesType>,
    @ocaml.doc("<p>The ARN of the Lambda rotation function that can rotate the secret.</p>")
    @as("RotationLambdaARN")
    rotationLambdaARN: option<rotationLambdaARNType>,
    @ocaml.doc("<p>A unique identifier for the new version of the secret that helps
    ensure idempotency. Secrets Manager uses this value to prevent the accidental creation of duplicate versions if
    there are failures and retries during rotation. This value becomes the
    <code>VersionId</code> of the new version.</p>
         <p>If you use the Amazon Web Services CLI or one of the Amazon Web Services SDK to call this operation, then you can
    leave this parameter empty. The CLI or SDK generates a random UUID for you and includes that
    in the request for this parameter. If you don't use the SDK and instead generate a raw HTTP
    request to the Secrets Manager service endpoint, then you must generate a
    <code>ClientRequestToken</code> yourself for new versions and include that value in the
    request.</p>
         <p>You only need to specify this value if you implement your own retry logic and you want to
    ensure that Secrets Manager doesn't attempt to create a secret version twice. We recommend that you generate a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID-type</a> value to
    ensure uniqueness within the specified secret. </p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenType>,
    @ocaml.doc("<p>The ARN or name of the secret to rotate.</p>
         <p>For an ARN, we recommend that you specify a complete ARN rather 
      than a partial ARN.</p>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>The ID of the new version of the secret.</p>") @as("VersionId")
    versionId: option<secretVersionIdType>,
    @ocaml.doc("<p>The name of the secret.</p>") @as("Name") name: option<secretNameType>,
    @ocaml.doc("<p>The ARN of the secret.</p>") @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new external new: request => t = "RotateSecretCommand"
  let make = (
    ~secretId,
    ~rotateImmediately=?,
    ~rotationRules=?,
    ~rotationLambdaARN=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      rotateImmediately: rotateImmediately,
      rotationRules: rotationRules,
      rotationLambdaARN: rotationLambdaARN,
      clientRequestToken: clientRequestToken,
      secretId: secretId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutSecretValue = {
  type t
  type request = {
    @ocaml.doc("<p>A list of staging labels to attach to this version of the
      secret. Secrets Manager uses staging labels to track versions of a secret through the rotation process.</p>
         <p>If you specify a staging
      label that's already associated with a different version of the same secret, then Secrets Manager  
      removes the label from the other version and attaches it to this version. 
      If you specify 
      <code>AWSCURRENT</code>, and it is already attached to another version, then Secrets Manager also  
      moves the staging label <code>AWSPREVIOUS</code> to the version that <code>AWSCURRENT</code> was removed from.</p>
         <p>If you don't include <code>VersionStages</code>, then Secrets Manager automatically
      moves the staging label <code>AWSCURRENT</code> to this version.</p>")
    @as("VersionStages")
    versionStages: option<secretVersionStagesType>,
    @ocaml.doc("<p>The text to encrypt and store in the new version of the secret. </p>
         <p>You must include <code>SecretBinary</code> or <code>SecretString</code>, but not both.</p>
         <p>We recommend you create the secret string as JSON key/value pairs, as shown in the example.</p>")
    @as("SecretString")
    secretString: option<secretStringType>,
    @ocaml.doc("<p>The binary data to encrypt and store in the new version of
      the secret. To use this parameter in the command-line tools, we recommend that you store your
      binary data in a file and then pass the
      contents of the file as a parameter. </p>
         <p>You must include <code>SecretBinary</code> or <code>SecretString</code>, but not both.</p>
         <p>You can't access this value from the Secrets Manager console.</p>")
    @as("SecretBinary")
    secretBinary: option<secretBinaryType>,
    @ocaml.doc("<p>A unique identifier for the new version of the secret. </p>
         <note>
            <p>If you use the Amazon Web Services CLI or one of the Amazon Web Services SDKs to call this operation, then you can
        leave this parameter empty because they generate a random UUID for you. If you don't 
        use the SDK and instead generate a raw HTTP request to the
        Secrets Manager service endpoint, then you must generate a <code>ClientRequestToken</code> yourself
        for new versions and include that value in the request. </p>
         </note>
         <p>This value helps ensure idempotency. Secrets Manager uses this value to prevent the accidental
      creation of duplicate versions if there are failures and retries during the Lambda rotation
      function processing. We recommend that you generate a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID-type</a> value to
      ensure uniqueness within the specified secret. </p>
         <ul>
            <li>
               <p>If the <code>ClientRequestToken</code> value isn't already associated with a version
          of the secret then a new version of the secret is created. </p>
            </li>
            <li>
               <p>If a version with this value already exists and that version's
          <code>SecretString</code> or <code>SecretBinary</code> values are the same as those in
          the request then the request is ignored. The operation is idempotent. </p>
            </li>
            <li>
               <p>If a version with this value already exists and the version of the
          <code>SecretString</code> and <code>SecretBinary</code> values are different from those
          in the request, then the request fails because you can't modify a secret 
          version. You can only create new versions to store new secret values.</p>
            </li>
         </ul>
         <p>This value becomes the <code>VersionId</code> of the new version.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenType>,
    @ocaml.doc("<p>The ARN or name of the secret to add a new version to.</p>
         <p>For an ARN, we recommend that you specify a complete ARN rather 
      than a partial ARN.</p> 
         <p>If the secret doesn't already exist, use <code>CreateSecret</code> instead.</p>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>The list of staging labels that are currently attached to this version of the secret.
      Secrets Manager uses staging labels to track a version as it progresses through the secret rotation
      process.</p>")
    @as("VersionStages")
    versionStages: option<secretVersionStagesType>,
    @ocaml.doc("<p>The unique identifier of the version of the secret.</p>") @as("VersionId")
    versionId: option<secretVersionIdType>,
    @ocaml.doc("<p>The name of the secret.</p>") @as("Name") name: option<secretNameType>,
    @ocaml.doc("<p>The ARN of the secret.</p>") @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new: request => t = "PutSecretValueCommand"
  let make = (
    ~secretId,
    ~versionStages=?,
    ~secretString=?,
    ~secretBinary=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      versionStages: versionStages,
      secretString: secretString,
      secretBinary: secretBinary,
      clientRequestToken: clientRequestToken,
      secretId: secretId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSecretValue = {
  type t
  type request = {
    @ocaml.doc("<p>The staging label of the version of the secret to retrieve. </p>
         <p>Secrets Manager uses staging labels to keep track of different versions during the rotation process.
      If you include both this parameter and <code>VersionId</code>, the two parameters must refer
      to the same secret version. If you don't specify either a <code>VersionStage</code> or
      <code>VersionId</code>, Secrets Manager returns the <code>AWSCURRENT</code> version.</p>")
    @as("VersionStage")
    versionStage: option<secretVersionStageType>,
    @ocaml.doc("<p>The unique identifier of the version of the secret to retrieve. If
      you include both this parameter and <code>VersionStage</code>, the two parameters must refer
      to the same secret version. If you don't specify either a <code>VersionStage</code> or
        <code>VersionId</code>, then Secrets Manager returns the <code>AWSCURRENT</code> version.</p>
         <p>This value is typically a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID-type</a> value with
      32 hexadecimal digits.</p>")
    @as("VersionId")
    versionId: option<secretVersionIdType>,
    @ocaml.doc("<p>The ARN or name of the secret to retrieve.</p>
         <p>For an ARN, we recommend that you specify a complete ARN rather 
      than a partial ARN.</p>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>The date and time that this version of the secret was created. If you don't specify 
      which version in <code>VersionId</code> or <code>VersionStage</code>, then Secrets Manager uses the 
      <code>AWSCURRENT</code> version.</p>")
    @as("CreatedDate")
    createdDate: option<createdDateType>,
    @ocaml.doc("<p>A list of all of the staging labels currently attached to this version of the
      secret.</p>")
    @as("VersionStages")
    versionStages: option<secretVersionStagesType>,
    @ocaml.doc("<p>The decrypted secret value, if the secret value was originally provided as a string or 
      through the Secrets Manager console.</p>
         <p>If this secret was created by using the console, then Secrets Manager stores the information as a
      JSON structure of key/value pairs. </p>")
    @as("SecretString")
    secretString: option<secretStringType>,
    @ocaml.doc("<p>The decrypted secret value, if the secret value was originally provided as
      binary data in the form of a byte array. The response parameter represents the binary data as
      a <a href=\"https://tools.ietf.org/html/rfc4648#section-4\">base64-encoded</a>
      string.</p>
         <p>If the secret was created by using the Secrets Manager console, or if the secret value was 
      originally provided as a string, then this field is omitted. The secret value appears in 
      <code>SecretString</code> instead.</p>")
    @as("SecretBinary")
    secretBinary: option<secretBinaryType>,
    @ocaml.doc("<p>The unique identifier of this version of the secret.</p>") @as("VersionId")
    versionId: option<secretVersionIdType>,
    @ocaml.doc("<p>The friendly name of the secret.</p>") @as("Name") name: option<secretNameType>,
    @ocaml.doc("<p>The ARN of the secret.</p>") @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new: request => t = "GetSecretValueCommand"
  let make = (~secretId, ~versionStage=?, ~versionId=?, ()) =>
    new({versionStage: versionStage, versionId: versionId, secretId: secretId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ValidateResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>A JSON-formatted string that contains an Amazon Web Services
      resource-based policy. The policy in the string identifies who can access or manage this
      secret and its versions. For example policies, see <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html\">Permissions policy examples</a>.</p>")
    @as("ResourcePolicy")
    resourcePolicy: nonEmptyResourcePolicyType,
    @ocaml.doc("<p>This field is reserved for internal use.</p>") @as("SecretId")
    secretId: option<secretIdType>,
  }
  type response = {
    @ocaml.doc("<p>Validation errors if your policy didn't pass validation.</p>")
    @as("ValidationErrors")
    validationErrors: option<validationErrorsType>,
    @ocaml.doc("<p>True if your policy passes validation, otherwise false.</p>")
    @as("PolicyValidationPassed")
    policyValidationPassed: option<booleanType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new: request => t = "ValidateResourcePolicyCommand"
  let make = (~resourcePolicy, ~secretId=?, ()) =>
    new({resourcePolicy: resourcePolicy, secretId: secretId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to attach to the secret as a JSON text string argument. Each element in the list consists of a <code>Key</code>
      and a <code>Value</code>.</p>

         <p>For storing multiple values, we recommend that you use a JSON text 
    string argument and specify key/value pairs. For more information, see <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html\">Specifying parameter values for the Amazon Web Services CLI</a>
    in the Amazon Web Services CLI User Guide.</p>")
    @as("Tags")
    tags: tagListType,
    @ocaml.doc("<p>The identifier for the secret to attach tags to. You can specify either the
      Amazon Resource Name (ARN) or the friendly name of the secret.</p> 
         <p>For an ARN, we recommend that you specify a complete ARN rather 
      than a partial ARN.</p>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {.}
  @module("@aws-sdk/client-secretsmanager") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~secretId, ()) => new({tags: tags, secretId: secretId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ReplicateSecretToRegions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies whether to overwrite a secret with the same name in the destination Region.</p>"
    )
    @as("ForceOverwriteReplicaSecret")
    forceOverwriteReplicaSecret: option<booleanType>,
    @ocaml.doc("<p>A list of Regions in which to replicate the secret.</p>")
    @as("AddReplicaRegions")
    addReplicaRegions: addReplicaRegionListType,
    @ocaml.doc("<p>The ARN or name of the secret to replicate.</p>") @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>The status of replication.</p>") @as("ReplicationStatus")
    replicationStatus: option<replicationStatusListType>,
    @ocaml.doc("<p>The ARN of the primary secret.</p>") @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new: request => t = "ReplicateSecretToRegionsCommand"
  let make = (~addReplicaRegions, ~secretId, ~forceOverwriteReplicaSecret=?, ()) =>
    new({
      forceOverwriteReplicaSecret: forceOverwriteReplicaSecret,
      addReplicaRegions: addReplicaRegions,
      secretId: secretId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveRegionsFromReplication = {
  type t
  type request = {
    @ocaml.doc("<p>The Regions of the replicas to remove.</p>") @as("RemoveReplicaRegions")
    removeReplicaRegions: removeReplicaRegionListType,
    @ocaml.doc("<p>The ARN or name of the secret.</p>") @as("SecretId") secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>The status of replicas for this secret after you remove Regions.</p>")
    @as("ReplicationStatus")
    replicationStatus: option<replicationStatusListType>,
    @ocaml.doc("<p>The ARN of the primary secret.</p>") @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new: request => t = "RemoveRegionsFromReplicationCommand"
  let make = (~removeReplicaRegions, ~secretId, ()) =>
    new({removeReplicaRegions: removeReplicaRegions, secretId: secretId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSecret = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN or name of the secret. </p>
         <p>For an ARN, we recommend that you specify a complete ARN rather 
      than a partial ARN.</p>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>A list of the replicas of this secret and their status: </p>
         <ul>
            <li>
               <p>
                  <code>Failed</code>, which indicates that the replica was not created.</p>
            </li>
            <li>
               <p>
                  <code>InProgress</code>, which indicates that Secrets Manager is in the process of creating the replica.</p>
            </li>
            <li>
               <p>
                  <code>InSync</code>, which indicates that the replica was created.</p>
            </li>
         </ul>")
    @as("ReplicationStatus")
    replicationStatus: option<replicationStatusListType>,
    @ocaml.doc(
      "<p>The Region the secret is in. If a secret is replicated to other Regions, the replicas are listed in <code>ReplicationStatus</code>. </p>"
    )
    @as("PrimaryRegion")
    primaryRegion: option<regionType>,
    @ocaml.doc("<p>The date the secret was created.</p>") @as("CreatedDate")
    createdDate: option<timestampType>,
    @ocaml.doc("<p>The name of the service that created this secret.</p>") @as("OwningService")
    owningService: option<owningServiceType>,
    @ocaml.doc("<p>A list of the versions of the secret that have staging labels attached.
      Versions that don't have staging labels are considered deprecated and Secrets Manager 
      can delete them.</p>
         <p>Secrets Manager uses staging labels to indicate the status of a secret version during rotation. The three 
    staging labels for rotation are: </p>
         <ul>
            <li>
               <p>
                  <code>AWSCURRENT</code>, which indicates the current version of the secret.</p>
            </li>
            <li>
               <p>
                  <code>AWSPENDING</code>, which indicates the version of the secret that contains new 
        secret information that will become the next current version when rotation finishes.</p>
               <p>During  
          rotation, Secrets Manager creates an <code>AWSPENDING</code> version ID before creating the new secret version. 
        To check if a secret version exists, call <a>GetSecretValue</a>.</p>
            </li>
            <li>
               <p>
                  <code>AWSPREVIOUS</code>, which indicates the previous current version of the secret. 
      You can use this as the <i>last known good</i> version.</p>
            </li>
         </ul>
         <p>For more information about rotation and staging labels, see <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html\">How rotation works</a>.</p>")
    @as("VersionIdsToStages")
    versionIdsToStages: option<secretVersionsToStagesMapType>,
    @ocaml.doc("<p>The list of tags attached to the secret. To add tags to a
      secret, use <a>TagResource</a>. To remove tags, use <a>UntagResource</a>.</p>")
    @as("Tags")
    tags: option<tagListType>,
    @ocaml.doc("<p>The date the secret is scheduled for deletion. If it is not scheduled for deletion, this 
      field is omitted. When you delete a secret, Secrets Manager requires a 
      recovery window of at least 7 days before deleting the secret. Some time after the deleted date, 
      Secrets Manager deletes the secret, including all of its versions.</p>
         <p>If a secret is scheduled for deletion, then its details, including the encrypted secret
      value, is not accessible. To cancel a scheduled deletion and restore access to the secret, use <a>RestoreSecret</a>.</p>")
    @as("DeletedDate")
    deletedDate: option<deletedDateType>,
    @ocaml.doc(
      "<p>The last date that the secret value was retrieved. This value does not include the time. This field is omitted if the secret has never been retrieved.</p>"
    )
    @as("LastAccessedDate")
    lastAccessedDate: option<lastAccessedDateType>,
    @ocaml.doc("<p>The last date and time that this secret was modified in any way.</p>")
    @as("LastChangedDate")
    lastChangedDate: option<lastChangedDateType>,
    @ocaml.doc("<p>The last date and time that Secrets Manager rotated the secret. 
      If the secret isn't configured for rotation, Secrets Manager returns null.</p>")
    @as("LastRotatedDate")
    lastRotatedDate: option<lastRotatedDateType>,
    @ocaml.doc("<p>The rotation schedule and Lambda function for this secret. If the secret previously had rotation turned on, but 
      it is now turned off, this field shows the previous rotation schedule and rotation function. If the secret never had 
    rotation turned on, this field is omitted.</p>")
    @as("RotationRules")
    rotationRules: option<rotationRulesType>,
    @ocaml.doc("<p>The ARN of the Lambda function that Secrets Manager invokes to rotate the
      secret. </p>")
    @as("RotationLambdaARN")
    rotationLambdaARN: option<rotationLambdaARNType>,
    @ocaml.doc("<p>Specifies whether automatic rotation is turned on for this secret.</p>
         <p>To turn on rotation, use <a>RotateSecret</a>. To turn off
      rotation, use <a>CancelRotateSecret</a>.</p>")
    @as("RotationEnabled")
    rotationEnabled: option<rotationEnabledType>,
    @ocaml.doc("<p>The ARN of the KMS key that Secrets Manager uses to encrypt the secret value. If the secret is encrypted with 
      the Amazon Web Services managed key <code>aws/secretsmanager</code>, this field is omitted.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<kmsKeyIdType>,
    @ocaml.doc("<p>The description of the secret.</p>") @as("Description")
    description: option<descriptionType>,
    @ocaml.doc("<p>The name of the secret.</p>") @as("Name") name: option<secretNameType>,
    @ocaml.doc("<p>The ARN of the secret.</p>") @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new: request => t = "DescribeSecretCommand"
  let make = (~secretId, ()) => new({secretId: secretId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSecret = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies whether to overwrite a secret with the same name in the
      destination Region.</p>")
    @as("ForceOverwriteReplicaSecret")
    forceOverwriteReplicaSecret: option<booleanType>,
    @ocaml.doc("<p>A list of Regions and KMS keys to replicate secrets.</p>")
    @as("AddReplicaRegions")
    addReplicaRegions: option<addReplicaRegionListType>,
    @ocaml.doc("<p>A list of tags to attach to the secret. Each tag
      is a key and value pair of strings in a JSON text string, for example:</p>
         <p>
            <code>[{\"Key\":\"CostCenter\",\"Value\":\"12345\"},{\"Key\":\"environment\",\"Value\":\"production\"}]</code>
         </p>
         <p>Secrets Manager tag key names are case sensitive. A tag with the key \"ABC\" is a different tag
      from one with key \"abc\".</p>
         <p>If you check tags in permissions policies as part of your
      security strategy, then adding or removing a tag can change permissions. If the
      completion of this operation would result in you losing your permissions for
      this secret, then Secrets Manager blocks the operation and returns an <code>Access Denied</code>
      error. For more information, see <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#tag-secrets-abac\">Control 
        access to secrets using tags</a> and <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#auth-and-access_tags2\">Limit access to identities with tags that match secrets' tags</a>.</p>
         <p>For information about how to format a
      JSON parameter for the various command line tool environments, see <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json\">Using JSON for
        Parameters</a>. If your command-line tool or SDK requires quotation marks around the parameter, you should
      use single quotes to avoid confusion with the double quotes required in the JSON text.</p>
            <p>The following restrictions apply to tags:</p>
        <ul>
            <li>
               <p>Maximum number of tags per secret: 50</p>
            </li>
            <li>
               <p>Maximum key length: 127 Unicode characters in UTF-8</p>
            </li>
            <li>
               <p>Maximum value length: 255 Unicode characters in UTF-8</p>
            </li>
            <li>
               <p>Tag keys and values are case sensitive.</p>
            </li>
            <li>
               <p>Do not use the <code>aws:</code> prefix in your tag names or values because Amazon Web Services reserves it
            for Amazon Web Services use. You can't edit or delete tag names or values with this 
              prefix. Tags with this prefix do not count against your tags per secret limit.</p>
            </li>
            <li>
               <p>If you use your tagging schema across multiple services and resources,
              other services might have restrictions on allowed characters. Generally
              allowed characters: letters, spaces, and numbers representable in UTF-8, plus the
              following special characters: + - = . _ : / @.</p>
            </li>
         </ul>")
    @as("Tags")
    tags: option<tagListType>,
    @ocaml.doc("<p>The text data to encrypt and store in this new version of
      the secret. We recommend you use a JSON structure of key/value pairs for your secret value.</p>
         <p>Either <code>SecretString</code> or <code>SecretBinary</code> must have a value, but not
      both.</p>
         <p>If you create a secret by using the Secrets Manager console then Secrets Manager puts the protected
      secret text in only the <code>SecretString</code> parameter. The Secrets Manager console stores the
      information as a JSON structure of key/value pairs that a Lambda rotation function can parse.</p>")
    @as("SecretString")
    secretString: option<secretStringType>,
    @ocaml.doc("<p>The binary data to encrypt and store in the new version of
      the secret. We recommend that you store your binary data in a file and then pass the
      contents of the file as a parameter.</p>
         <p>Either <code>SecretString</code> or <code>SecretBinary</code> must have a value, but not
      both.</p>
         <p>This parameter is not available in the Secrets Manager console.</p>")
    @as("SecretBinary")
    secretBinary: option<secretBinaryType>,
    @ocaml.doc("<p>The ARN, key ID, or alias of the KMS key that Secrets Manager uses to
      encrypt the secret value in the secret.</p>
         <p>To use a KMS key in a different account, use the key ARN or the alias ARN.</p>
         <p>If you don't specify this value, then Secrets Manager uses the key <code>aws/secretsmanager</code>. 
      If that key doesn't yet exist, then Secrets Manager creates it for you automatically the first time it 
      encrypts the secret value.</p>
         <p>If the secret is in a different Amazon Web Services account from the credentials calling the API, then 
      you can't use <code>aws/secretsmanager</code> to encrypt the secret, and you must create 
      and use a customer managed KMS key. </p>")
    @as("KmsKeyId")
    kmsKeyId: option<kmsKeyIdType>,
    @ocaml.doc("<p>The description of the secret.</p>") @as("Description")
    description: option<descriptionType>,
    @ocaml.doc("<p>If you include <code>SecretString</code> or <code>SecretBinary</code>, then 
      Secrets Manager creates an initial version for the secret, and this parameter specifies the unique
      identifier for the new version. </p>
         <note>
            <p>If you use the Amazon Web Services CLI or one of the Amazon Web Services SDKs to call this operation, then you can
        leave this parameter empty. The CLI or SDK generates a random UUID for you and includes it
        as the value for this parameter in the request. If you don't use the SDK and instead
        generate a raw HTTP request to the Secrets Manager service endpoint, then you must generate a
        <code>ClientRequestToken</code> yourself for the new version and include the value in the
        request.</p>
         </note>
         <p>This value helps ensure idempotency. Secrets Manager uses this value to prevent the accidental
      creation of duplicate versions if there are failures and retries during a rotation. We
      recommend that you generate a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID-type</a> value to
      ensure uniqueness of your versions within the specified secret. </p>
         <ul>
            <li>
               <p>If the <code>ClientRequestToken</code> value isn't already associated with a version
          of the secret then a new version of the secret is created. </p>
            </li>
            <li>
               <p>If a version with this value already exists and the version <code>SecretString</code>
          and <code>SecretBinary</code> values are the same as those in the request, then the
          request is ignored.</p>
            </li>
            <li>
               <p>If a version with this value already exists and that version's
          <code>SecretString</code> and <code>SecretBinary</code> values are different from those
          in the request, then the request fails because you cannot modify an existing version.
          Instead, use <a>PutSecretValue</a> to create a new version.</p>
            </li>
         </ul>
         <p>This value becomes the <code>VersionId</code> of the new version.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenType>,
    @ocaml.doc("<p>The name of the new secret.</p>
         <p>The secret name can contain ASCII letters, numbers, and the following characters:
      /_+=.@-</p>
    
         <p>Do not end your secret name with a hyphen followed by six characters. If you do so, you
        risk confusion and unexpected results when searching for a secret by partial ARN. Secrets Manager
        automatically adds a hyphen and six random characters after the secret name at the end of the ARN.</p>")
    @as("Name")
    name: nameType,
  }
  type response = {
    @ocaml.doc("<p>A list of the replicas of this secret and their status:</p>
         <ul>
            <li>
               <p>
                  <code>Failed</code>, which indicates that the replica was not created.</p>
            </li>
            <li>
               <p>
                  <code>InProgress</code>, which indicates that Secrets Manager is in the process of creating the replica.</p>
            </li>
            <li>
               <p>
                  <code>InSync</code>, which indicates that the replica was created.</p>
            </li>
         </ul>")
    @as("ReplicationStatus")
    replicationStatus: option<replicationStatusListType>,
    @ocaml.doc("<p>The unique identifier associated with the version of the new secret.</p>")
    @as("VersionId")
    versionId: option<secretVersionIdType>,
    @ocaml.doc("<p>The name of the new secret.</p>") @as("Name") name: option<secretNameType>,
    @ocaml.doc("<p>The ARN of the new secret. The ARN includes the name of the secret followed by six random 
      characters. This ensures that if you create a new secret with the same name as a deleted secret, 
      then users with access to the old secret don't get access to the new secret because the ARNs 
      are different.</p>")
    @as("ARN")
    arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new external new: request => t = "CreateSecretCommand"
  let make = (
    ~name,
    ~forceOverwriteReplicaSecret=?,
    ~addReplicaRegions=?,
    ~tags=?,
    ~secretString=?,
    ~secretBinary=?,
    ~kmsKeyId=?,
    ~description=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      forceOverwriteReplicaSecret: forceOverwriteReplicaSecret,
      addReplicaRegions: addReplicaRegions,
      tags: tags,
      secretString: secretString,
      secretBinary: secretBinary,
      kmsKeyId: kmsKeyId,
      description: description,
      clientRequestToken: clientRequestToken,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSecretVersionIds = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies whether to include versions of secrets that don't have any
      staging labels attached to them. Versions without staging labels are considered deprecated and are subject to
      deletion by Secrets Manager.</p>")
    @as("IncludeDeprecated")
    includeDeprecated: option<booleanType>,
    @ocaml.doc("<p>A token that indicates where the output should continue from, if a previous call 
      did not show all results. To get the next results, call <code>ListSecretVersionIds</code> again with 
      this value.</p>")
    @as("NextToken")
    nextToken: option<nextTokenType>,
    @ocaml.doc("<p>The number of results to include in the response.</p>
         <p>If there are more results available, in the response, Secrets Manager includes <code>NextToken</code>. 
      To get the next results, call <code>ListSecretVersionIds</code> again with the value from <code>NextToken</code>. </p>")
    @as("MaxResults")
    maxResults: option<maxResultsType>,
    @ocaml.doc("<p>The ARN or name of the secret whose versions you want to list.</p>
         <p>For an ARN, we recommend that you specify a complete ARN rather 
      than a partial ARN.</p>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>The name of the secret.</p>") @as("Name") name: option<secretNameType>,
    @ocaml.doc("<p>The ARN of the secret.</p>") @as("ARN") arn: option<secretARNType>,
    @ocaml.doc("<p>Secrets Manager includes this value if there's more output available than what is included 
      in the current response. This can occur even when the response includes no values at all, 
      such as when you ask for a filtered view of a long list. To get the next results, 
      call <code>ListSecretVersionIds</code> again with this value. </p>")
    @as("NextToken")
    nextToken: option<nextTokenType>,
    @ocaml.doc("<p>A list of the versions of the secret.</p>") @as("Versions")
    versions: option<secretVersionsListType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new
  external new: request => t = "ListSecretVersionIdsCommand"
  let make = (~secretId, ~includeDeprecated=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      includeDeprecated: includeDeprecated,
      nextToken: nextToken,
      maxResults: maxResults,
      secretId: secretId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSecrets = {
  type t
  type request = {
    @ocaml.doc("<p>Lists secrets in the requested order. </p>") @as("SortOrder")
    sortOrder: option<sortOrderType>,
    @ocaml.doc("<p>The filters to apply to the list of secrets.</p>") @as("Filters")
    filters: option<filtersListType>,
    @ocaml.doc("<p>A token that indicates where the output should continue from, if a 
      previous call did not show all results. To get the next results, call <code>ListSecrets</code> again 
      with this value.</p>")
    @as("NextToken")
    nextToken: option<nextTokenType>,
    @ocaml.doc("<p>The number of results to include in the response.</p> 
         <p>If there are more results available, in the response, Secrets Manager includes <code>NextToken</code>. 
      To get the next results, call <code>ListSecrets</code> again with the value from 
      <code>NextToken</code>.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsType>,
  }
  type response = {
    @ocaml.doc("<p>Secrets Manager includes this value if  
      there's more output available than what is included in the current response. This can 
      occur even when the response includes no values at all, such as when you ask for a filtered view 
      of a long list. To get the next results, call <code>ListSecrets</code> again 
      with this value.</p>")
    @as("NextToken")
    nextToken: option<nextTokenType>,
    @ocaml.doc("<p>A list of the secrets in the account.</p>") @as("SecretList")
    secretList: option<secretListType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new external new: request => t = "ListSecretsCommand"
  let make = (~sortOrder=?, ~filters=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({sortOrder: sortOrder, filters: filters, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
