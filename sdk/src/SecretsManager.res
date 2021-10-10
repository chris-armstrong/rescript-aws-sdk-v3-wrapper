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
  @ocaml.doc("<p>Specifies the number of days between automatic scheduled rotations of the secret.</p>
         <p>Secrets Manager schedules the next rotation when the previous 
    one is complete. Secrets Manager schedules the date by adding the rotation interval (number of days) to the 
    actual date of the last rotation. The service chooses the hour within that 24-hour date window 
    randomly. The minute is also chosen somewhat randomly, but weighted towards the top of the hour 
    and influenced by a variety of factors that help distribute load.</p>")
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
  "<p>(Optional) Custom type consisting of a <code>Region</code> (required) and the <code>KmsKeyId</code> which can be an <code>ARN</code>, <code>Key ID</code>, or <code>Alias</code>.</p>"
)
type replicaRegionType = {
  @ocaml.doc("<p>Can be an <code>ARN</code>, <code>Key ID</code>, or <code>Alias</code>. </p>")
  @as("KmsKeyId")
  kmsKeyId: option<kmsKeyIdType>,
  @ocaml.doc("<p>Describes a single instance of Region objects.</p>") @as("Region")
  region: option<regionType>,
}
type removeReplicaRegionListType = array<regionType>
type filterValuesStringList = array<filterValueStringType>
type validationErrorsType = array<validationErrorsEntry>
type tagListType = array<tag>
type secretVersionsToStagesMapType = Js.Dict.t<secretVersionStagesType>
@ocaml.doc("<p>A structure that contains information about one version of a secret.</p>")
type secretVersionsListEntry = {
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
@ocaml.doc("<p>Allows you to add filters when you use the search function in Secrets Manager.</p>")
type filter = {
  @ocaml.doc("<p>Filters your list of secrets by a specific value.</p>
         <p>You can prefix your search value with an exclamation mark (<code>!</code>) in order to perform negation filters. </p>")
  @as("Values")
  values: option<filterValuesStringList>,
  @ocaml.doc("<p>Filters your list of secrets by a specific key.</p>") @as("Key")
  key: option<filterNameStringType>,
}
type addReplicaRegionListType = array<replicaRegionType>
type secretVersionsListType = array<secretVersionsListEntry>
@ocaml.doc("<p>A structure that contains the details about a secret. It does not include the encrypted
        <code>SecretString</code> and <code>SecretBinary</code> values. To get those values, use the
        <a>GetSecretValue</a> operation.</p>")
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
      secret, use <a>TagResource</a>. To remove tags, use <a>UntagResource</a>.</p>")
  @as("Tags")
  tags: option<tagListType>,
  @ocaml.doc("<p>The date and time the deletion of the secret occurred. Not present on active secrets. The
      secret can be recovered until the number of days in the recovery window has passed, as
      specified in the <code>RecoveryWindowInDays</code> parameter of the <a>DeleteSecret</a> operation.</p>")
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
  @ocaml.doc("<p>The ARN of an AWS Lambda function invoked by Secrets Manager to rotate and expire the
      secret either automatically per the schedule or manually by a call to <a>RotateSecret</a>.</p>")
  @as("RotationLambdaARN")
  rotationLambdaARN: option<rotationLambdaARNType>,
  @ocaml.doc("<p>Indicates whether automatic, scheduled rotation is enabled for this secret.</p>")
  @as("RotationEnabled")
  rotationEnabled: option<rotationEnabledType>,
  @ocaml.doc("<p>The ARN or alias of the AWS KMS customer master key (CMK) used to encrypt the
        <code>SecretString</code> and <code>SecretBinary</code> fields in each version of the
      secret. If you don't provide a key, then Secrets Manager defaults to encrypting the secret fields with
      the default KMS CMK, the key named <code>awssecretsmanager</code>, for this account.</p>")
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
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the secret.</p>
         <p>For more information about ARNs in Secrets Manager, see <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#iam-resources\">Policy Resources</a> in the
    <i>AWS Secrets Manager User Guide</i>.</p>")
  @as("ARN")
  arn: option<secretARNType>,
}
type filtersListType = array<filter>
type secretListType = array<secretListEntry>
@ocaml.doc("<fullname>AWS Secrets Manager API Reference</fullname>
         <p>AWS Secrets Manager provides a service to enable you to store, manage, and retrieve, secrets.</p>

         <p>This guide provides descriptions of the Secrets Manager API. For more information about using this
      service, see the <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/introduction.html\">AWS Secrets Manager User Guide</a>.</p>

         <p>
            <b>API Version</b>
         </p>

         <p>This version of the Secrets Manager API Reference documents the Secrets Manager API version 2017-10-17.</p>
         <note>
            <p>As an alternative to using the API, you can use one of the AWS SDKs, which consist of
        libraries and sample code for various programming languages and platforms such as Java,
        Ruby, .NET, iOS, and Android. The SDKs provide a convenient way to create programmatic
        access to AWS Secrets Manager. For example, the SDKs provide cryptographically signing requests,
        managing errors, and retrying requests automatically. For more information about the AWS
        SDKs, including downloading and installing them, see <a href=\"http://aws.amazon.com/tools/\">Tools for Amazon Web Services</a>.</p>
         </note>
         <p>We recommend you use the AWS SDKs to make programmatic API calls to Secrets Manager. However, you
      also can use the Secrets Manager HTTP Query API to make direct calls to the Secrets Manager web service. To learn
      more about the Secrets Manager HTTP Query API, see <a href=\"https://docs.aws.amazon.com/secretsmanager/latest/userguide/query-requests.html\">Making Query Requests</a> in the
        <i>AWS Secrets Manager User Guide</i>. </p>
         <p>Secrets Manager API supports GET and POST requests for all actions, and doesn't require you to use
      GET for some actions and POST for others. However, GET requests are subject to the limitation
      size of a URL. Therefore, for operations that require larger sizes, use a POST request.</p>

      

      
      
      

         <p>
            <b>Support and Feedback for AWS Secrets Manager</b>
         </p>

         <p>We welcome your feedback. Send your comments to <a href=\"mailto:awssecretsmanager-feedback@amazon.com\">awssecretsmanager-feedback@amazon.com</a>, or post your feedback and questions in the <a href=\"http://forums.aws.amazon.com/forum.jspa?forumID=296\">AWS Secrets Manager Discussion Forum</a>. For more
      information about the AWS Discussion Forums, see <a href=\"http://forums.aws.amazon.com/help.jspa\">Forums
        Help</a>.</p>

         <p>
            <b>How examples are presented</b>
         </p>

         <p>The JSON that AWS Secrets Manager expects as your request parameters and the service returns as a
      response to HTTP query requests contain single, long strings without line breaks or white
      space formatting. The JSON shown in the examples displays the code formatted with both line
      breaks and white space to improve readability. When example input parameters can also cause
      long strings extending beyond the screen, you can insert line breaks to enhance readability.
      You should always submit the input as a single JSON text string.</p>


         <p>
            <b>Logging API Requests</b>
         </p>
         <p>AWS Secrets Manager supports AWS CloudTrail, a service that records AWS API calls for your AWS
      account and delivers log files to an Amazon S3 bucket. By using information that's collected
      by AWS CloudTrail, you can determine the requests successfully made to Secrets Manager, who made the
      request, when it was made, and so on. For more about AWS Secrets Manager and support for AWS
      CloudTrail, see <a href=\"http://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring.html#monitoring_cloudtrail\">Logging
        AWS Secrets Manager Events with AWS CloudTrail</a> in the <i>AWS Secrets Manager User Guide</i>.
      To learn more about CloudTrail, including enabling it and find your log files, see the <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html\">AWS CloudTrail User Guide</a>.</p>")
module UpdateSecretVersionStage = {
  type t
  type request = {
    @ocaml.doc("<p>(Optional) The secret version ID that you want to add the staging label. If you want to
      remove a label from a version, then do not specify this parameter.</p>
         <p>If the staging label is already attached to a different version of the secret, then you
      must also specify the <code>RemoveFromVersionId</code> parameter. </p>")
    @as("MoveToVersionId")
    moveToVersionId: option<secretVersionIdType>,
    @ocaml.doc("<p>Specifies the secret version ID of the version that the staging label is to be removed
      from. If the staging label you are trying to attach to one version is already attached to a
      different version, then you must include this parameter and specify the version that the label
      is to be removed from. If the label is attached and you either do not specify this parameter,
      or the version ID does not match, then the operation fails.</p>")
    @as("RemoveFromVersionId")
    removeFromVersionId: option<secretVersionIdType>,
    @ocaml.doc("<p>The staging label to add to this version.</p>") @as("VersionStage")
    versionStage: secretVersionStageType,
    @ocaml.doc("<p>Specifies the secret with the version with the list of staging labels you want to modify.
      You can specify either the Amazon Resource Name (ARN) or the friendly name of the
      secret.</p> 
         <note>
            <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can 
        specify a partial ARN too—for example, if you don’t include the final hyphen and six random 
        characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN 
        match can work as long as it uniquely matches only one secret. However, if your secret has a 
        name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six 
        characters to the ARN) and you try to use that as a partial ARN, then those characters cause 
        Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected 
        results. To avoid this situation, we recommend that you don’t create secret names ending 
        with a hyphen followed by six characters.</p>
            <p>If you specify an incomplete ARN without the random suffix, and instead provide the 
        'friendly name', you <i>must</i> not include the random suffix. If you do include the random suffix added by Secrets Manager, 
        you receive either a <i>ResourceNotFoundException</i> or an <i>AccessDeniedException</i> error, depending on your permissions.</p>
        </note>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>The friendly name of the secret with the modified staging label.</p>")
    @as("Name")
    name: option<secretNameType>,
    @ocaml.doc("<p>The ARN of the secret with the modified staging label.</p>") @as("ARN")
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
    @ocaml.doc("<p>(Optional) Specifies updated text data that you want to encrypt and store in this new
      version of the secret. Either <code>SecretBinary</code> or <code>SecretString</code> must have
      a value, but not both. They cannot both be empty.</p>
         <p>If you create this secret by using the Secrets Manager console then Secrets Manager puts the
      protected secret text in only the <code>SecretString</code> parameter. The Secrets Manager console
      stores the information as a JSON structure of key/value pairs that the default Lambda rotation
      function knows how to parse.</p>
         <p>For storing multiple values, we recommend that you use a JSON text string argument and
      specify key/value pairs. For information on how to format a JSON parameter for the various
      command line tool environments, see <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json\">Using JSON for
        Parameters</a> in the <i>AWS CLI User Guide</i>. For example:</p>
         <p>
            <code>[{\"username\":\"bob\"},{\"password\":\"abc123xyz456\"}]</code>
         </p>
         <p>If your command-line tool or SDK requires quotation marks around the parameter, you should
      use single quotes to avoid confusion with the double quotes required in the JSON text. You can
      also 'escape' the double quote character in the embedded JSON text by prefacing each with a
      backslash. For example, the following string is surrounded by double-quotes. All of the
      embedded double quotes are escaped:</p>
         <p>
            <code>\"[{\\\"username\\\":\\\"bob\\\"},{\\\"password\\\":\\\"abc123xyz456\\\"}]\"</code>
         </p>")
    @as("SecretString")
    secretString: option<secretStringType>,
    @ocaml.doc("<p>(Optional) Specifies updated binary data that you want to encrypt and store in the new
      version of the secret. To use this parameter in the command-line tools, we recommend that you
      store your binary data in a file and then use the appropriate technique for your tool to pass
      the contents of the file as a parameter. Either <code>SecretBinary</code> or
        <code>SecretString</code> must have a value, but not both. They cannot both be empty.</p>
         <p>This parameter is not accessible using the Secrets Manager console.</p>")
    @as("SecretBinary")
    secretBinary: option<secretBinaryType>,
    @ocaml.doc("<p>(Optional) Specifies an updated ARN or alias of the AWS KMS customer master key (CMK) to be
      used to encrypt the protected text in new versions of this secret.</p>
         <important>
            <p>You can only use the account's default CMK to encrypt and decrypt if you call this
        operation using credentials from the same account that owns the secret. If the secret is in
        a different account, then you must create a custom CMK and provide the ARN of that CMK in
        this field. The user making the call must have permissions to both the secret and the CMK in
        their respective accounts.</p>
         </important>")
    @as("KmsKeyId")
    kmsKeyId: option<kmsKeyIdType>,
    @ocaml.doc("<p>(Optional) Specifies an updated user-provided description of the secret.</p>")
    @as("Description")
    description: option<descriptionType>,
    @ocaml.doc("<p>(Optional) If you want to add a new version to the secret, this parameter specifies a
      unique identifier for the new version that helps ensure idempotency. </p>
         <p>If you use the AWS CLI or one of the AWS SDK to call this operation, then you can
      leave this parameter empty. The CLI or SDK generates a random UUID for you and includes that
      in the request. If you don't use the SDK and instead generate a raw HTTP request to the Secrets Manager
      service endpoint, then you must generate a <code>ClientRequestToken</code> yourself for new
      versions and include that value in the request.</p>
         <p>You typically only need to interact with this value if you implement your own retry logic
      and want to ensure that a given secret is not created twice. We recommend that you generate a
        <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID-type</a>
      value to ensure uniqueness within the specified secret. </p>
         <p>Secrets Manager uses this value to prevent the accidental creation of duplicate versions if
      there are failures and retries during the Lambda rotation function's processing.</p>
         <ul>
            <li>
               <p>If the <code>ClientRequestToken</code> value isn't already associated with a version
          of the secret then a new version of the secret is created. </p>
            </li>
            <li>
               <p>If a version with this value already exists and that version's
            <code>SecretString</code> and <code>SecretBinary</code> values are the same as those in
          the request then the request is ignored (the operation is idempotent). </p>
            </li>
            <li>
               <p>If a version with this value already exists and that version's
            <code>SecretString</code> and <code>SecretBinary</code> values are different from the
          request then an error occurs because you cannot modify an existing secret value.</p>
            </li>
         </ul>
         <p>This value becomes the <code>VersionId</code> of the new version.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenType>,
    @ocaml.doc("<p>Specifies the secret that you want to modify or to which you want to add a new version.
      You can specify either the Amazon Resource Name (ARN) or the friendly name of the
      secret.</p> 
         <note>
            <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can 
        specify a partial ARN too—for example, if you don’t include the final hyphen and six random 
        characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN 
        match can work as long as it uniquely matches only one secret. However, if your secret has a 
        name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six 
        characters to the ARN) and you try to use that as a partial ARN, then those characters cause 
        Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected 
        results. To avoid this situation, we recommend that you don’t create secret names ending 
        with a hyphen followed by six characters.</p>
            <p>If you specify an incomplete ARN without the random suffix, and instead provide the 
        'friendly name', you <i>must</i> not include the random suffix. If you do include the random suffix added by Secrets Manager, 
        you receive either a <i>ResourceNotFoundException</i> or an <i>AccessDeniedException</i> error, depending on your permissions.</p>
        </note>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>If a new version of the secret was created by this operation, then <code>VersionId</code>
      contains the unique identifier of the new version.</p>")
    @as("VersionId")
    versionId: option<secretVersionIdType>,
    @ocaml.doc("<p>The friendly name of the secret that was updated.</p>") @as("Name")
    name: option<secretNameType>,
    @ocaml.doc("<p>The ARN of the secret that was updated.</p> 
         <note>
            <p>Secrets Manager automatically adds several random characters to the name at the end of the ARN when
        you initially create a secret. This affects only the ARN and not the actual friendly name. 
        This ensures that if you create a new secret with the same name as an old secret that you 
        previously deleted, then users with access to the old secret <i>don't</i> 
        automatically get access to the new secret because the ARNs are different.</p>
         </note>")
    @as("ARN")
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
    @ocaml.doc(
      "<p>Response to <code>StopReplicationToReplica</code> of a secret, based on the <code>SecretId</code>.</p>"
    )
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc(
      "<p>Response <code>StopReplicationToReplica</code> of a secret, based on the <code>ARN,</code>.</p>"
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
    @ocaml.doc("<p>Specifies the secret that you want to restore from a previously scheduled deletion. You
      can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.</p>
         <note>
            <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can 
        specify a partial ARN too—for example, if you don’t include the final hyphen and six random 
        characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN 
        match can work as long as it uniquely matches only one secret. However, if your secret has a 
        name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six 
        characters to the ARN) and you try to use that as a partial ARN, then those characters cause 
        Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected 
        results. To avoid this situation, we recommend that you don’t create secret names ending 
        with a hyphen followed by six characters.</p>
            <p>If you specify an incomplete ARN without the random suffix, and instead provide the 
        'friendly name', you <i>must</i> not include the random suffix. If you do include the random suffix added by Secrets Manager, 
        you receive either a <i>ResourceNotFoundException</i> or an <i>AccessDeniedException</i> error, depending on your permissions.</p>
        </note>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>The friendly name of the secret that was restored.</p>") @as("Name")
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
    @ocaml.doc("<p>(Optional) If you set the parameter, <code>BlockPublicPolicy</code> to true, then you
      block resource-based policies that allow broad access to the secret.</p>")
    @as("BlockPublicPolicy")
    blockPublicPolicy: option<booleanType>,
    @ocaml.doc("<p>A JSON-formatted string constructed according to the grammar and syntax for an AWS
      resource-based policy. The policy in the string identifies who can access or manage this
      secret and its versions. For information on how to format a JSON parameter for the various
      command line tool environments, see <a href=\"http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json\">Using
        JSON for Parameters</a> in the <i>AWS CLI User Guide</i>.</p>")
    @as("ResourcePolicy")
    resourcePolicy: nonEmptyResourcePolicyType,
    @ocaml.doc("<p>Specifies the secret that you want to attach the resource-based policy. You can specify
      either the ARN or the friendly name of the secret.</p> 
         <note>
            <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can 
        specify a partial ARN too—for example, if you don’t include the final hyphen and six random 
        characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN 
        match can work as long as it uniquely matches only one secret. However, if your secret has a 
        name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six 
        characters to the ARN) and you try to use that as a partial ARN, then those characters cause 
        Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected 
        results. To avoid this situation, we recommend that you don’t create secret names ending 
        with a hyphen followed by six characters.</p>
            <p>If you specify an incomplete ARN without the random suffix, and instead provide the 
        'friendly name', you <i>must</i> not include the random suffix. If you do include the random suffix added by Secrets Manager, 
        you receive either a <i>ResourceNotFoundException</i> or an <i>AccessDeniedException</i> error, depending on your permissions.</p>
        </note>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>The friendly name of the secret retrieved by the resource-based policy.</p>")
    @as("Name")
    name: option<nameType>,
    @ocaml.doc("<p>The ARN of the secret retrieved by the resource-based policy.</p>") @as("ARN")
    arn: option<secretARNType>,
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
    @ocaml.doc("<p>Specifies the secret that you want to retrieve the attached resource-based policy for. You
      can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.</p>
         <note>
            <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can 
        specify a partial ARN too—for example, if you don’t include the final hyphen and six random 
        characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN 
        match can work as long as it uniquely matches only one secret. However, if your secret has a 
        name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six 
        characters to the ARN) and you try to use that as a partial ARN, then those characters cause 
        Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected 
        results. To avoid this situation, we recommend that you don’t create secret names ending 
        with a hyphen followed by six characters.</p>
            <p>If you specify an incomplete ARN without the random suffix, and instead provide the 
        'friendly name', you <i>must</i> not include the random suffix. If you do include the random suffix added by Secrets Manager, 
        you receive either a <i>ResourceNotFoundException</i> or an <i>AccessDeniedException</i> error, depending on your permissions.</p>
        </note>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>A JSON-formatted string that describes the permissions that are associated with the
      attached secret. These permissions are combined with any permissions that are associated with
      the user or role that attempts to access this secret. The combined permissions specify who can
      access the secret and what actions they can perform. For more information, see <a href=\"http://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html\">Authentication and Access Control for
        AWS Secrets Manager</a> in the <i>AWS Secrets Manager User Guide</i>.</p>")
    @as("ResourcePolicy")
    resourcePolicy: option<nonEmptyResourcePolicyType>,
    @ocaml.doc(
      "<p>The friendly name of the secret that the resource-based policy was retrieved for.</p>"
    )
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
    @ocaml.doc("<p>A boolean value that specifies whether the generated password must include at least one of
      every allowed character type. The default value is <code>True</code> and the operation
      requires at least one of every character type.</p>")
    @as("RequireEachIncludedType")
    requireEachIncludedType: option<requireEachIncludedTypeType>,
    @ocaml.doc("<p>Specifies that the generated password can include the space character. The default if you
      do not include this switch parameter is that the space character is not included.</p>")
    @as("IncludeSpace")
    includeSpace: option<includeSpaceType>,
    @ocaml.doc("<p>Specifies that the generated password should not include lowercase letters. The default if
      you do not include this switch parameter is that lowercase letters can be included.</p>")
    @as("ExcludeLowercase")
    excludeLowercase: option<excludeLowercaseType>,
    @ocaml.doc("<p>Specifies that the generated password should not include uppercase letters. The default if
      you do not include this switch parameter is that uppercase letters can be included.</p>")
    @as("ExcludeUppercase")
    excludeUppercase: option<excludeUppercaseType>,
    @ocaml.doc("<p>Specifies that the generated password should not include punctuation characters. The
      default if you do not include this switch parameter is that punctuation characters can be
      included.</p>
         <p>The following are the punctuation characters that <i>can</i> be included in
      the generated password if you don't explicitly exclude them with
        <code>ExcludeCharacters</code> or <code>ExcludePunctuation</code>:</p>
         <p>
            <code>! \" # $ % & ' ( ) * + , - . / : ; < = > ? @ [ \\ ] ^ _ ` { | }
      ~</code>
         </p>")
    @as("ExcludePunctuation")
    excludePunctuation: option<excludePunctuationType>,
    @ocaml.doc("<p>Specifies that the generated password should not include digits. The default if you do not
      include this switch parameter is that digits can be included.</p>")
    @as("ExcludeNumbers")
    excludeNumbers: option<excludeNumbersType>,
    @ocaml.doc("<p>A string that includes characters that should not be included in the generated password.
      The default is that all characters from the included sets can be used.</p>")
    @as("ExcludeCharacters")
    excludeCharacters: option<excludeCharactersType>,
    @ocaml.doc("<p>The desired length of the generated password. The default value if you do not include this
      parameter is 32 characters.</p>")
    @as("PasswordLength")
    passwordLength: option<passwordLengthType>,
  }
  type response = {
    @ocaml.doc("<p>A string with the generated password.</p>") @as("RandomPassword")
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
    @ocaml.doc("<p>(Optional) Specifies that the secret is to be deleted without any recovery window. You
      can't use both this parameter and the <code>RecoveryWindowInDays</code> parameter in the same
      API call.</p>
         <p>An asynchronous background process performs the actual deletion, so there can be a short
      delay before the operation completes. If you write code to delete and then immediately
      recreate a secret with the same name, ensure that your code includes appropriate back off and
      retry logic.</p>
         <important>
            <p>Use this parameter with caution. This parameter causes the operation to skip the normal
        waiting period before the permanent deletion that AWS would normally impose with the
          <code>RecoveryWindowInDays</code> parameter. If you delete a secret with the
          <code>ForceDeleteWithouRecovery</code> parameter, then you have no opportunity to recover
        the secret. You lose the secret permanently.</p>
         </important>
         <important>
            <p>If you use this parameter and include a previously deleted or nonexistent secret, the
        operation does not return the error <code>ResourceNotFoundException</code> in order to
        correctly handle retries.</p>
         </important>")
    @as("ForceDeleteWithoutRecovery")
    forceDeleteWithoutRecovery: option<booleanType>,
    @ocaml.doc("<p>(Optional) Specifies the number of days that Secrets Manager waits before Secrets Manager can delete the
      secret. You can't use both this parameter and the <code>ForceDeleteWithoutRecovery</code>
      parameter in the same API call.</p>
         <p>This value can range from 7 to 30 days with a default value of 30.</p>")
    @as("RecoveryWindowInDays")
    recoveryWindowInDays: option<recoveryWindowInDaysType>,
    @ocaml.doc("<p>Specifies the secret to delete. You can specify either the Amazon Resource Name (ARN) or
      the friendly name of the secret.</p> 
         <note>
            <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can 
        specify a partial ARN too—for example, if you don’t include the final hyphen and six random 
        characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN 
        match can work as long as it uniquely matches only one secret. However, if your secret has a 
        name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six 
        characters to the ARN) and you try to use that as a partial ARN, then those characters cause 
        Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected 
        results. To avoid this situation, we recommend that you don’t create secret names ending 
        with a hyphen followed by six characters.</p>
            <p>If you specify an incomplete ARN without the random suffix, and instead provide the 
        'friendly name', you <i>must</i> not include the random suffix. If you do include the random suffix added by Secrets Manager, 
        you receive either a <i>ResourceNotFoundException</i> or an <i>AccessDeniedException</i> error, depending on your permissions.</p>
        </note>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>The date and time after which this secret can be deleted by Secrets Manager and can no longer be
      restored. This value is the date and time of the delete request plus the number of days
      specified in <code>RecoveryWindowInDays</code>.</p>")
    @as("DeletionDate")
    deletionDate: option<deletionDateType>,
    @ocaml.doc("<p>The friendly name of the secret currently scheduled for deletion.</p>")
    @as("Name")
    name: option<secretNameType>,
    @ocaml.doc("<p>The ARN of the secret that is now scheduled for deletion.</p>") @as("ARN")
    arn: option<secretARNType>,
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
    @ocaml.doc("<p>Specifies the secret that you want to delete the attached resource-based policy for. You
      can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.</p>
         <note>
            <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can 
        specify a partial ARN too—for example, if you don’t include the final hyphen and six random 
        characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN 
        match can work as long as it uniquely matches only one secret. However, if your secret has a 
        name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six 
        characters to the ARN) and you try to use that as a partial ARN, then those characters cause 
        Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected 
        results. To avoid this situation, we recommend that you don’t create secret names ending 
        with a hyphen followed by six characters.</p>
            <p>If you specify an incomplete ARN without the random suffix, and instead provide the 
        'friendly name', you <i>must</i> not include the random suffix. If you do include the random suffix added by Secrets Manager, 
        you receive either a <i>ResourceNotFoundException</i> or an <i>AccessDeniedException</i> error, depending on your permissions.</p>
        </note>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc(
      "<p>The friendly name of the secret that the resource-based policy was deleted for.</p>"
    )
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
    @ocaml.doc("<p>Specifies the secret to cancel a rotation request. You can specify either the Amazon
      Resource Name (ARN) or the friendly name of the secret.</p> 
         <note>
            <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can 
        specify a partial ARN too—for example, if you don’t include the final hyphen and six random 
        characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN 
        match can work as long as it uniquely matches only one secret. However, if your secret has a 
        name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six 
        characters to the ARN) and you try to use that as a partial ARN, then those characters cause 
        Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected 
        results. To avoid this situation, we recommend that you don’t create secret names ending 
        with a hyphen followed by six characters.</p>
            <p>If you specify an incomplete ARN without the random suffix, and instead provide the 
        'friendly name', you <i>must</i> not include the random suffix. If you do include the random suffix added by Secrets Manager, 
        you receive either a <i>ResourceNotFoundException</i> or an <i>AccessDeniedException</i> error, depending on your permissions.</p>
        </note>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier of the version of the secret created during the rotation. This
      version might not be complete, and should be evaluated for possible deletion. At the very
      least, you should remove the <code>VersionStage</code> value <code>AWSPENDING</code> to enable this
      version to be deleted. Failing to clean up a cancelled rotation can block you from
      successfully starting future rotations.</p>")
    @as("VersionId")
    versionId: option<secretVersionIdType>,
    @ocaml.doc("<p>The friendly name of the secret for which rotation was canceled.</p>")
    @as("Name")
    name: option<secretNameType>,
    @ocaml.doc("<p>The ARN of the secret for which rotation was canceled.</p>") @as("ARN")
    arn: option<secretARNType>,
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
         <p>This parameter to the API requires a JSON text string argument. For information on how to
      format a JSON parameter for the various command line tool environments, see <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json\">Using JSON for Parameters</a> in the <i>AWS CLI User Guide</i>.</p>")
    @as("TagKeys")
    tagKeys: tagKeyListType,
    @ocaml.doc("<p>The identifier for the secret that you want to remove tags from. You can specify either
      the Amazon Resource Name (ARN) or the friendly name of the secret.</p> 
         <note>
            <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can 
        specify a partial ARN too—for example, if you don’t include the final hyphen and six random 
        characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN 
        match can work as long as it uniquely matches only one secret. However, if your secret has a 
        name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six 
        characters to the ARN) and you try to use that as a partial ARN, then those characters cause 
        Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected 
        results. To avoid this situation, we recommend that you don’t create secret names ending 
        with a hyphen followed by six characters.</p>
            <p>If you specify an incomplete ARN without the random suffix, and instead provide the 
        'friendly name', you <i>must</i> not include the random suffix. If you do include the random suffix added by Secrets Manager, 
        you receive either a <i>ResourceNotFoundException</i> or an <i>AccessDeniedException</i> error, depending on your permissions.</p>
        </note>")
    @as("SecretId")
    secretId: secretIdType,
  }

  @module("@aws-sdk/client-secretsmanager") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~secretId, ()) => new({tagKeys: tagKeys, secretId: secretId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RotateSecret = {
  type t
  type request = {
    @ocaml.doc("<p>A structure that defines the rotation configuration for this secret.</p>")
    @as("RotationRules")
    rotationRules: option<rotationRulesType>,
    @ocaml.doc(
      "<p>(Optional) Specifies the ARN of the Lambda function that can rotate the secret.</p>"
    )
    @as("RotationLambdaARN")
    rotationLambdaARN: option<rotationLambdaARNType>,
    @ocaml.doc("<p>(Optional) Specifies a unique identifier for the new version of the secret that helps
      ensure idempotency. </p>
         <p>If you use the AWS CLI or one of the AWS SDK to call this operation, then you can
      leave this parameter empty. The CLI or SDK generates a random UUID for you and includes that
      in the request for this parameter. If you don't use the SDK and instead generate a raw HTTP
      request to the Secrets Manager service endpoint, then you must generate a
        <code>ClientRequestToken</code> yourself for new versions and include that value in the
      request.</p>
         <p>You only need to specify your own value if you implement your own retry logic and want to
      ensure that a given secret is not created twice. We recommend that you generate a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID-type</a> value to
      ensure uniqueness within the specified secret. </p>
         <p>Secrets Manager uses this value to prevent the accidental creation of duplicate versions if
      there are failures and retries during the function's processing. This value becomes the
        <code>VersionId</code> of the new version.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenType>,
    @ocaml.doc("<p>Specifies the secret that you want to rotate. You can specify either the Amazon Resource
      Name (ARN) or the friendly name of the secret.</p> 
         <note>
            <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can 
        specify a partial ARN too—for example, if you don’t include the final hyphen and six random 
        characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN 
        match can work as long as it uniquely matches only one secret. However, if your secret has a 
        name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six 
        characters to the ARN) and you try to use that as a partial ARN, then those characters cause 
        Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected 
        results. To avoid this situation, we recommend that you don’t create secret names ending 
        with a hyphen followed by six characters.</p>
            <p>If you specify an incomplete ARN without the random suffix, and instead provide the 
        'friendly name', you <i>must</i> not include the random suffix. If you do include the random suffix added by Secrets Manager, 
        you receive either a <i>ResourceNotFoundException</i> or an <i>AccessDeniedException</i> error, depending on your permissions.</p>
        </note>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>The ID of the new version of the secret created by the rotation started by this
      request.</p>")
    @as("VersionId")
    versionId: option<secretVersionIdType>,
    @ocaml.doc("<p>The friendly name of the secret.</p>") @as("Name") name: option<secretNameType>,
    @ocaml.doc("<p>The ARN of the secret.</p>") @as("ARN") arn: option<secretARNType>,
  }
  @module("@aws-sdk/client-secretsmanager") @new external new: request => t = "RotateSecretCommand"
  let make = (~secretId, ~rotationRules=?, ~rotationLambdaARN=?, ~clientRequestToken=?, ()) =>
    new({
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
    @ocaml.doc("<p>(Optional) Specifies a list of staging labels that are attached to this version of the
      secret. These staging labels are used to track the versions through the rotation process by
      the Lambda rotation function.</p>
         <p>A staging label must be unique to a single version of the secret. If you specify a staging
      label that's already associated with a different version of the same secret then that staging
      label is automatically removed from the other version and attached to this version.</p>
         <p>If you do not specify a value for <code>VersionStages</code> then Secrets Manager automatically
      moves the staging label <code>AWSCURRENT</code> to this new version.</p>")
    @as("VersionStages")
    versionStages: option<secretVersionStagesType>,
    @ocaml.doc("<p>(Optional) Specifies text data that you want to encrypt and store in this new version of
      the secret. Either <code>SecretString</code> or <code>SecretBinary</code> must have a value,
      but not both. They cannot both be empty.</p>
      
         <p>If you create this secret by using the Secrets Manager console then Secrets Manager puts the
      protected secret text in only the <code>SecretString</code> parameter. The Secrets Manager console
      stores the information as a JSON structure of key/value pairs that the default Lambda rotation
      function knows how to parse.</p>
         <p>For storing multiple values, we recommend that you use a JSON text string argument and
      specify key/value pairs. For information on how to format a JSON parameter for the various
      command line tool environments, see <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json\">Using JSON for
        Parameters</a> in the <i>AWS CLI User Guide</i>.</p>
         <p> For example:</p>
         <p>
            <code>[{\"username\":\"bob\"},{\"password\":\"abc123xyz456\"}]</code>
         </p>
         <p>If your command-line tool or SDK requires quotation marks around the parameter, you should
      use single quotes to avoid confusion with the double quotes required in the JSON text.</p>")
    @as("SecretString")
    secretString: option<secretStringType>,
    @ocaml.doc("<p>(Optional) Specifies binary data that you want to encrypt and store in the new version of
      the secret. To use this parameter in the command-line tools, we recommend that you store your
      binary data in a file and then use the appropriate technique for your tool to pass the
      contents of the file as a parameter. Either <code>SecretBinary</code> or
        <code>SecretString</code> must have a value, but not both. They cannot both be empty.</p>
      
         <p>This parameter is not accessible if the secret using the Secrets Manager console.</p>
         <p></p>")
    @as("SecretBinary")
    secretBinary: option<secretBinaryType>,
    @ocaml.doc("<p>(Optional) Specifies a unique identifier for the new version of the secret. </p>
         <note>
            <p>If you use the AWS CLI or one of the AWS SDK to call this operation, then you can
        leave this parameter empty. The CLI or SDK generates a random UUID for you and includes that
        in the request. If you don't use the SDK and instead generate a raw HTTP request to the
        Secrets Manager service endpoint, then you must generate a <code>ClientRequestToken</code> yourself
        for new versions and include that value in the request. </p>
         </note>
         <p>This value helps ensure idempotency. Secrets Manager uses this value to prevent the accidental
      creation of duplicate versions if there are failures and retries during the Lambda rotation
      function's processing. We recommend that you generate a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID-type</a> value to
      ensure uniqueness within the specified secret. </p>
         <ul>
            <li>
               <p>If the <code>ClientRequestToken</code> value isn't already associated with a version
          of the secret then a new version of the secret is created. </p>
            </li>
            <li>
               <p>If a version with this value already exists and that version's
            <code>SecretString</code> or <code>SecretBinary</code> values are the same as those in
          the request then the request is ignored (the operation is idempotent). </p>
            </li>
            <li>
               <p>If a version with this value already exists and the version of the
            <code>SecretString</code> and <code>SecretBinary</code> values are different from those
          in the request then the request fails because you cannot modify an existing secret
          version. You can only create new versions to store new secret values.</p>
            </li>
         </ul>
         <p>This value becomes the <code>VersionId</code> of the new version.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestTokenType>,
    @ocaml.doc("<p>Specifies the secret to which you want to add a new version. You can specify either the
      Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already
      exist.</p> 
         <note>
            <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can 
        specify a partial ARN too—for example, if you don’t include the final hyphen and six random 
        characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN 
        match can work as long as it uniquely matches only one secret. However, if your secret has a 
        name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six 
        characters to the ARN) and you try to use that as a partial ARN, then those characters cause 
        Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected 
        results. To avoid this situation, we recommend that you don’t create secret names ending 
        with a hyphen followed by six characters.</p>
            <p>If you specify an incomplete ARN without the random suffix, and instead provide the 
        'friendly name', you <i>must</i> not include the random suffix. If you do include the random suffix added by Secrets Manager, 
        you receive either a <i>ResourceNotFoundException</i> or an <i>AccessDeniedException</i> error, depending on your permissions.</p>
        </note>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>The list of staging labels that are currently attached to this version of the secret.
      Staging labels are used to track a version as it progresses through the secret rotation
      process.</p>")
    @as("VersionStages")
    versionStages: option<secretVersionStagesType>,
    @ocaml.doc(
      "<p>The unique identifier of the version of the secret you just created or updated.</p>"
    )
    @as("VersionId")
    versionId: option<secretVersionIdType>,
    @ocaml.doc(
      "<p>The friendly name of the secret for which you just created or updated a version.</p>"
    )
    @as("Name")
    name: option<secretNameType>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) for the secret for which you just created a version.</p>"
    )
    @as("ARN")
    arn: option<secretARNType>,
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
    @ocaml.doc("<p>Specifies the secret version that you want to retrieve by the staging label attached to
      the version.</p>
         <p>Staging labels are used to keep track of different versions during the rotation process.
      If you specify both this parameter and <code>VersionId</code>,  the two parameters must refer
      to the same secret version . If you don't specify either a <code>VersionStage</code> or
        <code>VersionId</code>, then the default is to perform the operation on the version with the
        <code>VersionStage</code> value of <code>AWSCURRENT</code>.</p>")
    @as("VersionStage")
    versionStage: option<secretVersionStageType>,
    @ocaml.doc("<p>Specifies the unique identifier of the version of the secret that you want to retrieve. If
      you specify both this parameter and <code>VersionStage</code>,  the two parameters must refer
      to the same secret version. If you don't specify either a <code>VersionStage</code> or
        <code>VersionId</code> then the default is to perform the operation on the version with the
        <code>VersionStage</code> value of <code>AWSCURRENT</code>.</p>
         <p>This value is typically a <a href=\"https://wikipedia.org/wiki/Universally_unique_identifier\">UUID-type</a> value with
      32 hexadecimal digits.</p>")
    @as("VersionId")
    versionId: option<secretVersionIdType>,
    @ocaml.doc("<p>Specifies the secret containing the version that you want to retrieve. You can specify
      either the Amazon Resource Name (ARN) or the friendly name of the secret.</p>
         <note>
            <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can 
        specify a partial ARN too—for example, if you don’t include the final hyphen and six random 
        characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN 
        match can work as long as it uniquely matches only one secret. However, if your secret has a 
        name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six 
        characters to the ARN) and you try to use that as a partial ARN, then those characters cause 
        Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected 
        results. To avoid this situation, we recommend that you don’t create secret names ending 
        with a hyphen followed by six characters.</p>
            <p>If you specify an incomplete ARN without the random suffix, and instead provide the 
        'friendly name', you <i>must</i> not include the random suffix. If you do include the random suffix added by Secrets Manager, 
        you receive either a <i>ResourceNotFoundException</i> or an <i>AccessDeniedException</i> error, depending on your permissions.</p>
        </note>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>The date and time that this version of the secret was created.</p>")
    @as("CreatedDate")
    createdDate: option<createdDateType>,
    @ocaml.doc("<p>A list of all of the staging labels currently attached to this version of the
      secret.</p>")
    @as("VersionStages")
    versionStages: option<secretVersionStagesType>,
    @ocaml.doc("<p>The decrypted part of the protected secret information that was originally provided as a
      string.</p>
         <p>If you create this secret by using the Secrets Manager console then only the
        <code>SecretString</code> parameter contains data. Secrets Manager stores the information as a
      JSON structure of key/value pairs that the Lambda rotation function knows how to parse.</p>
         <p>If you store custom information in the secret by using the <a>CreateSecret</a>,
        <a>UpdateSecret</a>, or <a>PutSecretValue</a> API operations instead
      of the Secrets Manager console, or by using the <b>Other secret type</b> in
      the console, then you must code your Lambda rotation function to parse and interpret those
      values.</p>")
    @as("SecretString")
    secretString: option<secretStringType>,
    @ocaml.doc("<p>The decrypted part of the protected secret information that was originally provided as
      binary data in the form of a byte array. The response parameter represents the binary data as
      a <a href=\"https://tools.ietf.org/html/rfc4648#section-4\">base64-encoded</a>
      string.</p>
         <p>This parameter is not used if the secret is created by the Secrets Manager console.</p>
         <p>If you store custom information in this field of the secret, then you must code your
      Lambda rotation function to parse and interpret whatever you store in the
        <code>SecretString</code> or <code>SecretBinary</code> fields.</p>")
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
    @ocaml.doc("<p>A JSON-formatted string constructed according to the grammar and syntax for an AWS
      resource-based policy. The policy in the string identifies who can access or manage this
      secret and its versions. For information on how to format a JSON parameter for the various
      command line tool environments, see <a href=\"http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json\">Using
        JSON for Parameters</a> in the <i>AWS CLI User Guide</i>.publi</p>")
    @as("ResourcePolicy")
    resourcePolicy: nonEmptyResourcePolicyType,
    @ocaml.doc("<p> (Optional) The identifier of the secret with the resource-based policy you want to
      validate. You can specify either the Amazon Resource Name (ARN) or the friendly name of the
      secret.</p> 
         <note>
            <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can 
        specify a partial ARN too—for example, if you don’t include the final hyphen and six random 
        characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN 
        match can work as long as it uniquely matches only one secret. However, if your secret has a 
        name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six 
        characters to the ARN) and you try to use that as a partial ARN, then those characters cause 
        Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected 
        results. To avoid this situation, we recommend that you don’t create secret names ending 
        with a hyphen followed by six characters.</p>
            <p>If you specify an incomplete ARN without the random suffix, and instead provide the 
        'friendly name', you <i>must</i> not include the random suffix. If you do include the random suffix added by Secrets Manager, 
        you receive either a <i>ResourceNotFoundException</i> or an <i>AccessDeniedException</i> error, depending on your permissions.</p>
        </note>")
    @as("SecretId")
    secretId: option<secretIdType>,
  }
  type response = {
    @ocaml.doc("<p>Returns an error message if your policy doesn't pass validatation.</p>")
    @as("ValidationErrors")
    validationErrors: option<validationErrorsType>,
    @ocaml.doc("<p>Returns a message stating that your Reource Policy passed validation. </p>")
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
    @ocaml.doc("<p>The tags to attach to the secret. Each element in the list consists of a <code>Key</code>
      and a <code>Value</code>.</p>
         <p>This parameter to the API requires a JSON text string argument. For information on how to
      format a JSON parameter for the various command line tool environments, see <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json\">Using JSON for Parameters</a> in the <i>AWS CLI User Guide</i>. For the
      AWS CLI, you can also use the syntax: <code>--Tags Key=\"Key1\",Value=\"Value1\"
        Key=\"Key2\",Value=\"Value2\"[,…]</code>
         </p>")
    @as("Tags")
    tags: tagListType,
    @ocaml.doc("<p>The identifier for the secret that you want to attach tags to. You can specify either the
      Amazon Resource Name (ARN) or the friendly name of the secret.</p> 
         <note>
            <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can 
        specify a partial ARN too—for example, if you don’t include the final hyphen and six random 
        characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN 
        match can work as long as it uniquely matches only one secret. However, if your secret has a 
        name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six 
        characters to the ARN) and you try to use that as a partial ARN, then those characters cause 
        Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected 
        results. To avoid this situation, we recommend that you don’t create secret names ending 
        with a hyphen followed by six characters.</p>
            <p>If you specify an incomplete ARN without the random suffix, and instead provide the 
        'friendly name', you <i>must</i> not include the random suffix. If you do include the random suffix added by Secrets Manager, 
        you receive either a <i>ResourceNotFoundException</i> or an <i>AccessDeniedException</i> error, depending on your permissions.</p>
        </note>")
    @as("SecretId")
    secretId: secretIdType,
  }

  @module("@aws-sdk/client-secretsmanager") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~secretId, ()) => new({tags: tags, secretId: secretId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ReplicateSecretToRegions = {
  type t
  type request = {
    @ocaml.doc("<p>(Optional) If set, Secrets Manager replication overwrites a secret with the same name in the
      destination region.</p>")
    @as("ForceOverwriteReplicaSecret")
    forceOverwriteReplicaSecret: option<booleanType>,
    @ocaml.doc("<p>Add Regions to replicate the secret.</p>") @as("AddReplicaRegions")
    addReplicaRegions: addReplicaRegionListType,
    @ocaml.doc("<p>Use the <code>Secret Id</code> to replicate a secret to regions.</p>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc(
      "<p>Describes the secret replication status as <code>PENDING</code>, <code>SUCCESS</code> or <code>FAIL</code>.</p>"
    )
    @as("ReplicationStatus")
    replicationStatus: option<replicationStatusListType>,
    @ocaml.doc("<p>Replicate a secret based on the <code>ReplicaRegionType</code>> consisting of a
      Region(required) and a KMSKeyId (optional) which can be the ARN, KeyID, or Alias. </p>")
    @as("ARN")
    arn: option<secretARNType>,
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
    @ocaml.doc("<p>Remove replication from specific Regions.</p>") @as("RemoveReplicaRegions")
    removeReplicaRegions: removeReplicaRegionListType,
    @ocaml.doc("<p>Remove a secret by <code>SecretId</code> from replica Regions.</p>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc(
      "<p>Describes the remaining replication status after you remove regions from the replication list.</p>"
    )
    @as("ReplicationStatus")
    replicationStatus: option<replicationStatusListType>,
    @ocaml.doc("<p>The secret <code>ARN</code> removed from replication regions.</p>") @as("ARN")
    arn: option<secretARNType>,
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
    @ocaml.doc("<p>The identifier of the secret whose details you want to retrieve. You can specify either
      the Amazon Resource Name (ARN) or the friendly name of the secret.</p> 
         <note>
            <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can 
        specify a partial ARN too—for example, if you don’t include the final hyphen and six random 
        characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN 
        match can work as long as it uniquely matches only one secret. However, if your secret has a 
        name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six 
        characters to the ARN) and you try to use that as a partial ARN, then those characters cause 
        Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected 
        results. To avoid this situation, we recommend that you don’t create secret names ending 
        with a hyphen followed by six characters.</p>
            <p>If you specify an incomplete ARN without the random suffix, and instead provide the 
        'friendly name', you <i>must</i> not include the random suffix. If you do include the random suffix added by Secrets Manager, 
        you receive either a <i>ResourceNotFoundException</i> or an <i>AccessDeniedException</i> error, depending on your permissions.</p>
        </note>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>Describes a list of replication status objects as <code>InProgress</code>, <code>Failed</code> or <code>InSync</code>.<code>P</code>
         </p>")
    @as("ReplicationStatus")
    replicationStatus: option<replicationStatusListType>,
    @ocaml.doc("<p>Specifies the primary region for secret replication. </p>") @as("PrimaryRegion")
    primaryRegion: option<regionType>,
    @ocaml.doc("<p>The date you created the secret.</p>") @as("CreatedDate")
    createdDate: option<timestampType>,
    @ocaml.doc("<p>Returns the name of the service that created this secret.</p>")
    @as("OwningService")
    owningService: option<owningServiceType>,
    @ocaml.doc("<p>A list of all of the currently assigned <code>VersionStage</code> staging labels and the
        <code>VersionId</code> that each is attached to. Staging labels are used to keep track of
      the different versions during the rotation process.</p>
         <note>
            <p>A version that does not have any staging labels attached is considered deprecated and
        subject to deletion. Such versions are not included in this list.</p>
         </note>")
    @as("VersionIdsToStages")
    versionIdsToStages: option<secretVersionsToStagesMapType>,
    @ocaml.doc("<p>The list of user-defined tags that are associated with the secret. To add tags to a
      secret, use <a>TagResource</a>. To remove tags, use <a>UntagResource</a>.</p>")
    @as("Tags")
    tags: option<tagListType>,
    @ocaml.doc("<p>This value exists if the secret is scheduled for deletion. Some time after the specified
      date and time, Secrets Manager deletes the secret and all of its versions.</p>
         <p>If a secret is scheduled for deletion, then its details, including the encrypted secret
      information, is not accessible. To cancel a scheduled deletion and restore access, use <a>RestoreSecret</a>.</p>")
    @as("DeletedDate")
    deletedDate: option<deletedDateType>,
    @ocaml.doc("<p>The last date that this secret was accessed. This value is truncated to midnight of the
      date and therefore shows only the date, not the time.</p>")
    @as("LastAccessedDate")
    lastAccessedDate: option<lastAccessedDateType>,
    @ocaml.doc("<p>The last date and time that this secret was modified in any way.</p>")
    @as("LastChangedDate")
    lastChangedDate: option<lastChangedDateType>,
    @ocaml.doc("<p>The last date and time that the rotation process for this secret was invoked.</p>
         <p>The most recent date and time that the Secrets Manager rotation process successfully
      completed. If the secret doesn't rotate, Secrets Manager returns a null value.</p>")
    @as("LastRotatedDate")
    lastRotatedDate: option<lastRotatedDateType>,
    @ocaml.doc("<p>A structure with the rotation configuration for this secret.</p>")
    @as("RotationRules")
    rotationRules: option<rotationRulesType>,
    @ocaml.doc("<p>The ARN of a Lambda function that's invoked by Secrets Manager to rotate the
      secret either automatically per the schedule or manually by a call to
        <code>RotateSecret</code>.</p>")
    @as("RotationLambdaARN")
    rotationLambdaARN: option<rotationLambdaARNType>,
    @ocaml.doc("<p>Specifies whether automatic rotation is enabled for this secret.</p>
         <p>To enable rotation, use <a>RotateSecret</a> with
        <code>AutomaticallyRotateAfterDays</code> set to a value greater than 0. To disable
      rotation, use <a>CancelRotateSecret</a>.</p>")
    @as("RotationEnabled")
    rotationEnabled: option<rotationEnabledType>,
    @ocaml.doc("<p>The ARN or alias of the AWS KMS customer master key (CMK) that's used to encrypt the
        <code>SecretString</code> or <code>SecretBinary</code> fields in each version of the secret.
      If you don't provide a key, then Secrets Manager defaults to encrypting the secret fields with the
      default AWS KMS CMK (the one named <code>awssecretsmanager</code>) for this account.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<kmsKeyIdType>,
    @ocaml.doc("<p>The user-provided description of the secret.</p>") @as("Description")
    description: option<descriptionType>,
    @ocaml.doc("<p>The user-provided friendly name of the secret.</p>") @as("Name")
    name: option<secretNameType>,
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
    @ocaml.doc("<p>(Optional) If set, the replication overwrites a secret with the same name in the
      destination region.</p>")
    @as("ForceOverwriteReplicaSecret")
    forceOverwriteReplicaSecret: option<booleanType>,
    @ocaml.doc("<p>(Optional) Add a list of regions to replicate secrets. Secrets Manager replicates the KMSKeyID objects to the list of regions specified in
      the parameter.</p>")
    @as("AddReplicaRegions")
    addReplicaRegions: option<addReplicaRegionListType>,
    @ocaml.doc("<p>(Optional) Specifies a list of user-defined tags that are attached to the secret. Each tag
      is a \"Key\" and \"Value\" pair of strings. This operation only appends tags to the existing list
      of tags. To remove tags, you must use <a>UntagResource</a>.</p>
         <important>
            <ul>
               <li>
                  <p>Secrets Manager tag key names are case sensitive. A tag with the key \"ABC\" is a different tag
            from one with key \"abc\".</p>
               </li>
               <li>
                  <p>If you check tags in IAM policy <code>Condition</code> elements as part of your
            security strategy, then adding or removing a tag can change permissions. If the
            successful completion of this operation would result in you losing your permissions for
            this secret, then this operation is blocked and returns an <code>Access Denied</code>
            error.</p>
               </li>
            </ul>
         </important>
         <p>This parameter requires a JSON text string argument. For information on how to format a
      JSON parameter for the various command line tool environments, see <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json\">Using JSON for
        Parameters</a> in the <i>AWS CLI User Guide</i>. For example:</p>
         <p>
            <code>[{\"Key\":\"CostCenter\",\"Value\":\"12345\"},{\"Key\":\"environment\",\"Value\":\"production\"}]</code>
         </p>
         <p>If your command-line tool or SDK requires quotation marks around the parameter, you should
      use single quotes to avoid confusion with the double quotes required in the JSON text. </p>
            <p>The following basic restrictions apply to tags:</p>
        <ul>
            <li>
               <p>Maximum number of tags per secret—50</p>
            </li>
            <li>
               <p>Maximum key length—127 Unicode characters in UTF-8</p>
            </li>
            <li>
               <p>Maximum value length—255 Unicode characters in UTF-8</p>
            </li>
            <li>
               <p>Tag keys and values are case sensitive.</p>
            </li>
            <li>
               <p>Do not use the <code>aws:</code> prefix in your tag names or values because AWS reserves it
            for AWS use. You can't edit or delete tag names or values with this 
              prefix. Tags with this prefix do not count against your tags per secret limit.</p>
            </li>
            <li>
               <p>If you use your tagging schema across multiple services and resources,
              remember other services might have restrictions on allowed characters. Generally
              allowed characters: letters, spaces, and numbers representable in UTF-8, plus the
              following special characters: + - = . _ : / @.</p>
            </li>
         </ul>")
    @as("Tags")
    tags: option<tagListType>,
    @ocaml.doc("<p>(Optional) Specifies text data that you want to encrypt and store in this new version of
      the secret.</p>
         <p>Either <code>SecretString</code> or <code>SecretBinary</code> must have a value, but not
      both. They cannot both be empty.</p>
         <p>If you create a secret by using the Secrets Manager console then Secrets Manager puts the protected
      secret text in only the <code>SecretString</code> parameter. The Secrets Manager console stores the
      information as a JSON structure of key/value pairs that the Lambda rotation function knows how
      to parse.</p>
         <p>For storing multiple values, we recommend that you use a JSON text string argument and
      specify key/value pairs. For information on how to format a JSON parameter for the various
      command line tool environments, see <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json\">Using JSON for
        Parameters</a> in the <i>AWS CLI User Guide</i>. For example:</p>
         <p>
            <code>{\"username\":\"bob\",\"password\":\"abc123xyz456\"}</code>
         </p>
         <p>If your command-line tool or SDK requires quotation marks around the parameter, you should
      use single quotes to avoid confusion with the double quotes required in the JSON text. </p>")
    @as("SecretString")
    secretString: option<secretStringType>,
    @ocaml.doc("<p>(Optional) Specifies binary data that you want to encrypt and store in the new version of
      the secret. To use this parameter in the command-line tools, we recommend that you store your
      binary data in a file and then use the appropriate technique for your tool to pass the
      contents of the file as a parameter.</p>
         <p>Either <code>SecretString</code> or <code>SecretBinary</code> must have a value, but not
      both. They cannot both be empty.</p>
         <p>This parameter is not available using the Secrets Manager console. It can be accessed only by
      using the AWS CLI or one of the AWS SDKs.</p>")
    @as("SecretBinary")
    secretBinary: option<secretBinaryType>,
    @ocaml.doc("<p>(Optional) Specifies the ARN, Key ID, or alias of the AWS KMS customer master key (CMK) to
      be used to encrypt the <code>SecretString</code> or <code>SecretBinary</code> values in the
      versions stored in this secret.</p>
         <p>You can specify any of the supported ways to identify a AWS KMS key ID. If you need to
      reference a CMK in a different account, you can use only the key ARN or the alias ARN.</p>
         <p>If you don't specify this value, then Secrets Manager defaults to using the AWS account's
      default CMK (the one named <code>aws/secretsmanager</code>). If a AWS KMS CMK with that name doesn't yet
      exist, then Secrets Manager creates it for you automatically the first time it needs to encrypt a
      version's <code>SecretString</code> or <code>SecretBinary</code> fields.</p>
         <important>
            <p>You can use the account default CMK to encrypt and decrypt only if you call this
        operation using credentials from the same account that owns the secret. If the secret
        resides in a different account, then you must create a custom CMK and specify the ARN in
        this field. </p>
         </important>")
    @as("KmsKeyId")
    kmsKeyId: option<kmsKeyIdType>,
    @ocaml.doc("<p>(Optional) Specifies a user-provided description of the secret.</p>")
    @as("Description")
    description: option<descriptionType>,
    @ocaml.doc("<p>(Optional) If you include <code>SecretString</code> or <code>SecretBinary</code>, then an
      initial version is created as part of the secret, and this parameter specifies a unique
      identifier for the new version. </p>
         <note>
            <p>If you use the AWS CLI or one of the AWS SDK to call this operation, then you can
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
    @ocaml.doc("<p>Specifies the friendly name of the new secret.</p>
         <p>The secret name must be ASCII letters, digits, or the following characters :
      /_+=.@-</p>
         <note>
            <p>Do not end your secret name with a hyphen followed by six characters. If you do so, you
        risk confusion and unexpected results when searching for a secret by partial ARN. Secrets Manager
        automatically adds a hyphen and six random characters at the end of the ARN.</p>
         </note>")
    @as("Name")
    name: nameType,
  }
  type response = {
    @ocaml.doc(
      "<p>Describes a list of replication status objects as <code>InProgress</code>, <code>Failed</code> or <code>InSync</code>.</p>"
    )
    @as("ReplicationStatus")
    replicationStatus: option<replicationStatusListType>,
    @ocaml.doc(
      "<p>The unique identifier associated with the version of the secret you just created.</p>"
    )
    @as("VersionId")
    versionId: option<secretVersionIdType>,
    @ocaml.doc("<p>The friendly name of the secret that you just created.</p>") @as("Name")
    name: option<secretNameType>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the secret that you just created.</p>
         <note>
            <p>Secrets Manager automatically adds several random characters to the name at the end of the ARN when
        you initially create a secret. This affects only the ARN and not the actual friendly name. 
        This ensures that if you create a new secret with the same name as an old secret that you 
        previously deleted, then users with access to the old secret <i>don't</i> 
        automatically get access to the new secret because the ARNs are different.</p>
         </note>")
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
    @ocaml.doc("<p>(Optional) Specifies that you want the results to include versions that do not have any
      staging labels attached to them. Such versions are considered deprecated and are subject to
      deletion by Secrets Manager as needed.</p>")
    @as("IncludeDeprecated")
    includeDeprecated: option<booleanType>,
    @ocaml.doc("<p>(Optional) Use this parameter in a request if you receive a 
    <code>NextToken</code> response in a previous request indicating there's more
    output available. In a subsequent call, set it to the value of the previous call 
    <code>NextToken</code> response to indicate where the output should continue from.</p>")
    @as("NextToken")
    nextToken: option<nextTokenType>,
    @ocaml.doc("<p>(Optional) Limits the number of results you want to include in 
    the response. If you don't include this parameter, it defaults to a value that's 
    specific to the operation. If additional items exist beyond the maximum you specify, the 
    <code>NextToken</code> response element is present and has a value (isn't null). Include
    that value as the <code>NextToken</code> request parameter in the next call to the operation to 
    get the next part of the results. Note that Secrets Manager might return fewer results than the maximum 
    even when there are more results available. You should check <code>NextToken</code> after every 
    operation to ensure that you receive all of the results.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsType>,
    @ocaml.doc("<p>The identifier for the secret containing the versions you want to list. You can specify
      either the Amazon Resource Name (ARN) or the friendly name of the secret.</p>
         <note>
            <p>If you specify an ARN, we generally recommend that you specify a complete ARN. You can 
        specify a partial ARN too—for example, if you don’t include the final hyphen and six random 
        characters that Secrets Manager adds at the end of the ARN when you created the secret. A partial ARN 
        match can work as long as it uniquely matches only one secret. However, if your secret has a 
        name that ends in a hyphen followed by six characters (before Secrets Manager adds the hyphen and six 
        characters to the ARN) and you try to use that as a partial ARN, then those characters cause 
        Secrets Manager to assume that you’re specifying a complete ARN. This confusion can cause unexpected 
        results. To avoid this situation, we recommend that you don’t create secret names ending 
        with a hyphen followed by six characters.</p>
            <p>If you specify an incomplete ARN without the random suffix, and instead provide the 
        'friendly name', you <i>must</i> not include the random suffix. If you do include the random suffix added by Secrets Manager, 
        you receive either a <i>ResourceNotFoundException</i> or an <i>AccessDeniedException</i> error, depending on your permissions.</p>
        </note>")
    @as("SecretId")
    secretId: secretIdType,
  }
  type response = {
    @ocaml.doc("<p>The friendly name of the secret.</p>") @as("Name") name: option<secretNameType>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the secret.</p> 
         <note>
            <p>Secrets Manager automatically adds several random characters to the name at the end of the ARN when
        you initially create a secret. This affects only the ARN and not the actual friendly name. 
        This ensures that if you create a new secret with the same name as an old secret that you 
        previously deleted, then users with access to the old secret <i>don't</i> 
        automatically get access to the new secret because the ARNs are different.</p>
         </note>")
    @as("ARN")
    arn: option<secretARNType>,
    @ocaml.doc("<p>If present in the response, this value indicates that 
    there's more output available than included in the current response. This can 
    occur even when the response includes no values at all, such as when you ask for a filtered view 
    of a very long list. Use this value in the <code>NextToken</code> request parameter in a 
    subsequent call to the operation to continue processing and get the next part of the output. You 
    should repeat this until the <code>NextToken</code> response element comes back empty (as 
    <code>null</code>).</p>")
    @as("NextToken")
    nextToken: option<nextTokenType>,
    @ocaml.doc("<p>The list of the currently available versions of the specified secret.</p>")
    @as("Versions")
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
    @ocaml.doc("<p>Lists the secret request filters.</p>") @as("Filters")
    filters: option<filtersListType>,
    @ocaml.doc("<p>(Optional) Use this parameter in a request if you receive a 
    <code>NextToken</code> response in a previous request indicating there's more
    output available. In a subsequent call, set it to the value of the previous call 
    <code>NextToken</code> response to indicate where the output should continue from.</p>")
    @as("NextToken")
    nextToken: option<nextTokenType>,
    @ocaml.doc("<p>(Optional) Limits the number of results you want to include in 
    the response. If you don't include this parameter, it defaults to a value that's 
    specific to the operation. If additional items exist beyond the maximum you specify, the 
    <code>NextToken</code> response element is present and has a value (isn't null). Include
    that value as the <code>NextToken</code> request parameter in the next call to the operation to 
    get the next part of the results. Note that Secrets Manager might return fewer results than the maximum 
    even when there are more results available. You should check <code>NextToken</code> after every 
    operation to ensure that you receive all of the results.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsType>,
  }
  type response = {
    @ocaml.doc("<p>If present in the response, this value indicates that 
    there's more output available than included in the current response. This can 
    occur even when the response includes no values at all, such as when you ask for a filtered view 
    of a very long list. Use this value in the <code>NextToken</code> request parameter in a 
    subsequent call to the operation to continue processing and get the next part of the output. You 
    should repeat this until the <code>NextToken</code> response element comes back empty (as 
    <code>null</code>).</p>")
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
