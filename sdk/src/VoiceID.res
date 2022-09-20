type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-voiceid") @new
external createClient: unit => awsServiceClient = "VoiceIDClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type uniqueIdLarge = string
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type string_ = string
type streamingStatus = [
  | @as("ENDED") #ENDED
  | @as("ONGOING") #ONGOING
  | @as("PENDING_CONFIGURATION") #PENDING_CONFIGURATION
]
type speakerStatus = [
  | @as("PENDING") #PENDING
  | @as("OPTED_OUT") #OPTED_OUT
  | @as("EXPIRED") #EXPIRED
  | @as("ENROLLED") #ENROLLED
]
type speakerId = string
type speakerEnrollmentJobStatus = [
  | @as("FAILED") #FAILED
  | @as("COMPLETED_WITH_ERRORS") #COMPLETED_WITH_ERRORS
  | @as("COMPLETED") #COMPLETED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("SUBMITTED") #SUBMITTED
]
type sessionNameOrId = string
type sessionName = string
type sessionId = string
type score = int
type s3Uri = string
type resourceType = [
  | @as("SPEAKER") #SPEAKER
  | @as("SESSION") #SESSION
  | @as("FRAUDSTER") #FRAUDSTER
  | @as("DOMAIN") #DOMAIN
  | @as("COMPLIANCE_CONSENT") #COMPLIANCE_CONSENT
  | @as("BATCH_JOB") #BATCH_JOB
]
type nextToken = string
type maxResultsForListDomainFe = int
type maxResultsForList = int
type kmsKeyId = string
type jobName = string
type jobId = string
type integer_ = int
type iamRoleArn = string
type generatedSpeakerId = string
type generatedFraudsterId = string
type fraudsterRegistrationJobStatus = [
  | @as("FAILED") #FAILED
  | @as("COMPLETED_WITH_ERRORS") #COMPLETED_WITH_ERRORS
  | @as("COMPLETED") #COMPLETED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("SUBMITTED") #SUBMITTED
]
type fraudsterId = string
type fraudDetectionReason = [@as("KNOWN_FRAUDSTER") #KNOWN_FRAUDSTER]
type fraudDetectionDecision = [
  | @as("NOT_ENOUGH_SPEECH") #NOT_ENOUGH_SPEECH
  | @as("LOW_RISK") #LOW_RISK
  | @as("HIGH_RISK") #HIGH_RISK
]
type fraudDetectionAction = [@as("FAIL") #FAIL | @as("IGNORE") #IGNORE]
type existingEnrollmentAction = [@as("OVERWRITE") #OVERWRITE | @as("SKIP") #SKIP]
type duplicateRegistrationAction = [@as("REGISTER_AS_NEW") #REGISTER_AS_NEW | @as("SKIP") #SKIP]
type domainStatus = [@as("SUSPENDED") #SUSPENDED | @as("PENDING") #PENDING | @as("ACTIVE") #ACTIVE]
type domainName = string
type domainId = string
type description = string
type customerSpeakerId = string
type conflictType = [
  | @as("CONCURRENT_CHANGES") #CONCURRENT_CHANGES
  | @as("SPEAKER_OPTED_OUT") #SPEAKER_OPTED_OUT
  | @as("SPEAKER_NOT_SET") #SPEAKER_NOT_SET
  | @as("ENROLLMENT_ALREADY_EXISTS") #ENROLLMENT_ALREADY_EXISTS
  | @as("CANNOT_CHANGE_SPEAKER_AFTER_ENROLLMENT") #CANNOT_CHANGE_SPEAKER_AFTER_ENROLLMENT
  | @as("DOMAIN_NOT_ACTIVE") #DOMAIN_NOT_ACTIVE
  | @as("ANOTHER_ACTIVE_STREAM") #ANOTHER_ACTIVE_STREAM
]
type clientTokenString = string
type authenticationDecision = [
  | @as("SPEAKER_ID_NOT_PROVIDED") #SPEAKER_ID_NOT_PROVIDED
  | @as("SPEAKER_OPTED_OUT") #SPEAKER_OPTED_OUT
  | @as("SPEAKER_NOT_ENROLLED") #SPEAKER_NOT_ENROLLED
  | @as("NOT_ENOUGH_SPEECH") #NOT_ENOUGH_SPEECH
  | @as("REJECT") #REJECT
  | @as("ACCEPT") #ACCEPT
]
type arn = string
type amazonResourceName = string
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A tag that can be assigned to a Voice ID resource.</p>")
type tag = {
  @ocaml.doc("<p>The second part of a key:value pair that forms a tag associated with a given resource. For example,
            in the tag ‘Department’:’Sales’, the value is 'Sales'.
        </p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>The first part of a key:value pair that forms a tag associated with a given resource. For example,
            in the tag ‘Department’:’Sales’, the key is 'Department'.
        </p>")
  @as("Key")
  key: tagKey,
}
@ocaml.doc("<p>Contains a summary of information about a speaker.</p>")
type speakerSummary = {
  @ocaml.doc("<p>A timestamp showing the speaker's last update.</p>") @as("UpdatedAt")
  updatedAt: option<timestamp_>,
  @ocaml.doc("<p>A timestamp showing the speaker's creation time. </p>") @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The current status of the speaker.</p>") @as("Status")
  status: option<speakerStatus>,
  @ocaml.doc("<p>The service-generated identifier for the speaker. </p>") @as("GeneratedSpeakerId")
  generatedSpeakerId: option<generatedSpeakerId>,
  @ocaml.doc("<p>The client-provided identifier for the speaker.</p>") @as("CustomerSpeakerId")
  customerSpeakerId: option<customerSpeakerId>,
  @ocaml.doc("<p>The identifier of the domain that contains the speaker.</p>") @as("DomainId")
  domainId: option<domainId>,
}
@ocaml.doc("<p>Contains all the information about a speaker.</p>")
type speaker = {
  @ocaml.doc("<p>A timestamp showing the speaker's last update.</p>") @as("UpdatedAt")
  updatedAt: option<timestamp_>,
  @ocaml.doc("<p>A timestamp showing when the speaker is created. </p>") @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The current status of the speaker.</p>") @as("Status")
  status: option<speakerStatus>,
  @ocaml.doc("<p>The service-generated identifier for the speaker.</p>") @as("GeneratedSpeakerId")
  generatedSpeakerId: option<generatedSpeakerId>,
  @ocaml.doc("<p>The client-provided identifier for the speaker.</p>") @as("CustomerSpeakerId")
  customerSpeakerId: option<customerSpeakerId>,
  @ocaml.doc("<p>The identifier of the domain that contains the speaker.</p>") @as("DomainId")
  domainId: option<domainId>,
}
@ocaml.doc("<p>The configuration containing information about the customer-managed KMS Key used for encrypting
            customer data.</p>")
type serverSideEncryptionConfiguration = {
  @ocaml.doc("<p>The identifier of the KMS Key you want Voice ID to use to encrypt your data.</p>")
  @as("KmsKeyId")
  kmsKeyId: kmsKeyId,
}
@ocaml.doc("<p>The configuration definining the action to take when a duplicate fraudster is detected, and the 
            similarity threshold to use for detecting a duplicate fraudster during a batch fraudster registration job.</p>")
type registrationConfig = {
  @ocaml.doc("<p>The minimum similarity score between the new and old fraudsters in order to consider the new 
            fraudster a duplicate.</p>")
  @as("FraudsterSimilarityThreshold")
  fraudsterSimilarityThreshold: option<score>,
  @ocaml.doc("<p>The action to take when a fraudster is identified as a duplicate. The default action is 
            <code>SKIP</code>, which skips registering the duplicate fraudster. Setting the value to
            <code>REGISTER_AS_NEW</code> always registers a new fraudster into the specified domain.</p>")
  @as("DuplicateRegistrationAction")
  duplicateRegistrationAction: option<duplicateRegistrationAction>,
}
@ocaml.doc("<p>The configuration containing output file information for a batch job.</p>")
type outputDataConfig = {
  @ocaml.doc("<p>the identifier of the KMS key you want Voice ID to use to encrypt the output file of the fraudster
            registration job.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>The S3 path of the folder to which Voice ID writes the job output file, which has a 
            <code>*.out</code> extension. For example, if the input file name is <code>input-file.json</code> and 
            the output folder path is <code>s3://output-bucket/output-folder</code>, the full output file path is 
            <code>s3://output-bucket/output-folder/job-Id/input-file.json.out</code>.</p>")
  @as("S3Uri")
  s3Uri: s3Uri,
}
@ocaml.doc(
  "<p>Contains details produced as a result of performing known fraudster risk analysis on a speaker.</p>"
)
type knownFraudsterRisk = {
  @ocaml.doc("<p>The identifier of the fraudster that is the closest match to the speaker. If there are no fraudsters
            registered in a given domain, or if there are no fraudsters with a non-zero RiskScore, this value is
            <code>null</code>.</p>")
  @as("GeneratedFraudsterId")
  generatedFraudsterId: option<generatedFraudsterId>,
  @ocaml.doc("<p>The score indicating the likelihood the speaker is a known fraudster.</p>")
  @as("RiskScore")
  riskScore: score,
}
@ocaml.doc("<p>Indicates the completion progress for a batch job.</p>")
type jobProgress = {
  @ocaml.doc(
    "<p>Shows the completed percentage of enrollment or registration requests listed in the input file.</p>"
  )
  @as("PercentComplete")
  percentComplete: option<score>,
}
@ocaml.doc("<p>The configuration containing input file information for a batch job.</p>")
type inputDataConfig = {
  @ocaml.doc("<p>The S3 location for the input manifest file that contains the list of individual enrollment or registration
            job requests.</p>")
  @as("S3Uri")
  s3Uri: s3Uri,
}
@ocaml.doc("<p>Contains all the information about a fraudster.</p>")
type fraudster = {
  @ocaml.doc("<p>The timestamp when Voice ID identified the fraudster.</p>") @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The service-generated identifier for the fraudster.</p>")
  @as("GeneratedFraudsterId")
  generatedFraudsterId: option<generatedFraudsterId>,
  @ocaml.doc("<p>The identifier for the domain containing the fraudster.</p>") @as("DomainId")
  domainId: option<domainId>,
}
type fraudDetectionReasons = array<fraudDetectionReason>
@ocaml.doc(
  "<p>The configuration used for performing fraud detection over a speaker during a session.</p>"
)
type fraudDetectionConfiguration = {
  @ocaml.doc("<p>Threshold value for determining whether the speaker is a fraudster. If the detected risk score 
            calculated by Voice ID is higher than the threshold, the speaker is considered a fraudster.</p>")
  @as("RiskThreshold")
  riskThreshold: score,
}
@ocaml.doc("<p>Contains error details for a failed batch job.</p>")
type failureDetails = {
  @ocaml.doc("<p>A description of the error that caused the batch job failure.</p>") @as("Message")
  message: option<string_>,
  @ocaml.doc("<p>An HTTP status code representing the nature of the error.</p>") @as("StatusCode")
  statusCode: option<integer_>,
}
@ocaml.doc("<p>The configuration defining the action to take when a speaker is flagged by the fraud detection system
            during a batch speaker enrollment job, and the risk threshold to use for identification.</p>")
type enrollmentJobFraudDetectionConfig = {
  @ocaml.doc("<p>Threshold value for determining whether the speaker is a high risk to be fraudulent. If the detected risk
            score calculated by Voice ID is greater than or equal to the threshold, the speaker is considered a fraudster.</p>")
  @as("RiskThreshold")
  riskThreshold: option<score>,
  @ocaml.doc("<p>The action to take when the given speaker is flagged by the fraud detection system. The default value is
            <code>FAIL</code>, which fails the speaker enrollment. Changing this value to <code>IGNORE</code> 
            results in the speaker being enrolled even if they are flagged by the fraud detection system.</p>")
  @as("FraudDetectionAction")
  fraudDetectionAction: option<fraudDetectionAction>,
}
@ocaml.doc("<p>The configuration used to authenticate a speaker during a session.</p>")
type authenticationConfiguration = {
  @ocaml.doc("<p>The minimum threshold needed to successfully authenticate a speaker.</p>")
  @as("AcceptanceThreshold")
  acceptanceThreshold: score,
}
type tagList_ = array<tag>
type speakerSummaries = array<speakerSummary>
@ocaml.doc("<p>Contains a summary of information about a speaker enrollment job.</p>")
type speakerEnrollmentJobSummary = {
  @ocaml.doc("<p>Provides details regarding job progress. This field shows the completed percentage of enrollment 
            requests listed in the input file.</p>")
  @as("JobProgress")
  jobProgress: option<jobProgress>,
  @ocaml.doc("<p>Contains details that are populated when an entire batch job fails. In cases of individual registration
            job failures, the batch job as a whole doesn't fail; it is completed with a <code>JobStatus</code> of
            <code>COMPLETED_WITH_ERRORS</code>. You can use the job output file to identify the individual 
            registration requests that failed.</p>")
  @as("FailureDetails")
  failureDetails: option<failureDetails>,
  @ocaml.doc("<p>A timestamp showing when the speaker enrollment job ended.</p>") @as("EndedAt")
  endedAt: option<timestamp_>,
  @ocaml.doc("<p>A timestamp showing the creation time of the speaker enrollment job.</p>")
  @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The identifier of the domain that contains the speaker enrollment job.</p>")
  @as("DomainId")
  domainId: option<domainId>,
  @ocaml.doc("<p>The current status of the speaker enrollment job.</p>") @as("JobStatus")
  jobStatus: option<speakerEnrollmentJobStatus>,
  @ocaml.doc("<p>The service-generated identifier for the speaker enrollment job.</p>") @as("JobId")
  jobId: option<jobId>,
  @ocaml.doc("<p>The client-provided name for the speaker enrollment job.</p>") @as("JobName")
  jobName: option<jobName>,
}
@ocaml.doc("<p>Contains a summary of information about a fraudster registration job.</p>")
type fraudsterRegistrationJobSummary = {
  @ocaml.doc(
    "<p>Shows the completed percentage of registration requests listed in the input file.</p>"
  )
  @as("JobProgress")
  jobProgress: option<jobProgress>,
  @ocaml.doc("<p>Contains details that are populated when an entire batch job fails. In cases of individual registration
            job failures, the batch job as a whole doesn't fail; it is completed with a <code>JobStatus</code> of
            <code>COMPLETED_WITH_ERRORS</code>. You can use the job output file to identify the individual 
            registration requests that failed.</p>")
  @as("FailureDetails")
  failureDetails: option<failureDetails>,
  @ocaml.doc("<p>A timestamp showing when the fraudster registration job ended.</p>") @as("EndedAt")
  endedAt: option<timestamp_>,
  @ocaml.doc("<p>A timestamp showing when the fraudster registration job is created. </p>")
  @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The identifier of the domain containing the fraudster registration job.</p>")
  @as("DomainId")
  domainId: option<domainId>,
  @ocaml.doc("<p>The current status of the fraudster registration job.</p>") @as("JobStatus")
  jobStatus: option<fraudsterRegistrationJobStatus>,
  @ocaml.doc("<p>The service-generated identifier for the fraudster registration job.</p>")
  @as("JobId")
  jobId: option<jobId>,
  @ocaml.doc("<p>The client-provied name for the fraudster registration job.</p>") @as("JobName")
  jobName: option<jobName>,
}
@ocaml.doc("<p>Contains all the information about a fraudster registration job.</p>")
type fraudsterRegistrationJob = {
  @ocaml.doc(
    "<p>Shows the completed percentage of registration requests listed in the input file.</p>"
  )
  @as("JobProgress")
  jobProgress: option<jobProgress>,
  @ocaml.doc("<p>Contains details that are populated when an entire batch job fails. In cases of individual registration
            job failures, the batch job as a whole doesn't fail; it is completed with a <code>JobStatus</code> of
            <code>COMPLETED_WITH_ERRORS</code>. You can use the job output file to identify the individual 
            registration requests that failed.</p>")
  @as("FailureDetails")
  failureDetails: option<failureDetails>,
  @ocaml.doc("<p>A timestamp showing when the fraudster registration job ended.</p>") @as("EndedAt")
  endedAt: option<timestamp_>,
  @ocaml.doc("<p>A timestamp showing the creation time of the fraudster registration job.</p>")
  @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The output data config containing the S3 location where you want Voice ID to write your job output 
            file; you must also include a KMS Key ID in order to encrypt the file.</p>")
  @as("OutputDataConfig")
  outputDataConfig: option<outputDataConfig>,
  @ocaml.doc("<p>The input data config containing an S3 URI for the input manifest file that contains the list
            of fraudster registration job requests.</p>")
  @as("InputDataConfig")
  inputDataConfig: option<inputDataConfig>,
  @ocaml.doc("<p>The registration config containing details such as the action to take when a duplicate fraudster is 
            detected, and the similarity threshold to use for detecting a duplicate fraudster.</p>")
  @as("RegistrationConfig")
  registrationConfig: option<registrationConfig>,
  @ocaml.doc("<p>The IAM role Amazon Resource Name (ARN) that grants Voice ID permissions to access customer's buckets
            to read the input manifest file and write the job output file.</p>")
  @as("DataAccessRoleArn")
  dataAccessRoleArn: option<iamRoleArn>,
  @ocaml.doc("<p>The identifier of the domain containing the fraudster registration job.</p>")
  @as("DomainId")
  domainId: option<domainId>,
  @ocaml.doc("<p>The current status of the fraudster registration job.</p>") @as("JobStatus")
  jobStatus: option<fraudsterRegistrationJobStatus>,
  @ocaml.doc("<p>The service-generated identifier for the fraudster registration job.</p>")
  @as("JobId")
  jobId: option<jobId>,
  @ocaml.doc("<p>The client-provied name for the fraudster registration job.</p>") @as("JobName")
  jobName: option<jobName>,
}
@ocaml.doc("<p>Details regarding various fraud risk analyses performed against the current session state and streamed
            audio of the speaker.</p>")
type fraudRiskDetails = {
  @ocaml.doc("<p>The details resulting from 'Known Fraudster Risk' analysis of the speaker.</p>")
  @as("KnownFraudsterRisk")
  knownFraudsterRisk: knownFraudsterRisk,
}
@ocaml.doc("<p>Contains configurations defining enrollment behavior for the batch job.</p>")
type enrollmentConfig = {
  @ocaml.doc("<p>The fraud detection configuration to use for the speaker enrollment job.</p>")
  @as("FraudDetectionConfig")
  fraudDetectionConfig: option<enrollmentJobFraudDetectionConfig>,
  @ocaml.doc("<p> The action to take when the specified speaker is already enrolled in the specified domain. The default 
            value is <code>SKIP</code>, which skips the enrollment for the existing speaker. Setting the value to
            <code>OVERWRITE</code> replaces the existing voice prints and enrollment audio stored for that speaker
            with new data generated from the latest audio.</p>")
  @as("ExistingEnrollmentAction")
  existingEnrollmentAction: option<existingEnrollmentAction>,
}
@ocaml.doc("<p>Contains a summary of information about a domain.</p>")
type domainSummary = {
  @ocaml.doc("<p>The timestamp showing the domain's last update.</p>") @as("UpdatedAt")
  updatedAt: option<timestamp_>,
  @ocaml.doc("<p>The timestamp showing when the domain is created.</p>") @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The server-side encryption configuration containing the KMS Key Identifier you want Voice ID to use
            to encrypt your data..</p>")
  @as("ServerSideEncryptionConfiguration")
  serverSideEncryptionConfiguration: option<serverSideEncryptionConfiguration>,
  @ocaml.doc("<p>The current status of the domain.</p>") @as("DomainStatus")
  domainStatus: option<domainStatus>,
  @ocaml.doc("<p>The client-provided description of the domain.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The client-provided name for the domain.</p>") @as("Name")
  name: option<domainName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the domain.</p>") @as("Arn") arn: option<arn>,
  @ocaml.doc("<p>The service-generated identifier for the domain.</p>") @as("DomainId")
  domainId: option<domainId>,
}
@ocaml.doc("<p>Contains all the information about a domain.</p>")
type domain = {
  @ocaml.doc("<p>The timestamp showing the domain's last update.</p>") @as("UpdatedAt")
  updatedAt: option<timestamp_>,
  @ocaml.doc("<p>The timestamp at which the domain is created.</p>") @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The server-side encryption configuration containing the KMS Key Identifier you want Voice ID to use
            to encrypt your data.</p>")
  @as("ServerSideEncryptionConfiguration")
  serverSideEncryptionConfiguration: option<serverSideEncryptionConfiguration>,
  @ocaml.doc("<p>The current status of the domain.</p>") @as("DomainStatus")
  domainStatus: option<domainStatus>,
  @ocaml.doc("<p>The client-provided description of the domain.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The client-provided name for the domain.</p>") @as("Name")
  name: option<domainName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the domain.</p>") @as("Arn") arn: option<arn>,
  @ocaml.doc("<p>The service-generated identifier for the domain.</p>") @as("DomainId")
  domainId: option<domainId>,
}
@ocaml.doc("<p>The authentication result produced by Voice ID, processed against the current session state and streamed
            audio of the speaker.</p>")
type authenticationResult = {
  @ocaml.doc(
    "<p>The <code>AuthenticationConfiguration</code> used to generate this authentication result.</p>"
  )
  @as("Configuration")
  configuration: option<authenticationConfiguration>,
  @ocaml.doc("<p>The authentication score for the speaker whose authentication result is produced. This value is 
            only present if the authentication decision is either <code>ACCEPT</code> or <code>REJECT</code>.</p>")
  @as("Score")
  score: option<score>,
  @ocaml.doc("<p>The authentication decision produced by Voice ID, processed against the current session state and streamed
            audio of the speaker.</p>")
  @as("Decision")
  decision: option<authenticationDecision>,
  @ocaml.doc(
    "<p>The service-generated identifier for the speaker whose authentication result is produced.</p>"
  )
  @as("GeneratedSpeakerId")
  generatedSpeakerId: option<generatedSpeakerId>,
  @ocaml.doc("<p>The client-provided identifier for the speaker whose authentication result is produced. Only present if a
            <code>SpeakerId</code> is provided for the session.</p>")
  @as("CustomerSpeakerId")
  customerSpeakerId: option<customerSpeakerId>,
  @ocaml.doc(
    "<p>A timestamp indicating when audio aggregation ended for this authentication result.</p>"
  )
  @as("AudioAggregationEndedAt")
  audioAggregationEndedAt: option<timestamp_>,
  @ocaml.doc(
    "<p>A timestamp indicating when audio aggregation started for this authentication result.</p>"
  )
  @as("AudioAggregationStartedAt")
  audioAggregationStartedAt: option<timestamp_>,
  @ocaml.doc("<p>The unique identifier for this authentication result. Because there can be multiple authentications
            for a given session, this field helps to identify if the returned result is from a previous streaming 
            activity or a new result. Note that in absence of any new streaming activity, 
            <code>AcceptanceThreshold</code> changes, or <code>SpeakerId</code> changes, Voice ID 
            always returns cached Authentication Result for this API.</p>")
  @as("AuthenticationResultId")
  authenticationResultId: option<uniqueIdLarge>,
}
type speakerEnrollmentJobSummaries = array<speakerEnrollmentJobSummary>
@ocaml.doc("<p>Contains all the information about a speaker enrollment job.</p>")
type speakerEnrollmentJob = {
  @ocaml.doc("<p>Provides details on job progress. This field shows the completed percentage of registration 
            requests listed in the input file.</p>")
  @as("JobProgress")
  jobProgress: option<jobProgress>,
  @ocaml.doc("<p>Contains details that are populated when an entire batch job fails. In cases of individual registration
            job failures, the batch job as a whole doesn't fail; it is completed with a <code>JobStatus</code> of
            <code>COMPLETED_WITH_ERRORS</code>. You can use the job output file to identify the individual 
            registration requests that failed.</p>")
  @as("FailureDetails")
  failureDetails: option<failureDetails>,
  @ocaml.doc("<p>A timestamp showing when the speaker enrollment job ended. </p>") @as("EndedAt")
  endedAt: option<timestamp_>,
  @ocaml.doc("<p>A timestamp showing the creation of the speaker enrollment job.</p>")
  @as("CreatedAt")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The output data config containing the S3 location where Voice ID writes the job output file; you must 
            also include a KMS Key ID to encrypt the file.</p>")
  @as("OutputDataConfig")
  outputDataConfig: option<outputDataConfig>,
  @ocaml.doc("<p>The input data config containing an S3 URI for the input manifest file that contains the list
            of speaker enrollment job requests.</p>")
  @as("InputDataConfig")
  inputDataConfig: option<inputDataConfig>,
  @ocaml.doc("<p>The configuration that defines the action to take when the speaker is already enrolled in Voice ID, and the
            <code>FraudDetectionConfig</code> to use.</p>")
  @as("EnrollmentConfig")
  enrollmentConfig: option<enrollmentConfig>,
  @ocaml.doc("<p>The IAM role Amazon Resource Name (ARN) that grants Voice ID permissions to access customer's buckets
            to read the input manifest file and write the job output file.</p>")
  @as("DataAccessRoleArn")
  dataAccessRoleArn: option<iamRoleArn>,
  @ocaml.doc("<p>The identifier of the domain that contains the speaker enrollment job.</p>")
  @as("DomainId")
  domainId: option<domainId>,
  @ocaml.doc("<p>The current status of the speaker enrollment job.</p>") @as("JobStatus")
  jobStatus: option<speakerEnrollmentJobStatus>,
  @ocaml.doc("<p>The service-generated identifier for the speaker enrollment job.</p>") @as("JobId")
  jobId: option<jobId>,
  @ocaml.doc("<p>The client-provided name for the speaker enrollment job.</p>") @as("JobName")
  jobName: option<jobName>,
}
type fraudsterRegistrationJobSummaries = array<fraudsterRegistrationJobSummary>
@ocaml.doc("<p>The fraud detection result produced by Voice ID, processed against the current session state and streamed
            audio of the speaker.</p>")
type fraudDetectionResult = {
  @ocaml.doc("<p>Details about each risk analyzed for this speaker.</p>") @as("RiskDetails")
  riskDetails: option<fraudRiskDetails>,
  @ocaml.doc("<p>The reason speaker was flagged by the fraud detection system. This is only be populated if fraud
            detection Decision is <code>HIGH_RISK</code>, and only has one possible value:
            <code>KNOWN_FRAUDSTER</code>.</p>")
  @as("Reasons")
  reasons: option<fraudDetectionReasons>,
  @ocaml.doc("<p>The fraud detection decision produced by Voice ID, processed against the current session state and
            streamed audio of the speaker.</p>")
  @as("Decision")
  decision: option<fraudDetectionDecision>,
  @ocaml.doc(
    "<p>The <code>FraudDetectionConfiguration</code> used to generate this fraud detection result.</p>"
  )
  @as("Configuration")
  configuration: option<fraudDetectionConfiguration>,
  @ocaml.doc(
    "<p>A timestamp indicating when audio aggregation ended for this fraud detection result.</p>"
  )
  @as("AudioAggregationEndedAt")
  audioAggregationEndedAt: option<timestamp_>,
  @ocaml.doc(
    "<p>A timestamp indicating when audio aggregation started for this fraud detection result.</p>"
  )
  @as("AudioAggregationStartedAt")
  audioAggregationStartedAt: option<timestamp_>,
  @ocaml.doc("<p>The unique identifier for this fraud detection result. Given there can be multiple fraud detections 
            for a given session, this field helps in identifying if the returned result is from previous streaming 
            activity or a new result. Note that in the absence of any new streaming activity or risk threshold 
            changes, Voice ID always returns cached Fraud Detection result for this API.</p>")
  @as("FraudDetectionResultId")
  fraudDetectionResultId: option<uniqueIdLarge>,
}
type domainSummaries = array<domainSummary>
@ocaml.doc("<p>Amazon Connect Voice ID provides real-time caller authentication and fraud screening. This guide
            describes the APIs used for this service.
        </p>")
module DeleteSpeaker = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the speaker you want to delete.</p>") @as("SpeakerId")
    speakerId: speakerId,
    @ocaml.doc("<p>The identifier of the domain containing the speaker.</p>") @as("DomainId")
    domainId: domainId,
  }
  type response = {.}
  @module("@aws-sdk/client-voiceid") @new external new: request => t = "DeleteSpeakerCommand"
  let make = (~speakerId, ~domainId, ()) => new({speakerId: speakerId, domainId: domainId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFraudster = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the fraudster you want to delete.</p>") @as("FraudsterId")
    fraudsterId: fraudsterId,
    @ocaml.doc("<p>The identifier of the domain containing the fraudster.</p>") @as("DomainId")
    domainId: domainId,
  }
  type response = {.}
  @module("@aws-sdk/client-voiceid") @new external new: request => t = "DeleteFraudsterCommand"
  let make = (~fraudsterId, ~domainId, ()) => new({fraudsterId: fraudsterId, domainId: domainId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDomain = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the domain you want to delete.</p>") @as("DomainId")
    domainId: domainId,
  }
  type response = {.}
  @module("@aws-sdk/client-voiceid") @new external new: request => t = "DeleteDomainCommand"
  let make = (~domainId, ()) => new({domainId: domainId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tag keys you want to remove from the specified resource.</p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the Voice ID resource you want to remove tags from.</p>"
    )
    @as("ResourceArn")
    resourceArn: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-voiceid") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module OptOutSpeaker = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the speaker you want opted-out.</p>") @as("SpeakerId")
    speakerId: speakerId,
    @ocaml.doc("<p>The identifier of the domain containing the speaker.</p>") @as("DomainId")
    domainId: domainId,
  }
  type response = {
    @ocaml.doc("<p>Details about the opted-out speaker.</p>") @as("Speaker")
    speaker: option<speaker>,
  }
  @module("@aws-sdk/client-voiceid") @new external new: request => t = "OptOutSpeakerCommand"
  let make = (~speakerId, ~domainId, ()) => new({speakerId: speakerId, domainId: domainId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSpeaker = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the speaker you are describing.</p>") @as("SpeakerId")
    speakerId: speakerId,
    @ocaml.doc("<p>The identifier of the domain that contains the speaker.</p>") @as("DomainId")
    domainId: domainId,
  }
  type response = {
    @ocaml.doc("<p>Information about the specified speaker.</p>") @as("Speaker")
    speaker: option<speaker>,
  }
  @module("@aws-sdk/client-voiceid") @new external new: request => t = "DescribeSpeakerCommand"
  let make = (~speakerId, ~domainId, ()) => new({speakerId: speakerId, domainId: domainId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFraudster = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the fraudster you are describing.</p>") @as("FraudsterId")
    fraudsterId: fraudsterId,
    @ocaml.doc("<p>The identifier of the domain containing the fraudster.</p>") @as("DomainId")
    domainId: domainId,
  }
  type response = {
    @ocaml.doc("<p>Information about the specified fraudster.</p>") @as("Fraudster")
    fraudster: option<fraudster>,
  }
  @module("@aws-sdk/client-voiceid") @new external new: request => t = "DescribeFraudsterCommand"
  let make = (~fraudsterId, ~domainId, ()) => new({fraudsterId: fraudsterId, domainId: domainId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDomain = {
  type t
  type request = {
    @ocaml.doc("<p>The configuration, containing the KMS Key Identifier, to be used by Voice ID for the server-side
            encryption of your data. Note that all the existing data in the domain are still encrypted using the
            existing key, only the data added to domain after updating the key is encrypted using the new key. </p>")
    @as("ServerSideEncryptionConfiguration")
    serverSideEncryptionConfiguration: serverSideEncryptionConfiguration,
    @ocaml.doc("<p>A brief description about this domain.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the domain.</p>") @as("Name") name: domainName,
    @ocaml.doc("<p>The identifier of the domain to be updated.</p>") @as("DomainId")
    domainId: domainId,
  }
  type response = {
    @ocaml.doc("<p>Details about the updated domain</p>") @as("Domain") domain: option<domain>,
  }
  @module("@aws-sdk/client-voiceid") @new external new: request => t = "UpdateDomainCommand"
  let make = (~serverSideEncryptionConfiguration, ~name, ~domainId, ~description=?, ()) =>
    new({
      serverSideEncryptionConfiguration: serverSideEncryptionConfiguration,
      description: description,
      name: name,
      domainId: domainId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tags to assign to the specified resource.</p>") @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Voice ID resource you want to tag.</p>")
    @as("ResourceArn")
    resourceArn: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-voiceid") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartFraudsterRegistrationJob = {
  type t
  type request = {
    @ocaml.doc("<p>The output data config containing the S3 location where Voice ID writes the job output file; you must
            also include a KMS Key ID to encrypt the file.</p>")
    @as("OutputDataConfig")
    outputDataConfig: outputDataConfig,
    @ocaml.doc("<p>The input data config containing an S3 URI for the input manifest file that contains the list
            of fraudster registration requests.</p>")
    @as("InputDataConfig")
    inputDataConfig: inputDataConfig,
    @ocaml.doc("<p>The registration config containing details such as the action to take when a duplicate fraudster is
            detected, and the similarity threshold to use for detecting a duplicate fraudster.</p>")
    @as("RegistrationConfig")
    registrationConfig: option<registrationConfig>,
    @ocaml.doc("<p>The IAM role Amazon Resource Name (ARN) that grants Voice ID permissions to access customer's buckets
            to read the input manifest file and write the Job output file. Refer to the
            <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/voiceid-fraudster-watchlist.html\">Create and
                edit a fraudster watchlist</a> documentation for the permissions needed in this role.</p>")
    @as("DataAccessRoleArn")
    dataAccessRoleArn: iamRoleArn,
    @ocaml.doc("<p>The identifier of the domain containing the fraudster registration job and in which the fraudsters are
            registered.</p>")
    @as("DomainId")
    domainId: domainId,
    @ocaml.doc("<p>The name of the new fraudster registration job.</p>") @as("JobName")
    jobName: option<jobName>,
    @ocaml.doc("<p>The idempotency token for starting a new fraudster registration job. If not provided, Amazon Web Services 
            SDK populates this field.</p>")
    @as("ClientToken")
    clientToken: option<clientTokenString>,
  }
  type response = {
    @ocaml.doc("<p>Details about the started fraudster registration job.</p>") @as("Job")
    job: option<fraudsterRegistrationJob>,
  }
  @module("@aws-sdk/client-voiceid") @new
  external new: request => t = "StartFraudsterRegistrationJobCommand"
  let make = (
    ~outputDataConfig,
    ~inputDataConfig,
    ~dataAccessRoleArn,
    ~domainId,
    ~registrationConfig=?,
    ~jobName=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      outputDataConfig: outputDataConfig,
      inputDataConfig: inputDataConfig,
      registrationConfig: registrationConfig,
      dataAccessRoleArn: dataAccessRoleArn,
      domainId: domainId,
      jobName: jobName,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the Voice ID resource for which you want to list the tags.</p>"
    )
    @as("ResourceArn")
    resourceArn: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>The list of tags associated with the specified resource.</p>") @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-voiceid") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSpeakers = {
  type t
  type request = {
    @ocaml.doc("<p>If <code>NextToken</code> is returned, there are more results available. The value of <code>NextToken</code>
            is a unique pagination token for each page. Make the call again using the returned token to retrieve the
            next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
        </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results that are returned per call. You can use <code>NextToken</code> to obtain
            further pages of results. The default is 100; the maximum allowed page size is also 100.
        </p>")
    @as("MaxResults")
    maxResults: option<maxResultsForList>,
    @ocaml.doc("<p>The identifier of the domain.</p>") @as("DomainId") domainId: domainId,
  }
  type response = {
    @ocaml.doc("<p>If <code>NextToken</code> is returned, there are more results available. The value of <code>NextToken</code>
            is a unique pagination token for each page. Make the call again using the returned token to retrieve the
            next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
        </p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list containing details about each speaker in the Amazon Web Services account.
        </p>")
    @as("SpeakerSummaries")
    speakerSummaries: option<speakerSummaries>,
  }
  @module("@aws-sdk/client-voiceid") @new external new: request => t = "ListSpeakersCommand"
  let make = (~domainId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, domainId: domainId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFraudsterRegistrationJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the fraudster registration job you are describing.</p>")
    @as("JobId")
    jobId: jobId,
    @ocaml.doc("<p>The identifier for the domain containing the fraudster registration job.</p>")
    @as("DomainId")
    domainId: domainId,
  }
  type response = {
    @ocaml.doc("<p>Contains details about the specified fraudster registration job.</p>") @as("Job")
    job: option<fraudsterRegistrationJob>,
  }
  @module("@aws-sdk/client-voiceid") @new
  external new: request => t = "DescribeFraudsterRegistrationJobCommand"
  let make = (~jobId, ~domainId, ()) => new({jobId: jobId, domainId: domainId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDomain = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the domain you are describing.</p>") @as("DomainId")
    domainId: domainId,
  }
  type response = {
    @ocaml.doc("<p>Information about the specified domain.</p>") @as("Domain")
    domain: option<domain>,
  }
  @module("@aws-sdk/client-voiceid") @new external new: request => t = "DescribeDomainCommand"
  let make = (~domainId, ()) => new({domainId: domainId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDomain = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags you want added to the domain.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The idempotency token for creating a new domain. If not provided, Amazon Web Services SDK populates 
            this field.</p>")
    @as("ClientToken")
    clientToken: option<clientTokenString>,
    @ocaml.doc("<p>The configuration, containing the KMS Key Identifier, to be used by Voice ID for 
            the server-side encryption of your data. Refer to <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/encryption-at-rest.html#encryption-at-rest-voiceid\">
                Amazon Connect VoiceID encryption at rest</a> for more details on how the KMS Key is used.
        </p>")
    @as("ServerSideEncryptionConfiguration")
    serverSideEncryptionConfiguration: serverSideEncryptionConfiguration,
    @ocaml.doc("<p>A brief description of this domain.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the domain.</p>") @as("Name") name: domainName,
  }
  type response = {
    @ocaml.doc("<p>Information about the newly created domain.</p>") @as("Domain")
    domain: option<domain>,
  }
  @module("@aws-sdk/client-voiceid") @new external new: request => t = "CreateDomainCommand"
  let make = (
    ~serverSideEncryptionConfiguration,
    ~name,
    ~tags=?,
    ~clientToken=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      clientToken: clientToken,
      serverSideEncryptionConfiguration: serverSideEncryptionConfiguration,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartSpeakerEnrollmentJob = {
  type t
  type request = {
    @ocaml.doc("<p>The output data config containing the S3 location where Voice ID writes the job output file; you must
            also include a KMS Key ID to encrypt the file.</p>")
    @as("OutputDataConfig")
    outputDataConfig: outputDataConfig,
    @ocaml.doc("<p>The input data config containing the S3 location for the input manifest file that contains the list of
            speaker enrollment requests.</p>")
    @as("InputDataConfig")
    inputDataConfig: inputDataConfig,
    @ocaml.doc("<p>The enrollment config that contains details such as the action to take when a speaker is already
            enrolled in the Voice ID system or when a speaker is identified as a fraudster.</p>")
    @as("EnrollmentConfig")
    enrollmentConfig: option<enrollmentConfig>,
    @ocaml.doc("<p>The IAM role Amazon Resource Name (ARN) that grants Voice ID permissions to access customer's buckets
            to read the input manifest file and write the job output file. Refer to <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/voiceid-batch-enrollment.html\">Batch enrollment using audio data from prior
                calls</a> documentation for the permissions needed in this role.</p>")
    @as("DataAccessRoleArn")
    dataAccessRoleArn: iamRoleArn,
    @ocaml.doc("<p>The identifier of the domain that contains the speaker enrollment job and in which the speakers are
            enrolled.
        </p>")
    @as("DomainId")
    domainId: domainId,
    @ocaml.doc("<p>A name for your speaker enrollment job.</p>") @as("JobName")
    jobName: option<jobName>,
    @ocaml.doc("<p>The idempotency token for starting a new speaker enrollment Job. If not provided, Amazon Web Services 
            SDK populates this field.</p>")
    @as("ClientToken")
    clientToken: option<clientTokenString>,
  }
  type response = {
    @ocaml.doc("<p>Details about the started speaker enrollment job.</p>") @as("Job")
    job: option<speakerEnrollmentJob>,
  }
  @module("@aws-sdk/client-voiceid") @new
  external new: request => t = "StartSpeakerEnrollmentJobCommand"
  let make = (
    ~outputDataConfig,
    ~inputDataConfig,
    ~dataAccessRoleArn,
    ~domainId,
    ~enrollmentConfig=?,
    ~jobName=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      outputDataConfig: outputDataConfig,
      inputDataConfig: inputDataConfig,
      enrollmentConfig: enrollmentConfig,
      dataAccessRoleArn: dataAccessRoleArn,
      domainId: domainId,
      jobName: jobName,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSpeakerEnrollmentJobs = {
  type t
  type request = {
    @ocaml.doc("<p>If <code>NextToken</code> is returned, there are more results available. The value of <code>NextToken</code>
            is a unique pagination token for each page. Make the call again using the returned token to retrieve the
            next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
        </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results that are returned per call. You can use <code>NextToken</code> to obtain
            further pages of results. The default is 100; the maximum allowed page size is also 100.
        </p>")
    @as("MaxResults")
    maxResults: option<maxResultsForList>,
    @ocaml.doc("<p>Provides the status of your speaker enrollment Job.</p>") @as("JobStatus")
    jobStatus: option<speakerEnrollmentJobStatus>,
    @ocaml.doc("<p>The identifier of the domain containing the speaker enrollment jobs.</p>")
    @as("DomainId")
    domainId: domainId,
  }
  type response = {
    @ocaml.doc("<p>If <code>NextToken</code> is returned, there are more results available. The value of <code>NextToken</code>
            is a unique pagination token for each page. Make the call again using the returned token to retrieve the
            next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
        </p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list containing details about each specified speaker enrollment job.</p>")
    @as("JobSummaries")
    jobSummaries: option<speakerEnrollmentJobSummaries>,
  }
  @module("@aws-sdk/client-voiceid") @new
  external new: request => t = "ListSpeakerEnrollmentJobsCommand"
  let make = (~domainId, ~nextToken=?, ~maxResults=?, ~jobStatus=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, jobStatus: jobStatus, domainId: domainId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFraudsterRegistrationJobs = {
  type t
  type request = {
    @ocaml.doc("<p>If <code>NextToken</code> is returned, there are more results available. The value of <code>NextToken</code>
            is a unique pagination token for each page. Make the call again using the returned token to retrieve the
            next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
        </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results that are returned per call. You can use <code>NextToken</code> to obtain
            further pages of results. The default is 100; the maximum allowed page size is also 100.
        </p>")
    @as("MaxResults")
    maxResults: option<maxResultsForList>,
    @ocaml.doc("<p>Provides the status of your fraudster registration job.</p>") @as("JobStatus")
    jobStatus: option<fraudsterRegistrationJobStatus>,
    @ocaml.doc("<p>The identifier of the domain containing the fraudster registration Jobs.</p>")
    @as("DomainId")
    domainId: domainId,
  }
  type response = {
    @ocaml.doc("<p>If <code>NextToken</code> is returned, there are more results available. The value of <code>NextToken</code>
            is a unique pagination token for each page. Make the call again using the returned token to retrieve the
            next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
        </p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list containing details about each specified fraudster registration job.</p>")
    @as("JobSummaries")
    jobSummaries: option<fraudsterRegistrationJobSummaries>,
  }
  @module("@aws-sdk/client-voiceid") @new
  external new: request => t = "ListFraudsterRegistrationJobsCommand"
  let make = (~domainId, ~nextToken=?, ~maxResults=?, ~jobStatus=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, jobStatus: jobStatus, domainId: domainId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDomains = {
  type t
  type request = {
    @ocaml.doc("<p>If <code>NextToken</code> is returned, there are more results available. The value of <code>NextToken</code>
            is a unique pagination token for each page. Make the call again using the returned token to retrieve the
            next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
        </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results that are returned per call. You can use <code>NextToken</code> to obtain
            further pages of results. The default is 100; the maximum allowed page size is also 100.
        </p>")
    @as("MaxResults")
    maxResults: option<maxResultsForListDomainFe>,
  }
  type response = {
    @ocaml.doc("<p>If <code>NextToken</code> is returned, there are more results available. The value of <code>NextToken</code>
            is a unique pagination token for each page. Make the call again using the returned token to retrieve the
            next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
        </p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>A list containing details about each domain in the Amazon Web Services account.</p>"
    )
    @as("DomainSummaries")
    domainSummaries: option<domainSummaries>,
  }
  @module("@aws-sdk/client-voiceid") @new external new: request => t = "ListDomainsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EvaluateSession = {
  type t
  type request = {
    @ocaml.doc("<p>The session identifier, or name of the session, that you want to evaluate. In Voice ID
            integration, this is the Contact-Id.</p>")
    @as("SessionNameOrId")
    sessionNameOrId: sessionNameOrId,
    @ocaml.doc("<p>The identifier of the domain where the session started.</p>") @as("DomainId")
    domainId: domainId,
  }
  type response = {
    @ocaml.doc(
      "<p>Details resulting from the fraud detection process, such as fraud detection decision and risk score.</p>"
    )
    @as("FraudDetectionResult")
    fraudDetectionResult: option<fraudDetectionResult>,
    @ocaml.doc("<p>Details resulting from the authentication process, such as authentication decision and
            authentication score.</p>")
    @as("AuthenticationResult")
    authenticationResult: option<authenticationResult>,
    @ocaml.doc("<p>The current status of audio streaming for this session. This field is useful to infer next steps when
            the Authentication or Fraud Detection results are empty or the decision is <code>NOT_ENOUGH_SPEECH</code>.
            In this situation, if the <code>StreamingStatus</code> is <code>ONGOING/PENDING_CONFIGURATION</code>, it can
            mean that the client should call the API again later, once Voice ID has enough audio to produce a result.
            If the decision remains <code>NOT_ENOUGH_SPEECH</code> even after <code>StreamingStatus</code> is <code>ENDED</code>,
            it means that the previously streamed session did not have enough speech to perform evaluation, and a new
            streaming session is needed to try again.</p>")
    @as("StreamingStatus")
    streamingStatus: option<streamingStatus>,
    @ocaml.doc("<p>The client-provided name of the session.</p>") @as("SessionName")
    sessionName: option<sessionName>,
    @ocaml.doc("<p>The service-generated identifier of the session.</p>") @as("SessionId")
    sessionId: option<sessionId>,
    @ocaml.doc("<p>The identifier of the domain containing the session.</p>") @as("DomainId")
    domainId: option<domainId>,
  }
  @module("@aws-sdk/client-voiceid") @new external new: request => t = "EvaluateSessionCommand"
  let make = (~sessionNameOrId, ~domainId, ()) =>
    new({sessionNameOrId: sessionNameOrId, domainId: domainId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSpeakerEnrollmentJob = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the speaker enrollment job you are describing.</p>")
    @as("JobId")
    jobId: jobId,
    @ocaml.doc("<p>The identifier of the domain containing the speaker enrollment job.</p>")
    @as("DomainId")
    domainId: domainId,
  }
  type response = {
    @ocaml.doc("<p>Contains details about the specified speaker enrollment job.</p>") @as("Job")
    job: option<speakerEnrollmentJob>,
  }
  @module("@aws-sdk/client-voiceid") @new
  external new: request => t = "DescribeSpeakerEnrollmentJobCommand"
  let make = (~jobId, ~domainId, ()) => new({jobId: jobId, domainId: domainId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
