type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-mturk-requester") @new
external createClient: unit => awsServiceClient = "MTurkClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type turkErrorCode = string
type timestamp_ = Js.Date.t
type string_ = string
type reviewableHITStatus = [@as("Reviewing") #Reviewing | @as("Reviewable") #Reviewable]
type reviewPolicyLevel = [@as("HIT") #HIT | @as("Assignment") #Assignment]
type reviewActionStatus = [
  | @as("Cancelled") #Cancelled
  | @as("Failed") #Failed
  | @as("Succeeded") #Succeeded
  | @as("Intended") #Intended
]
type resultSize = int
type qualificationTypeStatus = [@as("Inactive") #Inactive | @as("Active") #Active]
type qualificationStatus = [@as("Revoked") #Revoked | @as("Granted") #Granted]
@ocaml.doc("<p>If the previous response was incomplete (because there is more data to retrieve), Amazon Mechanical Turk
            returns a pagination token in the response. You can use this pagination token
            to retrieve the next set of results.
        </p>")
type paginationToken = string
type notifyWorkersFailureCode = [@as("HardFailure") #HardFailure | @as("SoftFailure") #SoftFailure]
type notificationTransport = [@as("SNS") #SNS | @as("SQS") #SQS | @as("Email") #Email]
type long = float
type integer_ = int
type idempotencyToken = string
type hitstatus = [
  | @as("Disposed") #Disposed
  | @as("Reviewing") #Reviewing
  | @as("Reviewable") #Reviewable
  | @as("Unassignable") #Unassignable
  | @as("Assignable") #Assignable
]
type hitreviewStatus = [
  | @as("ReviewedInappropriate") #ReviewedInappropriate
  | @as("ReviewedAppropriate") #ReviewedAppropriate
  | @as("MarkedForReview") #MarkedForReview
  | @as("NotReviewed") #NotReviewed
]
type hitaccessActions = [
  | @as("DiscoverPreviewAndAccept") #DiscoverPreviewAndAccept
  | @as("PreviewAndAccept") #PreviewAndAccept
  | @as("Accept") #Accept
]
type exceptionMessage = string
type eventType = [
  | @as("Ping") #Ping
  | @as("HITDisposed") #HITDisposed
  | @as("HITExtended") #HITExtended
  | @as("HITReviewable") #HITReviewable
  | @as("HITExpired") #HITExpired
  | @as("HITCreated") #HITCreated
  | @as("AssignmentApproved") #AssignmentApproved
  | @as("AssignmentRejected") #AssignmentRejected
  | @as("AssignmentSubmitted") #AssignmentSubmitted
  | @as("AssignmentReturned") #AssignmentReturned
  | @as("AssignmentAbandoned") #AssignmentAbandoned
  | @as("AssignmentAccepted") #AssignmentAccepted
]
type entityId = string
type customerId = string
@ocaml.doc("<p>A string representing a currency amount.</p>") type currencyAmount = string
type countryParameters = string
type comparator = [
  | @as("NotIn") #NotIn
  | @as("In") #In
  | @as("DoesNotExist") #DoesNotExist
  | @as("Exists") #Exists
  | @as("NotEqualTo") #NotEqualTo
  | @as("EqualTo") #EqualTo
  | @as("GreaterThanOrEqualTo") #GreaterThanOrEqualTo
  | @as("GreaterThan") #GreaterThan
  | @as("LessThanOrEqualTo") #LessThanOrEqualTo
  | @as("LessThan") #LessThan
]
type boolean_ = bool
type assignmentStatus = [
  | @as("Rejected") #Rejected
  | @as("Approved") #Approved
  | @as("Submitted") #Submitted
]
@ocaml.doc("<p> The WorkerBlock data structure represents a Worker who has
            been blocked. It has two elements: the WorkerId and the Reason for
            the block.
        </p>")
type workerBlock = {
  @ocaml.doc("<p> A message explaining the reason the Worker was blocked.
        </p>")
  @as("Reason")
  reason: option<string_>,
  @ocaml.doc("<p> The ID of the Worker who accepted the HIT.</p>") @as("WorkerId")
  workerId: option<customerId>,
}
type stringList = array<string_>
@ocaml.doc("<p> This data structure is returned multiple times for each
            result specified in the Review Policy.
        </p>")
type reviewResultDetail = {
  @ocaml.doc("<p> The values of Key provided by the review policies you have
            selected.
        </p>")
  @as("Value")
  value: option<string_>,
  @ocaml.doc("<p> Key identifies the particular piece of reviewed information.
        </p>")
  @as("Key")
  key: option<string_>,
  @ocaml.doc("<p> Specifies the QuestionId the result is describing. Depending
            on whether the TargetType is a HIT or Assignment this results could
            specify multiple values. If TargetType is HIT and QuestionId is
            absent, then the result describes results of the HIT, including the
            HIT agreement score. If ObjectType is Assignment and QuestionId is
            absent, then the result describes the Worker's performance on the
            HIT.
        </p>")
  @as("QuestionId")
  questionId: option<entityId>,
  @ocaml.doc("<p> The type of the object from the SubjectId field.</p>") @as("SubjectType")
  subjectType: option<string_>,
  @ocaml.doc("<p>The HITID or AssignmentId about which this result was taken.
            Note that HIT-level Review Policies will often emit results about
            both the HIT itself and its Assignments, while Assignment-level
            review policies generally only emit results about the Assignment
            itself.
        </p>")
  @as("SubjectId")
  subjectId: option<entityId>,
  @ocaml.doc("<p> A unique identifier of the Review action result.
        </p>")
  @as("ActionId")
  actionId: option<entityId>,
}
type reviewPolicyLevelList = array<reviewPolicyLevel>
@ocaml.doc("<p> Both the AssignmentReviewReport and the HITReviewReport
            elements contains the ReviewActionDetail data structure. This
            structure is returned multiple times for each action specified in the
            Review Policy.
        </p>")
type reviewActionDetail = {
  @ocaml.doc("<p> Present only when the Results have a FAILED Status.</p>") @as("ErrorCode")
  errorCode: option<string_>,
  @ocaml.doc("<p> A description of the outcome of the review.</p>") @as("Result")
  result: option<string_>,
  @ocaml.doc("<p> The date when the action was completed.</p>") @as("CompleteTime")
  completeTime: option<timestamp_>,
  @ocaml.doc("<p> The current disposition of the action: INTENDED, SUCCEEDED,
            FAILED, or CANCELLED.
        </p>")
  @as("Status")
  status: option<reviewActionStatus>,
  @ocaml.doc("<p> The type of object in TargetId.</p>") @as("TargetType")
  targetType: option<string_>,
  @ocaml.doc("<p> The specific HITId or AssignmentID targeted by the action.</p>") @as("TargetId")
  targetId: option<entityId>,
  @ocaml.doc("<p> The nature of the action itself. The Review Policy is
            responsible for examining the HIT and Assignments, emitting results,
            and deciding which other actions will be necessary. </p>")
  @as("ActionName")
  actionName: option<string_>,
  @ocaml.doc("<p>The unique identifier for the action.</p>") @as("ActionId")
  actionId: option<entityId>,
}
@ocaml.doc("<p> The QualificationType data structure represents a
            Qualification type, a description of a property of a Worker that must
            match the requirements of a HIT for the Worker to be able to accept
            the HIT. The type also describes how a Worker can obtain a
            Qualification of that type, such as through a Qualification test.
        </p>")
type qualificationType = {
  @ocaml.doc("<p> The Qualification integer value to use for automatically
            granted Qualifications, if AutoGranted is true. This is 1 by default.
        </p>")
  @as("AutoGrantedValue")
  autoGrantedValue: option<integer_>,
  @ocaml.doc("<p>Specifies that requests for the Qualification type are
            granted immediately, without prompting the Worker with a
            Qualification test. Valid values are True | False.</p>")
  @as("AutoGranted")
  autoGranted: option<boolean_>,
  @ocaml.doc("<p> Specifies whether the Qualification type is one that a user
            can request through the Amazon Mechanical Turk web site, such as by
            taking a Qualification test. This value is False for Qualifications
            assigned automatically by the system. Valid values are True | False.
        </p>")
  @as("IsRequestable")
  isRequestable: option<boolean_>,
  @ocaml.doc("<p> The amount of time, in seconds, Workers must wait after
            taking the Qualification test before they can take it again. Workers
            can take a Qualification test multiple times if they were not granted
            the Qualification from a previous attempt, or if the test offers a
            gradient score and they want a better score. If not specified,
            retries are disabled and Workers can request a Qualification only
            once.
        </p>")
  @as("RetryDelayInSeconds")
  retryDelayInSeconds: option<long>,
  @ocaml.doc("<p>The answers to the Qualification test specified in the Test
            parameter.</p>")
  @as("AnswerKey")
  answerKey: option<string_>,
  @ocaml.doc("<p> The amount of time, in seconds, given to a Worker to
            complete the Qualification test, beginning from the time the Worker
            requests the Qualification.
        </p>")
  @as("TestDurationInSeconds")
  testDurationInSeconds: option<long>,
  @ocaml.doc("<p> The questions for a Qualification test associated with this
            Qualification type that a user can take to obtain a Qualification of
            this type. This parameter must be specified if AnswerKey is present.
            A Qualification type cannot have both a specified Test parameter and
            an AutoGranted value of true.
        </p>")
  @as("Test")
  test: option<string_>,
  @ocaml.doc("<p> The status of the Qualification type. A Qualification type's
            status determines if users can apply to receive a Qualification of
            this type, and if HITs can be created with requirements based on this
            type. Valid values are Active | Inactive.
        </p>")
  @as("QualificationTypeStatus")
  qualificationTypeStatus: option<qualificationTypeStatus>,
  @ocaml.doc("<p> One or more words or phrases that describe theQualification
            type, separated by commas. The Keywords make the type easier to find
            using a search.
        </p>")
  @as("Keywords")
  keywords: option<string_>,
  @ocaml.doc("<p> A long description for the Qualification type.
        </p>")
  @as("Description")
  description: option<string_>,
  @ocaml.doc("<p> The name of the Qualification type. The type name is used to
            identify the type, and to find the type using a Qualification type
            search.
        </p>")
  @as("Name")
  name: option<string_>,
  @ocaml.doc("<p> The date and time the Qualification type was created.
        </p>")
  @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p> A unique identifier for the Qualification type. A
            Qualification type is given a Qualification type ID when you call the
            CreateQualificationType operation.
        </p>")
  @as("QualificationTypeId")
  qualificationTypeId: option<entityId>,
}
@ocaml.doc("<p> The QualificationRequest data structure represents a request
            a Worker has made for a Qualification.
        </p>")
type qualificationRequest = {
  @ocaml.doc("<p>The date and time the Qualification request had a status of
            Submitted. This is either the time the Worker submitted answers for a
            Qualification test, or the time the Worker requested the
            Qualification if the Qualification type does not have a test.
        </p>")
  @as("SubmitTime")
  submitTime: option<timestamp_>,
  @ocaml.doc("<p> The Worker's answers for the Qualification type's test
            contained in a QuestionFormAnswers document, if the type has a test
            and the Worker has submitted answers. If the Worker does not provide
            any answers, Answer may be empty.
        </p>")
  @as("Answer")
  answer: option<string_>,
  @ocaml.doc("<p> The contents of the Qualification test that was presented to
            the Worker, if the type has a test and the Worker has submitted
            answers. This value is identical to the QuestionForm associated with
            the Qualification type at the time the Worker requests the
            Qualification.</p>")
  @as("Test")
  test: option<string_>,
  @ocaml.doc("<p> The ID of the Worker requesting the Qualification.</p>") @as("WorkerId")
  workerId: option<customerId>,
  @ocaml.doc("<p> The ID of the Qualification type the Worker is requesting,
            as returned by the CreateQualificationType operation.
        </p>")
  @as("QualificationTypeId")
  qualificationTypeId: option<entityId>,
  @ocaml.doc("<p>The ID of the Qualification request, a unique identifier
            generated when the request was submitted.

        </p>")
  @as("QualificationRequestId")
  qualificationRequestId: option<string_>,
}
@ocaml.doc("<p> When MTurk encounters an issue with notifying the Workers
            you specified, it returns back this object with failure details.
        </p>")
type notifyWorkersFailureStatus = {
  @ocaml.doc("<p> The ID of the Worker.</p>") @as("WorkerId") workerId: option<customerId>,
  @ocaml.doc("<p> A message detailing the reason the Worker could not be
            notified.
        </p>")
  @as("NotifyWorkersFailureMessage")
  notifyWorkersFailureMessage: option<string_>,
  @ocaml.doc("<p> Encoded value for the failure type.
        </p>")
  @as("NotifyWorkersFailureCode")
  notifyWorkersFailureCode: option<notifyWorkersFailureCode>,
}
@ocaml.doc("<p>The Locale data structure represents a geographical region or location.</p>")
type locale = {
  @ocaml.doc("<p>The state or subdivision of the locale. A valid ISO 3166-2
            subdivision code. For example, the code WA refers to the state of
            Washington.</p>")
  @as("Subdivision")
  subdivision: option<countryParameters>,
  @ocaml.doc("<p> The country of the locale. Must be a valid ISO 3166 country
            code. For example, the code US refers to the United States of
            America.
        </p>")
  @as("Country")
  country: countryParameters,
}
type integerList = array<integer_>
@ocaml.doc("<p> The HITLayoutParameter data structure defines parameter
            values used with a HITLayout. A HITLayout is a reusable Amazon
            Mechanical Turk project template used to provide Human Intelligence
            Task (HIT) question data for CreateHIT.
        </p>")
type hitlayoutParameter = {
  @ocaml.doc("<p>The value substituted for the parameter referenced in the
            HITLayout.
        </p>")
  @as("Value")
  value: string_,
  @ocaml.doc("<p> The name of the parameter in the HITLayout.
        </p>")
  @as("Name")
  name: string_,
}
type eventTypeList = array<eventType>
type customerIdList = array<customerId>
@ocaml.doc("<p>An object representing a Bonus payment paid to a Worker.</p>")
type bonusPayment = {
  @ocaml.doc("<p>The date and time of when the bonus was granted.</p>") @as("GrantTime")
  grantTime: option<timestamp_>,
  @ocaml.doc("<p>The Reason text given when the bonus was granted, if any.</p>") @as("Reason")
  reason: option<string_>,
  @ocaml.doc("<p>The ID of the assignment associated with this bonus payment.</p>")
  @as("AssignmentId")
  assignmentId: option<entityId>,
  @as("BonusAmount") bonusAmount: option<currencyAmount>,
  @ocaml.doc("<p>The ID of the Worker to whom the bonus was paid.</p>") @as("WorkerId")
  workerId: option<customerId>,
}
type assignmentStatusList = array<assignmentStatus>
@ocaml.doc("<p> The Assignment data structure represents a single assignment
            of a HIT to a Worker. The assignment tracks the Worker's efforts to
            complete the HIT, and contains the results for later retrieval.
        </p>")
type assignment = {
  @ocaml.doc("<p> The feedback string included with the call to the
            ApproveAssignment operation or the RejectAssignment operation, if the
            Requester approved or rejected the assignment and specified feedback.</p>")
  @as("RequesterFeedback")
  requesterFeedback: option<string_>,
  @ocaml.doc("<p> The Worker's answers submitted for the HIT contained in a
            QuestionFormAnswers document, if the Worker provides an answer. If
            the Worker does not provide any answers, Answer may contain a
            QuestionFormAnswers document, or Answer may be empty.</p>")
  @as("Answer")
  answer: option<string_>,
  @ocaml.doc("<p> The date and time of the deadline for the assignment. This
            value is derived from the deadline specification for the HIT and the
            date and time the Worker accepted the HIT.</p>")
  @as("Deadline")
  deadline: option<timestamp_>,
  @ocaml.doc("<p> If the Worker has submitted results and the Requester has
            rejected the results, RejectionTime is the date and time the
            Requester rejected the results.</p>")
  @as("RejectionTime")
  rejectionTime: option<timestamp_>,
  @ocaml.doc("<p> If the Worker has submitted results and the Requester has
            approved the results, ApprovalTime is the date and time the Requester
            approved the results. This value is omitted from the assignment if
            the Requester has not yet approved the results.</p>")
  @as("ApprovalTime")
  approvalTime: option<timestamp_>,
  @ocaml.doc("<p> If the Worker has submitted results, SubmitTime is the date
            and time the assignment was submitted. This value is omitted from the
            assignment if the Worker has not yet submitted results.</p>")
  @as("SubmitTime")
  submitTime: option<timestamp_>,
  @ocaml.doc("<p> The date and time the Worker accepted the assignment.</p>") @as("AcceptTime")
  acceptTime: option<timestamp_>,
  @ocaml.doc("<p> If results have been submitted, AutoApprovalTime is the date
            and time the results of the assignment results are considered
            Approved automatically if they have not already been explicitly
            approved or rejected by the Requester. This value is derived from the
            auto-approval delay specified by the Requester in the HIT. This value
            is omitted from the assignment if the Worker has not yet submitted
            results.</p>")
  @as("AutoApprovalTime")
  autoApprovalTime: option<timestamp_>,
  @ocaml.doc("<p> The status of the assignment.</p>") @as("AssignmentStatus")
  assignmentStatus: option<assignmentStatus>,
  @ocaml.doc("<p> The ID of the HIT.</p>") @as("HITId") hitid: option<entityId>,
  @ocaml.doc("<p> The ID of the Worker who accepted the HIT.</p>") @as("WorkerId")
  workerId: option<customerId>,
  @ocaml.doc("<p> A unique identifier for the assignment.</p>") @as("AssignmentId")
  assignmentId: option<entityId>,
}
type workerBlockList = array<workerBlock>
type reviewResultDetailList = array<reviewResultDetail>
type reviewActionDetailList = array<reviewActionDetail>
type qualificationTypeList = array<qualificationType>
type qualificationRequestList = array<qualificationRequest>
@ocaml.doc("<p>The Qualification data structure represents a Qualification
            assigned to a user, including the Qualification type and the value
            (score).</p>")
type qualification = {
  @ocaml.doc("<p> The status of the Qualification. Valid values are Granted |
            Revoked.</p>")
  @as("Status")
  status: option<qualificationStatus>,
  @as("LocaleValue") localeValue: option<locale>,
  @ocaml.doc("<p> The value (score) of the Qualification, if the Qualification
            has an integer value.</p>")
  @as("IntegerValue")
  integerValue: option<integer_>,
  @ocaml.doc("<p> The date and time the Qualification was granted to the
            Worker. If the Worker's Qualification was revoked, and then
            re-granted based on a new Qualification request, GrantTime is the
            date and time of the last call to the AcceptQualificationRequest
            operation.</p>")
  @as("GrantTime")
  grantTime: option<timestamp_>,
  @ocaml.doc("<p> The ID of the Worker who possesses the Qualification.
        </p>")
  @as("WorkerId")
  workerId: option<customerId>,
  @ocaml.doc("<p> The ID of the Qualification type for the Qualification.</p>")
  @as("QualificationTypeId")
  qualificationTypeId: option<entityId>,
}
@ocaml.doc("<p> This data structure is the data type for the AnswerKey
            parameter of the ScoreMyKnownAnswers/2011-09-01 Review Policy.
        </p>")
type parameterMapEntry = {
  @ocaml.doc("<p> The list of answers to the question specified in the
            MapEntry Key element. The Worker must match all values in order for
            the answer to be scored correctly.
        </p>")
  @as("Values")
  values: option<stringList>,
  @ocaml.doc("<p> The QuestionID from the HIT that is used to identify which
            question requires Mechanical Turk to score as part of the
            ScoreMyKnownAnswers/2011-09-01 Review Policy.
        </p>")
  @as("Key")
  key: option<string_>,
}
type notifyWorkersFailureStatusList = array<notifyWorkersFailureStatus>
@ocaml.doc("<p>The NotificationSpecification data structure describes a HIT
            event notification for a HIT type.</p>")
type notificationSpecification = {
  @ocaml.doc("<p> The list of events that should cause notifications to be
            sent. Valid Values: AssignmentAccepted | AssignmentAbandoned |
            AssignmentReturned | AssignmentSubmitted | AssignmentRejected |
            AssignmentApproved | HITCreated | HITExtended | HITDisposed |
            HITReviewable | HITExpired | Ping. The Ping event is only valid for
            the SendTestEventNotification operation.
        </p>")
  @as("EventTypes")
  eventTypes: eventTypeList,
  @ocaml.doc("<p>The version of the Notification API to use. Valid value is
            2006-05-05.</p>")
  @as("Version")
  version: string_,
  @ocaml.doc("<p> The method Amazon Mechanical Turk uses to send the
            notification. Valid Values: Email | SQS | SNS.
        </p>")
  @as("Transport")
  transport: notificationTransport,
  @ocaml.doc("<p>
            The target for notification messages. The Destination’s format is determined by the specified Transport:
        </p>
        <ul>
            <li>
                <p>When Transport is Email, the Destination is your email address.</p>
            </li>
            <li>
                <p>When Transport is SQS, the Destination is your queue URL.</p>
            </li>
            <li>
                <p>When Transport is SNS, the Destination is the ARN of your topic.</p>
            </li>
         </ul>")
  @as("Destination")
  destination: string_,
}
type localeList = array<locale>
type hitlayoutParameterList = array<hitlayoutParameter>
type bonusPaymentList = array<bonusPayment>
type assignmentList = array<assignment>
@ocaml.doc("<p> Contains both ReviewResult and ReviewAction elements for a
            particular HIT.
        </p>")
type reviewReport = {
  @ocaml.doc("<p> A list of ReviewAction objects for each action specified in
            the Review Policy.
        </p>")
  @as("ReviewActions")
  reviewActions: option<reviewActionDetailList>,
  @ocaml.doc("<p> A list of ReviewResults objects for each action specified in
            the Review Policy.
        </p>")
  @as("ReviewResults")
  reviewResults: option<reviewResultDetailList>,
}
@ocaml.doc("<p>
            The QualificationRequirement data structure describes a Qualification that a Worker must have
            before the Worker is allowed to accept a HIT.
            A requirement may optionally state that a Worker must have the Qualification in order to preview the HIT, or
            see the HIT in search results.
        </p>")
type qualificationRequirement = {
  @ocaml.doc("<p> Setting this attribute prevents Workers whose Qualifications do not meet
            this QualificationRequirement from taking the specified action. Valid arguments include
            \"Accept\" (Worker cannot accept the HIT, but can preview the HIT and see it in their search results),
            \"PreviewAndAccept\" (Worker cannot accept or preview the HIT, but can see the HIT in their search results),
            and \"DiscoverPreviewAndAccept\" (Worker cannot accept, preview, or see the HIT in their search results). It's possible for you to create a HIT with multiple
            QualificationRequirements (which can have different values for the ActionGuarded attribute). In this case,
            the Worker is only permitted to perform an action when they have met all QualificationRequirements guarding
            the action. The actions in the order of least restrictive to most restrictive are Discover, Preview and Accept.
            For example, if a Worker meets all QualificationRequirements that are set to DiscoverPreviewAndAccept, but do
            not meet all requirements that are set with PreviewAndAccept, then the Worker will be able to Discover, i.e. see the
            HIT in their search result, but will not be able to Preview or Accept the HIT. ActionsGuarded should not be used in combination with the
            <code>RequiredToPreview</code> field.
        </p>")
  @as("ActionsGuarded")
  actionsGuarded: option<hitaccessActions>,
  @ocaml.doc("<p> DEPRECATED: Use the <code>ActionsGuarded</code> field instead.
            If RequiredToPreview is true, the question data for the HIT will not be shown
            when a Worker whose Qualifications do not meet this requirement tries
            to preview the HIT. That is, a Worker's Qualifications must meet all
            of the requirements for which RequiredToPreview is true in order to
            preview the HIT. If a Worker meets all of the requirements where
            RequiredToPreview is true (or if there are no such requirements), but
            does not meet all of the requirements for the HIT, the Worker will be
            allowed to preview the HIT's question data, but will not be allowed
            to accept and complete the HIT. The default is false. This should not
            be used in combination with the <code>ActionsGuarded</code> field.
        </p>")
  @as("RequiredToPreview")
  requiredToPreview: option<boolean_>,
  @ocaml.doc("<p> The locale value to compare against the Qualification's
            value. The local value must be a valid ISO 3166 country code or
            supports ISO 3166-2 subdivisions. LocaleValue can only be used with a
            Worker_Locale QualificationType ID. LocaleValue can only be used with
            the EqualTo, NotEqualTo, In, and NotIn comparators. You must only use
            a single LocaleValue element when using the EqualTo or NotEqualTo
            comparators. When performing a set comparison by using the In or the
            NotIn comparator, you can use up to 30 LocaleValue elements in a
            QualificationRequirement data structure.
        </p>")
  @as("LocaleValues")
  localeValues: option<localeList>,
  @ocaml.doc("<p> The integer value to compare against the Qualification's
            value. IntegerValue must not be present if Comparator is Exists or
            DoesNotExist. IntegerValue can only be used if the Qualification type
            has an integer value; it cannot be used with the Worker_Locale
            QualificationType ID. When performing a set comparison by using the
            In or the NotIn comparator, you can use up to 15 IntegerValue
            elements in a QualificationRequirement data structure.
        </p>")
  @as("IntegerValues")
  integerValues: option<integerList>,
  @ocaml.doc("<p>The kind of comparison to make against a Qualification's
            value. You can compare a Qualification's value to an IntegerValue to
            see if it is LessThan, LessThanOrEqualTo, GreaterThan,
            GreaterThanOrEqualTo, EqualTo, or NotEqualTo the IntegerValue. You
            can compare it to a LocaleValue to see if it is EqualTo, or
            NotEqualTo the LocaleValue. You can check to see if the value is In
            or NotIn a set of IntegerValue
            or LocaleValue values. Lastly, a
            Qualification requirement can also
            test if a Qualification Exists or
            DoesNotExist in the user's profile,
            regardless of its value.
        </p>")
  @as("Comparator")
  comparator: comparator,
  @ocaml.doc("<p> The ID of the Qualification type for the requirement.</p>")
  @as("QualificationTypeId")
  qualificationTypeId: string_,
}
type qualificationList = array<qualification>
type parameterMapEntryList = array<parameterMapEntry>
type qualificationRequirementList = array<qualificationRequirement>
@ocaml.doc("<p> Name of the parameter from the Review policy.
        </p>")
type policyParameter = {
  @ocaml.doc("<p> List of ParameterMapEntry objects.
        </p>")
  @as("MapEntries")
  mapEntries: option<parameterMapEntryList>,
  @ocaml.doc("<p> The list of values of the Parameter</p>") @as("Values")
  values: option<stringList>,
  @ocaml.doc("<p> Name of the parameter from the list of Review Polices.
        </p>")
  @as("Key")
  key: option<string_>,
}
type policyParameterList = array<policyParameter>
@ocaml.doc("<p> The HIT data structure represents a single HIT, including
            all the information necessary for a Worker to accept and complete the
            HIT.</p>")
type hit = {
  @ocaml.doc("<p> The number of assignments for this HIT that have been
            approved or rejected.</p>")
  @as("NumberOfAssignmentsCompleted")
  numberOfAssignmentsCompleted: option<integer_>,
  @ocaml.doc("<p> The number of assignments for this HIT that are available
            for Workers to accept.</p>")
  @as("NumberOfAssignmentsAvailable")
  numberOfAssignmentsAvailable: option<integer_>,
  @ocaml.doc("<p> The number of assignments for this HIT that are being
            previewed or have been accepted by Workers, but have not yet been
            submitted, returned, or abandoned.</p>")
  @as("NumberOfAssignmentsPending")
  numberOfAssignmentsPending: option<integer_>,
  @ocaml.doc("<p> Indicates the review status of the HIT. Valid Values are
            NotReviewed | MarkedForReview | ReviewedAppropriate |
            ReviewedInappropriate.</p>")
  @as("HITReviewStatus")
  hitreviewStatus: option<hitreviewStatus>,
  @ocaml.doc("<p>
            Conditions that a Worker's Qualifications must meet in order
            to accept the HIT. A HIT can have between zero and ten
            Qualification requirements. All requirements must be met in
            order for a Worker to accept the HIT. Additionally, other
            actions can be restricted using the <code>ActionsGuarded</code>
            field on each <code>QualificationRequirement</code> structure.
        </p>")
  @as("QualificationRequirements")
  qualificationRequirements: option<qualificationRequirementList>,
  @ocaml.doc("<p> An arbitrary data field the Requester who created the HIT
            can use. This field is visible only to the creator of the HIT.</p>")
  @as("RequesterAnnotation")
  requesterAnnotation: option<string_>,
  @ocaml.doc("<p> The length of time, in seconds, that a Worker has to
            complete the HIT after accepting it.</p>")
  @as("AssignmentDurationInSeconds")
  assignmentDurationInSeconds: option<long>,
  @ocaml.doc("<p>The date and time the HIT expires.</p>") @as("Expiration")
  expiration: option<timestamp_>,
  @ocaml.doc("<p>The amount of time, in seconds, after the Worker submits an
            assignment for the HIT that the results are automatically approved by
            Amazon Mechanical Turk. This is the amount of time the Requester has
            to reject an assignment submitted by a Worker before the assignment
            is auto-approved and the Worker is paid.
        </p>")
  @as("AutoApprovalDelayInSeconds")
  autoApprovalDelayInSeconds: option<long>,
  @as("Reward") reward: option<currencyAmount>,
  @ocaml.doc("<p>The number of times the HIT can be accepted and completed
            before the HIT becomes unavailable.
        </p>")
  @as("MaxAssignments")
  maxAssignments: option<integer_>,
  @ocaml.doc("<p>The status of the HIT and its assignments. Valid Values are
            Assignable | Unassignable | Reviewable | Reviewing | Disposed.
        </p>")
  @as("HITStatus")
  hitstatus: option<hitstatus>,
  @ocaml.doc("<p> One or more words or phrases that describe the HIT,
            separated by commas. Search terms similar to the keywords of a HIT
            are more likely to have the HIT in the search results.</p>")
  @as("Keywords")
  keywords: option<string_>,
  @ocaml.doc("<p> The data the Worker completing the HIT uses produce the
            results. This is either either a QuestionForm, HTMLQuestion or an
            ExternalQuestion data structure.</p>")
  @as("Question")
  question: option<string_>,
  @ocaml.doc("<p> A general description of the HIT.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p> The title of the HIT.</p>") @as("Title") title: option<string_>,
  @ocaml.doc("<p> The date and time the HIT was created.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p> The ID of the HIT Layout of this HIT.</p>") @as("HITLayoutId")
  hitlayoutId: option<entityId>,
  @ocaml.doc("<p> The ID of the HIT Group of this HIT.</p>") @as("HITGroupId")
  hitgroupId: option<entityId>,
  @ocaml.doc("<p>The ID of the HIT type of this HIT</p>") @as("HITTypeId")
  hittypeId: option<entityId>,
  @ocaml.doc("<p> A unique identifier for the HIT.</p>") @as("HITId") hitid: option<entityId>,
}
@ocaml.doc("<p> HIT Review Policy data structures represent HIT review
            policies, which you specify when you create a HIT.
        </p>")
type reviewPolicy = {
  @ocaml.doc("<p>Name of the parameter from the Review policy.</p>") @as("Parameters")
  parameters: option<policyParameterList>,
  @ocaml.doc("<p> Name of a Review Policy: SimplePlurality/2011-09-01 or
            ScoreMyKnownAnswers/2011-09-01
        </p>")
  @as("PolicyName")
  policyName: string_,
}
type hitlist = array<hit>
@ocaml.doc("<fullname>Amazon Mechanical Turk API Reference</fullname>")
module UpdateHITTypeOfHIT = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the new HIT type.</p>") @as("HITTypeId") hittypeId: entityId,
    @ocaml.doc("<p>The HIT to update.</p>") @as("HITId") hitid: entityId,
  }

  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "UpdateHITTypeOfHITCommand"
  let make = (~hittypeId, ~hitid, ()) => new({hittypeId: hittypeId, hitid: hitid})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateHITReviewStatus = {
  type t
  type request = {
    @ocaml.doc("<p>
            Specifies how to update the HIT status. Default is <code>False</code>.
        </p>
        <ul>
            <li>
                <p>
                    Setting this to false will only transition a HIT from <code>Reviewable</code> to <code>Reviewing</code>
                </p>
            </li>
            <li>
                <p>
                    Setting this to true will only transition a HIT from <code>Reviewing</code> to <code>Reviewable</code>
                </p>
            </li>
         </ul>")
    @as("Revert")
    revert: option<boolean_>,
    @ocaml.doc("<p>
            The ID of the HIT to update.
        </p>")
    @as("HITId")
    hitid: entityId,
  }

  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "UpdateHITReviewStatusCommand"
  let make = (~hitid, ~revert=?, ()) => new({revert: revert, hitid: hitid})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateExpirationForHIT = {
  type t
  type request = {
    @ocaml.doc("<p>
            The date and time at which you want the HIT to expire
        </p>")
    @as("ExpireAt")
    expireAt: timestamp_,
    @ocaml.doc("<p>
            The HIT to update.
        </p>")
    @as("HITId")
    hitid: entityId,
  }

  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "UpdateExpirationForHITCommand"
  let make = (~expireAt, ~hitid, ()) => new({expireAt: expireAt, hitid: hitid})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SendBonus = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier for this request, which allows you to
            retry the call on error without granting multiple bonuses. This is
            useful in cases such as network timeouts where it is unclear whether
            or not the call succeeded on the server. If the bonus already exists
            in the system from a previous call using the same UniqueRequestToken,
            subsequent calls will return an error with a message containing the
            request ID.</p>")
    @as("UniqueRequestToken")
    uniqueRequestToken: option<idempotencyToken>,
    @ocaml.doc("<p>A message that explains the reason for the bonus payment. The
            Worker receiving the bonus can see this message.</p>")
    @as("Reason")
    reason: string_,
    @ocaml.doc("<p>The ID of the assignment for which this bonus is paid.</p>") @as("AssignmentId")
    assignmentId: entityId,
    @ocaml.doc("<p>
            The Bonus amount is a US Dollar amount specified using a string (for example, \"5\" represents $5.00 USD and
            \"101.42\" represents $101.42 USD). Do not include currency symbols or currency codes.
        </p>")
    @as("BonusAmount")
    bonusAmount: currencyAmount,
    @ocaml.doc("<p>The ID of the Worker being paid the bonus.</p>") @as("WorkerId")
    workerId: customerId,
  }

  @module("@aws-sdk/client-mturk-requester") @new external new: request => t = "SendBonusCommand"
  let make = (~reason, ~assignmentId, ~bonusAmount, ~workerId, ~uniqueRequestToken=?, ()) =>
    new({
      uniqueRequestToken: uniqueRequestToken,
      reason: reason,
      assignmentId: assignmentId,
      bonusAmount: bonusAmount,
      workerId: workerId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RejectQualificationRequest = {
  type t
  type request = {
    @ocaml.doc("<p>A text message explaining why the request was rejected, to be
            shown to the Worker who made the request.</p>")
    @as("Reason")
    reason: option<string_>,
    @ocaml.doc("<p>
            The ID of the Qualification request, as returned by the
            <code>ListQualificationRequests</code>
            operation.
        </p>")
    @as("QualificationRequestId")
    qualificationRequestId: string_,
  }

  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "RejectQualificationRequestCommand"
  let make = (~qualificationRequestId, ~reason=?, ()) =>
    new({reason: reason, qualificationRequestId: qualificationRequestId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RejectAssignment = {
  type t
  type request = {
    @ocaml.doc("<p>
            A message for the Worker, which the Worker can see in the Status section of the web site.
        </p>")
    @as("RequesterFeedback")
    requesterFeedback: string_,
    @ocaml.doc("<p>
            The ID of the assignment. The assignment must correspond to a HIT created by the Requester.
        </p>")
    @as("AssignmentId")
    assignmentId: entityId,
  }

  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "RejectAssignmentCommand"
  let make = (~requesterFeedback, ~assignmentId, ()) =>
    new({requesterFeedback: requesterFeedback, assignmentId: assignmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetFileUploadURL = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the question with a FileUploadAnswer, as
            specified in the QuestionForm of the HIT.</p>")
    @as("QuestionIdentifier")
    questionIdentifier: string_,
    @ocaml.doc("<p>The ID of the assignment that contains the question with a
            FileUploadAnswer.</p>")
    @as("AssignmentId")
    assignmentId: entityId,
  }
  type response = {
    @ocaml.doc("<p> A temporary URL for the file that the Worker uploaded for
            the answer.
        </p>")
    @as("FileUploadURL")
    fileUploadURL: option<string_>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "GetFileUploadURLCommand"
  let make = (~questionIdentifier, ~assignmentId, ()) =>
    new({questionIdentifier: questionIdentifier, assignmentId: assignmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccountBalance = {
  type t

  type response = {
    @as("OnHoldBalance") onHoldBalance: option<currencyAmount>,
    @as("AvailableBalance") availableBalance: option<currencyAmount>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new: unit => t = "GetAccountBalanceCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateQualificationFromWorker = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A text message that explains why the Qualification was revoked. The user who had the Qualification sees this message.</p>"
    )
    @as("Reason")
    reason: option<string_>,
    @ocaml.doc("<p>The ID of the Qualification type of the Qualification to be revoked.</p>")
    @as("QualificationTypeId")
    qualificationTypeId: entityId,
    @ocaml.doc("<p>The ID of the Worker who possesses the Qualification to be revoked.</p>")
    @as("WorkerId")
    workerId: customerId,
  }

  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "DisassociateQualificationFromWorkerCommand"
  let make = (~qualificationTypeId, ~workerId, ~reason=?, ()) =>
    new({reason: reason, qualificationTypeId: qualificationTypeId, workerId: workerId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteWorkerBlock = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A message that explains the reason for unblocking the Worker. The Worker does not see this message.</p>"
    )
    @as("Reason")
    reason: option<string_>,
    @ocaml.doc("<p>The ID of the Worker to unblock.</p>") @as("WorkerId") workerId: customerId,
  }

  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "DeleteWorkerBlockCommand"
  let make = (~workerId, ~reason=?, ()) => new({reason: reason, workerId: workerId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteQualificationType = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the QualificationType to dispose.</p>") @as("QualificationTypeId")
    qualificationTypeId: entityId,
  }

  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "DeleteQualificationTypeCommand"
  let make = (~qualificationTypeId, ()) => new({qualificationTypeId: qualificationTypeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteHIT = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the HIT to be deleted.</p>") @as("HITId") hitid: entityId,
  }

  @module("@aws-sdk/client-mturk-requester") @new external new: request => t = "DeleteHITCommand"
  let make = (~hitid, ()) => new({hitid: hitid})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateWorkerBlock = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A message explaining the reason for blocking the Worker. This parameter enables you to keep track of your Workers. The Worker does not see this message.</p>"
    )
    @as("Reason")
    reason: string_,
    @ocaml.doc("<p>The ID of the Worker to block.</p>") @as("WorkerId") workerId: customerId,
  }

  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "CreateWorkerBlockCommand"
  let make = (~reason, ~workerId, ()) => new({reason: reason, workerId: workerId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateAdditionalAssignmentsForHIT = {
  type t
  type request = {
    @ocaml.doc("<p>
            A unique identifier for this request, which allows you to retry the call on error
            without extending the HIT multiple times.
            This is useful in cases such as network timeouts where it is unclear whether or not
            the call succeeded on the server. If the extend HIT already exists in the system
            from a previous call using the same <code>UniqueRequestToken</code>,
            subsequent calls will return an error with a message containing the request ID.
        </p>")
    @as("UniqueRequestToken")
    uniqueRequestToken: option<idempotencyToken>,
    @ocaml.doc("<p>The number of additional assignments to request for this HIT.</p>")
    @as("NumberOfAdditionalAssignments")
    numberOfAdditionalAssignments: integer_,
    @ocaml.doc("<p>The ID of the HIT to extend.</p>") @as("HITId") hitid: entityId,
  }

  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "CreateAdditionalAssignmentsForHITCommand"
  let make = (~numberOfAdditionalAssignments, ~hitid, ~uniqueRequestToken=?, ()) =>
    new({
      uniqueRequestToken: uniqueRequestToken,
      numberOfAdditionalAssignments: numberOfAdditionalAssignments,
      hitid: hitid,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateQualificationWithWorker = {
  type t
  type request = {
    @ocaml.doc("<p>
            Specifies whether to send a notification email message to the Worker
            saying that the qualification was assigned to the Worker.
            Note: this is true by default.
        </p>")
    @as("SendNotification")
    sendNotification: option<boolean_>,
    @ocaml.doc("<p>The value of the Qualification to assign.</p>") @as("IntegerValue")
    integerValue: option<integer_>,
    @ocaml.doc("<p>
            The ID of the Worker to whom the Qualification is being assigned.
            Worker IDs are included with submitted HIT assignments and Qualification requests.
        </p>")
    @as("WorkerId")
    workerId: customerId,
    @ocaml.doc("<p>The ID of the Qualification type to use for the assigned Qualification.</p>")
    @as("QualificationTypeId")
    qualificationTypeId: entityId,
  }

  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "AssociateQualificationWithWorkerCommand"
  let make = (~workerId, ~qualificationTypeId, ~sendNotification=?, ~integerValue=?, ()) =>
    new({
      sendNotification: sendNotification,
      integerValue: integerValue,
      workerId: workerId,
      qualificationTypeId: qualificationTypeId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ApproveAssignment = {
  type t
  type request = {
    @ocaml.doc("<p>
            A flag indicating that an assignment should be approved even if it was previously rejected. Defaults to <code>False</code>.
        </p>")
    @as("OverrideRejection")
    overrideRejection: option<boolean_>,
    @ocaml.doc("<p>
            A message for the Worker, which the Worker can see in the Status section of the web site.
        </p>")
    @as("RequesterFeedback")
    requesterFeedback: option<string_>,
    @ocaml.doc("<p>
            The ID of the assignment. The assignment must correspond to a HIT created by the Requester.
        </p>")
    @as("AssignmentId")
    assignmentId: entityId,
  }

  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "ApproveAssignmentCommand"
  let make = (~assignmentId, ~overrideRejection=?, ~requesterFeedback=?, ()) =>
    new({
      overrideRejection: overrideRejection,
      requesterFeedback: requesterFeedback,
      assignmentId: assignmentId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AcceptQualificationRequest = {
  type t
  type request = {
    @ocaml.doc("<p>
            The value of the Qualification. You can omit this value if you are using the
            presence or absence of the Qualification as the basis for a HIT requirement.
        </p>")
    @as("IntegerValue")
    integerValue: option<integer_>,
    @ocaml.doc(
      "<p>The ID of the Qualification request, as returned by the <code>GetQualificationRequests</code> operation.</p>"
    )
    @as("QualificationRequestId")
    qualificationRequestId: string_,
  }

  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "AcceptQualificationRequestCommand"
  let make = (~qualificationRequestId, ~integerValue=?, ()) =>
    new({integerValue: integerValue, qualificationRequestId: qualificationRequestId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateQualificationType = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Qualification value to use for automatically granted Qualifications. This parameter is used only if the AutoGranted parameter is true.</p>"
    )
    @as("AutoGrantedValue")
    autoGrantedValue: option<integer_>,
    @ocaml.doc("<p>Specifies whether requests for the Qualification type are granted immediately, without prompting the Worker with a Qualification test.</p>
        <p>Constraints: If the Test parameter is specified, this parameter cannot be true.</p>")
    @as("AutoGranted")
    autoGranted: option<boolean_>,
    @ocaml.doc("<p>The amount of time, in seconds, that Workers must wait
            after requesting a Qualification of the specified Qualification type
            before they can retry the Qualification request. It is not possible to
            disable retries for a Qualification type after it has been created with
            retries enabled. If you want to disable retries, you must dispose of
            the existing retry-enabled Qualification type using
            DisposeQualificationType and then create a new Qualification type with
            retries disabled using CreateQualificationType.</p>")
    @as("RetryDelayInSeconds")
    retryDelayInSeconds: option<long>,
    @ocaml.doc(
      "<p>The number of seconds the Worker has to complete the Qualification test, starting from the time the Worker requests the Qualification.</p>"
    )
    @as("TestDurationInSeconds")
    testDurationInSeconds: option<long>,
    @ocaml.doc(
      "<p>The answers to the Qualification test specified in the Test parameter, in the form of an AnswerKey data structure.</p>"
    )
    @as("AnswerKey")
    answerKey: option<string_>,
    @ocaml.doc("<p>The questions for the Qualification test a Worker must answer correctly to obtain a Qualification of this type. If this parameter is specified, <code>TestDurationInSeconds</code> must also be specified.</p>
        <p>Constraints: Must not be longer than 65535 bytes. Must be a QuestionForm data structure. This parameter cannot be specified if AutoGranted is true.</p>
        <p>Constraints: None. If not specified, the Worker may request the Qualification without answering any questions.</p>")
    @as("Test")
    test: option<string_>,
    @ocaml.doc("<p>The new status of the Qualification type - Active | Inactive</p>")
    @as("QualificationTypeStatus")
    qualificationTypeStatus: option<qualificationTypeStatus>,
    @ocaml.doc("<p>The new description of the Qualification type.</p>") @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>The ID of the Qualification type to update.</p>") @as("QualificationTypeId")
    qualificationTypeId: entityId,
  }
  type response = {
    @ocaml.doc("<p> Contains a QualificationType data structure.</p>") @as("QualificationType")
    qualificationType: option<qualificationType>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "UpdateQualificationTypeCommand"
  let make = (
    ~qualificationTypeId,
    ~autoGrantedValue=?,
    ~autoGranted=?,
    ~retryDelayInSeconds=?,
    ~testDurationInSeconds=?,
    ~answerKey=?,
    ~test=?,
    ~qualificationTypeStatus=?,
    ~description=?,
    (),
  ) =>
    new({
      autoGrantedValue: autoGrantedValue,
      autoGranted: autoGranted,
      retryDelayInSeconds: retryDelayInSeconds,
      testDurationInSeconds: testDurationInSeconds,
      answerKey: answerKey,
      test: test,
      qualificationTypeStatus: qualificationTypeStatus,
      description: description,
      qualificationTypeId: qualificationTypeId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetQualificationType = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the QualificationType.</p>") @as("QualificationTypeId")
    qualificationTypeId: entityId,
  }
  type response = {
    @ocaml.doc("<p> The returned Qualification Type</p>") @as("QualificationType")
    qualificationType: option<qualificationType>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "GetQualificationTypeCommand"
  let make = (~qualificationTypeId, ()) => new({qualificationTypeId: qualificationTypeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateQualificationType = {
  type t
  type request = {
    @ocaml.doc("<p>The Qualification value to use for automatically granted
            Qualifications. This parameter is used only if the AutoGranted
            parameter is true.</p>")
    @as("AutoGrantedValue")
    autoGrantedValue: option<integer_>,
    @ocaml.doc("<p>Specifies whether requests for the Qualification type are
            granted immediately, without prompting the Worker with a
            Qualification test.</p>
        <p>Constraints: If the Test parameter is specified, this
            parameter cannot be true.</p>")
    @as("AutoGranted")
    autoGranted: option<boolean_>,
    @ocaml.doc("<p>The number of seconds the Worker has to complete the
            Qualification test, starting from the time the Worker requests the
            Qualification.</p>")
    @as("TestDurationInSeconds")
    testDurationInSeconds: option<long>,
    @ocaml.doc("<p>The answers to the Qualification test specified in the Test
            parameter, in the form of an AnswerKey data structure.</p>
        <p>Constraints: Must not be longer than 65535 bytes.</p>
        <p>Constraints: None. If not specified, you must process
            Qualification requests manually.</p>")
    @as("AnswerKey")
    answerKey: option<string_>,
    @ocaml.doc("<p>
            The questions for the Qualification test a Worker must answer
            correctly to obtain a Qualification of this type. If this parameter
            is specified,
            <code>TestDurationInSeconds</code>
            must also be specified.
        </p>
        <p>Constraints: Must not be longer than 65535 bytes. Must be a
            QuestionForm data structure. This parameter cannot be specified if
            AutoGranted is true.</p>
        <p>Constraints: None. If not specified, the Worker may request
            the Qualification without answering any questions.</p>")
    @as("Test")
    test: option<string_>,
    @ocaml.doc("<p>The number of seconds that a Worker must wait after
            requesting a Qualification of the Qualification type before the
            worker can retry the Qualification request.</p>
        <p>Constraints: None. If not specified, retries are disabled and
            Workers can request a Qualification of this type only once, even if
            the Worker has not been granted the Qualification. It is not possible
            to disable retries for a Qualification type after it has been created
            with retries enabled. If you want to disable retries, you must delete
            existing retry-enabled Qualification type and then create a new
            Qualification type with retries disabled.</p>")
    @as("RetryDelayInSeconds")
    retryDelayInSeconds: option<long>,
    @ocaml.doc("<p>The initial status of the Qualification type.</p>
        <p>Constraints: Valid values are: Active | Inactive</p>")
    @as("QualificationTypeStatus")
    qualificationTypeStatus: qualificationTypeStatus,
    @ocaml.doc("<p>A long description for the Qualification type. On the Amazon
            Mechanical Turk website, the long description is displayed when a
            Worker examines a Qualification type.</p>")
    @as("Description")
    description: string_,
    @ocaml.doc("<p>One or more words or phrases that describe the Qualification
            type, separated by commas. The keywords of a type make the type
            easier to find during a search.</p>")
    @as("Keywords")
    keywords: option<string_>,
    @ocaml.doc("<p> The name you give to the Qualification type. The type name
            is used to represent the Qualification to Workers, and to find the
            type using a Qualification type search. It must be unique across all
            of your Qualification types.</p>")
    @as("Name")
    name: string_,
  }
  type response = {
    @ocaml.doc("<p>The created Qualification type, returned as a
            QualificationType data structure.</p>")
    @as("QualificationType")
    qualificationType: option<qualificationType>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "CreateQualificationTypeCommand"
  let make = (
    ~qualificationTypeStatus,
    ~description,
    ~name,
    ~autoGrantedValue=?,
    ~autoGranted=?,
    ~testDurationInSeconds=?,
    ~answerKey=?,
    ~test=?,
    ~retryDelayInSeconds=?,
    ~keywords=?,
    (),
  ) =>
    new({
      autoGrantedValue: autoGrantedValue,
      autoGranted: autoGranted,
      testDurationInSeconds: testDurationInSeconds,
      answerKey: answerKey,
      test: test,
      retryDelayInSeconds: retryDelayInSeconds,
      qualificationTypeStatus: qualificationTypeStatus,
      description: description,
      keywords: keywords,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateNotificationSettings = {
  type t
  type request = {
    @ocaml.doc("<p>
            Specifies whether notifications are sent for HITs of this HIT type,
            according to the notification specification.
            You must specify either the Notification parameter or the Active parameter
            for the call to UpdateNotificationSettings to succeed.
        </p>")
    @as("Active")
    active: option<boolean_>,
    @ocaml.doc("<p>
            The notification specification for the HIT type.
        </p>")
    @as("Notification")
    notification: option<notificationSpecification>,
    @ocaml.doc("<p>
            The ID of the HIT type whose notification specification is being updated.
        </p>")
    @as("HITTypeId")
    hittypeId: entityId,
  }

  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "UpdateNotificationSettingsCommand"
  let make = (~hittypeId, ~active=?, ~notification=?, ()) =>
    new({active: active, notification: notification, hittypeId: hittypeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SendTestEventNotification = {
  type t
  type request = {
    @ocaml.doc("<p>
            The event to simulate to test the notification specification.
            This event is included in the test message even if the notification specification
            does not include the event type.
            The notification specification does not filter out the test event.
        </p>")
    @as("TestEventType")
    testEventType: eventType,
    @ocaml.doc("<p>
            The notification specification to test. This value is identical to the value
            you would provide to the UpdateNotificationSettings operation when you establish
            the notification specification for a HIT type.
        </p>")
    @as("Notification")
    notification: notificationSpecification,
  }

  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "SendTestEventNotificationCommand"
  let make = (~testEventType, ~notification, ()) =>
    new({testEventType: testEventType, notification: notification})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module NotifyWorkers = {
  type t
  type request = {
    @ocaml.doc("<p>A list of Worker IDs you wish to notify. You
            can notify upto
            100 Workers at a time.</p>")
    @as("WorkerIds")
    workerIds: customerIdList,
    @ocaml.doc("<p>The text of the email message to send. Can include up to
            4,096 characters</p>")
    @as("MessageText")
    messageText: string_,
    @ocaml.doc("<p>The subject line of the email message to send. Can include up
            to 200 characters.</p>")
    @as("Subject")
    subject: string_,
  }
  type response = {
    @ocaml.doc("<p> When MTurk sends notifications to the list of Workers, it
            returns back any failures it encounters in this list of
            NotifyWorkersFailureStatus objects.
        </p>")
    @as("NotifyWorkersFailureStatuses")
    notifyWorkersFailureStatuses: option<notifyWorkersFailureStatusList>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "NotifyWorkersCommand"
  let make = (~workerIds, ~messageText, ~subject, ()) =>
    new({workerIds: workerIds, messageText: messageText, subject: subject})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWorkerBlocks = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<resultSize>,
    @ocaml.doc("<p>Pagination token</p>") @as("NextToken") nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p> The list of WorkerBlocks, containing the collection of
            Worker IDs and reasons for blocking.</p>")
    @as("WorkerBlocks")
    workerBlocks: option<workerBlockList>,
    @ocaml.doc("<p> The number of assignments on the page in the filtered
            results list, equivalent to the number of assignments returned by
            this call.</p>")
    @as("NumResults")
    numResults: option<integer_>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "ListWorkerBlocksCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListQualificationTypes = {
  type t
  type request = {
    @ocaml.doc("<p> The maximum number of results to return in a single call.
        </p>")
    @as("MaxResults")
    maxResults: option<resultSize>,
    @as("NextToken") nextToken: option<paginationToken>,
    @ocaml.doc("<p> Specifies that only Qualification types that the Requester
            created are returned. If false, the operation returns all
            Qualification types.
        </p>")
    @as("MustBeOwnedByCaller")
    mustBeOwnedByCaller: option<boolean_>,
    @ocaml.doc("<p>Specifies that only Qualification types that a user can
            request through the Amazon Mechanical Turk web site, such as by
            taking a Qualification test, are returned as results of the search.
            Some Qualification types, such as those assigned automatically by the
            system, cannot be requested directly by users. If false, all
            Qualification types, including those managed by the system, are
            considered. Valid values are True | False.
        </p>")
    @as("MustBeRequestable")
    mustBeRequestable: boolean_,
    @ocaml.doc("<p> A text query against all of the searchable attributes of
            Qualification types.
        </p>")
    @as("Query")
    query: option<string_>,
  }
  type response = {
    @ocaml.doc("<p> The list of QualificationType elements returned by the
            query.
        </p>")
    @as("QualificationTypes")
    qualificationTypes: option<qualificationTypeList>,
    @as("NextToken") nextToken: option<paginationToken>,
    @ocaml.doc("<p> The number of Qualification types on this page in the
            filtered results list, equivalent to the number of types this
            operation returns.
        </p>")
    @as("NumResults")
    numResults: option<integer_>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "ListQualificationTypesCommand"
  let make = (
    ~mustBeRequestable,
    ~maxResults=?,
    ~nextToken=?,
    ~mustBeOwnedByCaller=?,
    ~query=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      mustBeOwnedByCaller: mustBeOwnedByCaller,
      mustBeRequestable: mustBeRequestable,
      query: query,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListQualificationRequests = {
  type t
  type request = {
    @ocaml.doc("<p> The maximum number of results to return in a single call.
        </p>")
    @as("MaxResults")
    maxResults: option<resultSize>,
    @as("NextToken") nextToken: option<paginationToken>,
    @ocaml.doc("<p>The ID of the QualificationType.</p>") @as("QualificationTypeId")
    qualificationTypeId: option<entityId>,
  }
  type response = {
    @ocaml.doc("<p>The Qualification request. The response includes one
            QualificationRequest element
            for each Qualification request returned
            by the query.</p>")
    @as("QualificationRequests")
    qualificationRequests: option<qualificationRequestList>,
    @as("NextToken") nextToken: option<paginationToken>,
    @ocaml.doc("<p>The number of Qualification requests on this page in the filtered results list,
            equivalent to the number of Qualification requests being returned by this call.</p>")
    @as("NumResults")
    numResults: option<integer_>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "ListQualificationRequestsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~qualificationTypeId=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, qualificationTypeId: qualificationTypeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBonusPayments = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<resultSize>,
    @ocaml.doc("<p>Pagination token</p>") @as("NextToken") nextToken: option<paginationToken>,
    @ocaml.doc("<p>The ID of the assignment associated with the bonus payments
            to retrieve. If specified, only bonus payments for the given
            assignment are returned. Either the HITId parameter or the
            AssignmentId parameter must be specified</p>")
    @as("AssignmentId")
    assignmentId: option<entityId>,
    @ocaml.doc("<p>The ID of the HIT associated with the bonus payments to
            retrieve. If not specified, all bonus payments for all assignments
            for the given HIT are returned. Either the HITId parameter or the
            AssignmentId parameter must be specified</p>")
    @as("HITId")
    hitid: option<entityId>,
  }
  type response = {
    @ocaml.doc("<p>A successful request to the ListBonusPayments operation
            returns a list of BonusPayment objects.
        </p>")
    @as("BonusPayments")
    bonusPayments: option<bonusPaymentList>,
    @as("NextToken") nextToken: option<paginationToken>,
    @ocaml.doc("<p>The number of bonus payments on this page in the filtered
            results list, equivalent to the number of bonus payments being
            returned by this call.
        </p>")
    @as("NumResults")
    numResults: option<integer_>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "ListBonusPaymentsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~assignmentId=?, ~hitid=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, assignmentId: assignmentId, hitid: hitid})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssignmentsForHIT = {
  type t
  type request = {
    @ocaml.doc("<p>The status of the assignments to return: Submitted | Approved
            | Rejected</p>")
    @as("AssignmentStatuses")
    assignmentStatuses: option<assignmentStatusList>,
    @as("MaxResults") maxResults: option<resultSize>,
    @ocaml.doc("<p>Pagination token</p>") @as("NextToken") nextToken: option<paginationToken>,
    @ocaml.doc("<p>The ID of the HIT.</p>") @as("HITId") hitid: entityId,
  }
  type response = {
    @ocaml.doc("<p> The collection of Assignment data structures returned by
            this call.</p>")
    @as("Assignments")
    assignments: option<assignmentList>,
    @ocaml.doc("<p> The number of assignments on the page in the filtered
            results list, equivalent to the number of assignments returned by
            this call.</p>")
    @as("NumResults")
    numResults: option<integer_>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "ListAssignmentsForHITCommand"
  let make = (~hitid, ~assignmentStatuses=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      assignmentStatuses: assignmentStatuses,
      maxResults: maxResults,
      nextToken: nextToken,
      hitid: hitid,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetQualificationScore = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Worker whose Qualification is being updated.</p>") @as("WorkerId")
    workerId: customerId,
    @ocaml.doc("<p>The ID of the QualificationType.</p>") @as("QualificationTypeId")
    qualificationTypeId: entityId,
  }
  type response = {
    @ocaml.doc("<p> The Qualification data structure of the Qualification
            assigned to a user, including the Qualification type and the value
            (score).
        </p>")
    @as("Qualification")
    qualification: option<qualification>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "GetQualificationScoreCommand"
  let make = (~workerId, ~qualificationTypeId, ()) =>
    new({workerId: workerId, qualificationTypeId: qualificationTypeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWorkersWithQualificationType = {
  type t
  type request = {
    @ocaml.doc("<p>
            Limit the number of results returned.
        </p>")
    @as("MaxResults")
    maxResults: option<resultSize>,
    @ocaml.doc("<p>Pagination Token</p>") @as("NextToken") nextToken: option<paginationToken>,
    @ocaml.doc("<p>
            The status of the Qualifications to return.
            Can be <code>Granted | Revoked</code>.
        </p>")
    @as("Status")
    status: option<qualificationStatus>,
    @ocaml.doc("<p>The ID of the Qualification type of the Qualifications to
            return.</p>")
    @as("QualificationTypeId")
    qualificationTypeId: entityId,
  }
  type response = {
    @ocaml.doc("<p> The list of Qualification elements returned by this call.
        </p>")
    @as("Qualifications")
    qualifications: option<qualificationList>,
    @ocaml.doc("<p> The number of Qualifications on this page in the filtered
            results list, equivalent to the number of Qualifications being
            returned by this call.</p>")
    @as("NumResults")
    numResults: option<integer_>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "ListWorkersWithQualificationTypeCommand"
  let make = (~qualificationTypeId, ~maxResults=?, ~nextToken=?, ~status=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      status: status,
      qualificationTypeId: qualificationTypeId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateHITType = {
  type t
  type request = {
    @ocaml.doc("<p>
            Conditions that a Worker's Qualifications must meet in order
            to accept the HIT. A HIT can have between zero and ten
            Qualification requirements. All requirements must be met in
            order for a Worker to accept the HIT. Additionally, other
            actions can be restricted using the <code>ActionsGuarded</code>
            field on each <code>QualificationRequirement</code> structure.
        </p>")
    @as("QualificationRequirements")
    qualificationRequirements: option<qualificationRequirementList>,
    @ocaml.doc("<p>
            A general description of the HIT. A description includes detailed information about the kind of task
            the HIT contains. On the Amazon Mechanical Turk web site, the HIT description appears in the expanded
            view of search results, and in the HIT and assignment screens. A good description gives the user enough
            information to evaluate the HIT before accepting it.
        </p>")
    @as("Description")
    description: string_,
    @ocaml.doc("<p>
            One or more words or phrases that describe the HIT, separated by commas.
            These words are used in searches to find HITs.
        </p>")
    @as("Keywords")
    keywords: option<string_>,
    @ocaml.doc("<p>
            The title of the HIT. A title should be short and descriptive about the kind of task the HIT contains.
            On the Amazon Mechanical Turk web site, the HIT title appears in search results,
            and everywhere the HIT is mentioned.
        </p>")
    @as("Title")
    title: string_,
    @ocaml.doc("<p>
            The amount of money the Requester will pay a Worker for successfully completing the HIT.
        </p>")
    @as("Reward")
    reward: currencyAmount,
    @ocaml.doc("<p>
            The amount of time, in seconds, that a Worker has to complete the HIT after accepting it.
            If a Worker does not complete the assignment within the specified duration,
            the assignment is considered abandoned. If the HIT is still active
            (that is, its lifetime has not elapsed), the assignment becomes available
            for other users to find and accept.
        </p>")
    @as("AssignmentDurationInSeconds")
    assignmentDurationInSeconds: long,
    @ocaml.doc("<p>
            The number of seconds after an assignment for the HIT has been submitted,
            after which the assignment is considered Approved automatically
            unless the Requester explicitly rejects it.
        </p>")
    @as("AutoApprovalDelayInSeconds")
    autoApprovalDelayInSeconds: option<long>,
  }
  type response = {
    @ocaml.doc("<p> The ID of the newly registered HIT type.</p>") @as("HITTypeId")
    hittypeId: option<entityId>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "CreateHITTypeCommand"
  let make = (
    ~description,
    ~title,
    ~reward,
    ~assignmentDurationInSeconds,
    ~qualificationRequirements=?,
    ~keywords=?,
    ~autoApprovalDelayInSeconds=?,
    (),
  ) =>
    new({
      qualificationRequirements: qualificationRequirements,
      description: description,
      keywords: keywords,
      title: title,
      reward: reward,
      assignmentDurationInSeconds: assignmentDurationInSeconds,
      autoApprovalDelayInSeconds: autoApprovalDelayInSeconds,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetHIT = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the HIT to be retrieved.</p>") @as("HITId") hitid: entityId,
  }
  type response = {
    @ocaml.doc("<p> Contains the requested HIT data.</p>") @as("HIT") hit: option<hit>,
  }
  @module("@aws-sdk/client-mturk-requester") @new external new: request => t = "GetHITCommand"
  let make = (~hitid, ()) => new({hitid: hitid})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAssignment = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Assignment to be retrieved.</p>") @as("AssignmentId")
    assignmentId: entityId,
  }
  type response = {
    @ocaml.doc("<p> The HIT associated with this assignment. The response
            includes one HIT element.</p>")
    @as("HIT")
    hit: option<hit>,
    @ocaml.doc("<p> The assignment. The response includes one Assignment
            element.
        </p>")
    @as("Assignment")
    assignment: option<assignment>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "GetAssignmentCommand"
  let make = (~assignmentId, ()) => new({assignmentId: assignmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListReviewableHITs = {
  type t
  type request = {
    @ocaml.doc("<p>
            Limit the number of results returned.
        </p>")
    @as("MaxResults")
    maxResults: option<resultSize>,
    @ocaml.doc("<p>Pagination Token</p>") @as("NextToken") nextToken: option<paginationToken>,
    @ocaml.doc("<p>
            Can be either <code>Reviewable</code> or <code>Reviewing</code>.
            Reviewable is the default value.
        </p>")
    @as("Status")
    status: option<reviewableHITStatus>,
    @ocaml.doc("<p>
            The ID of the HIT type of the HITs to consider for the query.
            If not specified, all HITs for the Reviewer are considered
        </p>")
    @as("HITTypeId")
    hittypeId: option<entityId>,
  }
  type response = {
    @ocaml.doc("<p> The list of HIT elements returned by the query.</p>") @as("HITs")
    hits: option<hitlist>,
    @ocaml.doc("<p> The number of HITs on this page in the filtered results
            list, equivalent to the number of HITs being returned by this call.
        </p>")
    @as("NumResults")
    numResults: option<integer_>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "ListReviewableHITsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~status=?, ~hittypeId=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, status: status, hittypeId: hittypeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListReviewPolicyResultsForHIT = {
  type t
  type request = {
    @ocaml.doc("<p>Limit the number of results returned.</p>") @as("MaxResults")
    maxResults: option<resultSize>,
    @ocaml.doc("<p>Pagination token</p>") @as("NextToken") nextToken: option<paginationToken>,
    @ocaml.doc("<p>
            Specify if the operation should retrieve a list of the results computed by the Review Policies.
        </p>")
    @as("RetrieveResults")
    retrieveResults: option<boolean_>,
    @ocaml.doc("<p>
            Specify if the operation should retrieve a list of the actions taken executing
            the Review Policies and their outcomes.
        </p>")
    @as("RetrieveActions")
    retrieveActions: option<boolean_>,
    @ocaml.doc("<p>
            The Policy Level(s) to retrieve review results for - HIT or Assignment.
            If omitted, the default behavior is to retrieve all data for both policy levels.
            For a list of all the described policies, see Review Policies.
        </p>")
    @as("PolicyLevels")
    policyLevels: option<reviewPolicyLevelList>,
    @ocaml.doc("<p>The unique identifier of the HIT to retrieve review results for.</p>")
    @as("HITId")
    hitid: entityId,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @ocaml.doc("<p>Contains both ReviewResult and ReviewAction elements for a particular HIT.
        </p>")
    @as("HITReviewReport")
    hitreviewReport: option<reviewReport>,
    @ocaml.doc("<p> Contains both ReviewResult and ReviewAction elements for an
            Assignment.
        </p>")
    @as("AssignmentReviewReport")
    assignmentReviewReport: option<reviewReport>,
    @ocaml.doc("<p>The name of the HIT-level Review Policy. This contains only
            the PolicyName element.</p>")
    @as("HITReviewPolicy")
    hitreviewPolicy: option<reviewPolicy>,
    @ocaml.doc("<p> The name of the Assignment-level Review Policy. This
            contains only the PolicyName element.
        </p>")
    @as("AssignmentReviewPolicy")
    assignmentReviewPolicy: option<reviewPolicy>,
    @ocaml.doc("<p>The HITId of the HIT for which results have been returned.</p>") @as("HITId")
    hitid: option<entityId>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "ListReviewPolicyResultsForHITCommand"
  let make = (
    ~hitid,
    ~maxResults=?,
    ~nextToken=?,
    ~retrieveResults=?,
    ~retrieveActions=?,
    ~policyLevels=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      retrieveResults: retrieveResults,
      retrieveActions: retrieveActions,
      policyLevels: policyLevels,
      hitid: hitid,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListHITsForQualificationType = {
  type t
  type request = {
    @ocaml.doc("<p>
            Limit the number of results returned.
        </p>")
    @as("MaxResults")
    maxResults: option<resultSize>,
    @ocaml.doc("<p>Pagination Token</p>") @as("NextToken") nextToken: option<paginationToken>,
    @ocaml.doc("<p>
            The ID of the Qualification type to use when querying HITs.
        </p>")
    @as("QualificationTypeId")
    qualificationTypeId: entityId,
  }
  type response = {
    @ocaml.doc("<p> The list of HIT elements returned by the query.</p>") @as("HITs")
    hits: option<hitlist>,
    @ocaml.doc("<p> The number of HITs on this page in the filtered results
            list, equivalent to the number of HITs being returned by this call.	</p>")
    @as("NumResults")
    numResults: option<integer_>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "ListHITsForQualificationTypeCommand"
  let make = (~qualificationTypeId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, qualificationTypeId: qualificationTypeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListHITs = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<resultSize>,
    @ocaml.doc("<p>Pagination token</p>") @as("NextToken") nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p> The list of HIT elements returned by the query.</p>") @as("HITs")
    hits: option<hitlist>,
    @ocaml.doc("<p>The number of HITs on this page in the filtered results list,
            equivalent to the number of HITs being returned by this call.</p>")
    @as("NumResults")
    numResults: option<integer_>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-mturk-requester") @new external new: request => t = "ListHITsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateHITWithHITType = {
  type t
  type request = {
    @ocaml.doc("<p>
            If the HITLayoutId is provided, any placeholder values must be filled in with values
            using the HITLayoutParameter structure. For more information, see HITLayout.
        </p>")
    @as("HITLayoutParameters")
    hitlayoutParameters: option<hitlayoutParameterList>,
    @ocaml.doc("<p>
            The HITLayoutId allows you to use a pre-existing HIT design with placeholder values
            and create an additional HIT by providing those values as HITLayoutParameters.
        </p>
        <p>
            Constraints: Either a Question parameter or a HITLayoutId parameter must be provided.
        </p>")
    @as("HITLayoutId")
    hitlayoutId: option<entityId>,
    @ocaml.doc("<p>
            The HIT-level Review Policy applies to the HIT.
            You can specify for Mechanical Turk to take various actions based on the policy.
        </p>")
    @as("HITReviewPolicy")
    hitreviewPolicy: option<reviewPolicy>,
    @ocaml.doc("<p>
            The Assignment-level Review Policy applies to the assignments under the HIT.
            You can specify for Mechanical Turk to take various actions based on the policy.
        </p>")
    @as("AssignmentReviewPolicy")
    assignmentReviewPolicy: option<reviewPolicy>,
    @ocaml.doc("<p>
            A unique identifier for this request which allows you to retry the call
            on error without creating duplicate HITs.
            This is useful in cases such as network timeouts where it is unclear whether or not
            the call succeeded on the server.
            If the HIT already exists in the system from a previous call using the same UniqueRequestToken,
            subsequent calls will return a AWS.MechanicalTurk.HitAlreadyExists error
            with a message containing the HITId.
        </p>
        <note>
            <p>
                Note: It is your responsibility to ensure uniqueness of the token.
                The unique token expires after 24 hours. Subsequent calls using the same
                UniqueRequestToken made after the 24 hour limit could create duplicate HITs.
            </p>
        </note>")
    @as("UniqueRequestToken")
    uniqueRequestToken: option<idempotencyToken>,
    @ocaml.doc("<p>
            An arbitrary data field.
            The RequesterAnnotation parameter lets your application attach arbitrary data
            to the HIT for tracking purposes.
            For example, this parameter could be an identifier internal to the Requester's application
            that corresponds with the HIT.
        </p>
        <p>
            The RequesterAnnotation parameter for a HIT is only visible to the Requester who created the HIT.
            It is not shown to the Worker, or any other Requester.
        </p>
        <p>
            The RequesterAnnotation parameter may be different for each HIT you submit.
            It does not affect how your HITs are grouped.
        </p>")
    @as("RequesterAnnotation")
    requesterAnnotation: option<string_>,
    @ocaml.doc("<p>
            The data the person completing the HIT uses to produce the results.
        </p>
        <p>
            Constraints: Must be a QuestionForm data structure, an ExternalQuestion data structure,
            or an HTMLQuestion data structure. The XML question data must not be larger than
            64 kilobytes (65,535 bytes) in size, including whitespace.
        </p>
        <p>Either a Question parameter or a HITLayoutId parameter must be provided.</p>")
    @as("Question")
    question: option<string_>,
    @ocaml.doc("<p>
            An amount of time, in seconds, after which the HIT is no longer available for users to accept.
            After the lifetime of the HIT elapses, the HIT no longer appears in HIT searches,
            even if not all of the assignments for the HIT have been accepted.
        </p>")
    @as("LifetimeInSeconds")
    lifetimeInSeconds: long,
    @ocaml.doc("<p>
            The number of times the HIT can be accepted and completed before the HIT becomes unavailable.
        </p>")
    @as("MaxAssignments")
    maxAssignments: option<integer_>,
    @ocaml.doc("<p>The HIT type ID you want to create this HIT with.</p>") @as("HITTypeId")
    hittypeId: entityId,
  }
  type response = {
    @ocaml.doc("<p> Contains the newly created HIT data. For a description of
            the HIT data structure as it appears in responses, see the HIT Data
            Structure documentation.
        </p>")
    @as("HIT")
    hit: option<hit>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new: request => t = "CreateHITWithHITTypeCommand"
  let make = (
    ~lifetimeInSeconds,
    ~hittypeId,
    ~hitlayoutParameters=?,
    ~hitlayoutId=?,
    ~hitreviewPolicy=?,
    ~assignmentReviewPolicy=?,
    ~uniqueRequestToken=?,
    ~requesterAnnotation=?,
    ~question=?,
    ~maxAssignments=?,
    (),
  ) =>
    new({
      hitlayoutParameters: hitlayoutParameters,
      hitlayoutId: hitlayoutId,
      hitreviewPolicy: hitreviewPolicy,
      assignmentReviewPolicy: assignmentReviewPolicy,
      uniqueRequestToken: uniqueRequestToken,
      requesterAnnotation: requesterAnnotation,
      question: question,
      lifetimeInSeconds: lifetimeInSeconds,
      maxAssignments: maxAssignments,
      hittypeId: hittypeId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateHIT = {
  type t
  type request = {
    @ocaml.doc("<p>
            If the HITLayoutId is provided, any placeholder values must be filled in with values
            using the HITLayoutParameter structure. For more information, see HITLayout.
        </p>")
    @as("HITLayoutParameters")
    hitlayoutParameters: option<hitlayoutParameterList>,
    @ocaml.doc("<p>
            The HITLayoutId allows you to use a pre-existing HIT design with placeholder values
            and create an additional HIT by providing those values as HITLayoutParameters.
        </p>
        <p>
            Constraints: Either a Question parameter or a HITLayoutId parameter must be provided.
        </p>")
    @as("HITLayoutId")
    hitlayoutId: option<entityId>,
    @ocaml.doc("<p>
            The HIT-level Review Policy applies to the HIT.
            You can specify for Mechanical Turk to take various actions based on the policy.
        </p>")
    @as("HITReviewPolicy")
    hitreviewPolicy: option<reviewPolicy>,
    @ocaml.doc("<p>
            The Assignment-level Review Policy applies to the assignments under the HIT.
            You can specify for Mechanical Turk to take various actions based on the policy.
        </p>")
    @as("AssignmentReviewPolicy")
    assignmentReviewPolicy: option<reviewPolicy>,
    @ocaml.doc("<p>
            A unique identifier for this request which allows you to retry the call
            on error without creating duplicate HITs.
            This is useful in cases such as network timeouts where it is unclear whether or not
            the call succeeded on the server.
            If the HIT already exists in the system from a previous call using the same UniqueRequestToken,
            subsequent calls will return a AWS.MechanicalTurk.HitAlreadyExists error
            with a message containing the HITId.
        </p>
        <note>
            <p>
                Note: It is your responsibility to ensure uniqueness of the token.
                The unique token expires after 24 hours. Subsequent calls using the same
                UniqueRequestToken made after the 24 hour limit could create duplicate HITs.
            </p>
        </note>")
    @as("UniqueRequestToken")
    uniqueRequestToken: option<idempotencyToken>,
    @ocaml.doc("<p>
            Conditions that a Worker's Qualifications must meet in order
            to accept the HIT. A HIT can have between zero and ten
            Qualification requirements. All requirements must be met in
            order for a Worker to accept the HIT. Additionally, other
            actions can be restricted using the <code>ActionsGuarded</code>
            field on each <code>QualificationRequirement</code> structure.
        </p>")
    @as("QualificationRequirements")
    qualificationRequirements: option<qualificationRequirementList>,
    @ocaml.doc("<p>
            An arbitrary data field.
            The RequesterAnnotation parameter lets your application attach arbitrary data
            to the HIT for tracking purposes.
            For example, this parameter could be an identifier internal to the Requester's application
            that corresponds with the HIT.
        </p>
        <p>
            The RequesterAnnotation parameter for a HIT is only visible to the Requester who created the HIT.
            It is not shown to the Worker, or any other Requester.
        </p>
        <p>
            The RequesterAnnotation parameter may be different for each HIT you submit.
            It does not affect how your HITs are grouped.
        </p>")
    @as("RequesterAnnotation")
    requesterAnnotation: option<string_>,
    @ocaml.doc("<p>
            The data the person completing the HIT uses to produce the results.
        </p>
        <p>
            Constraints: Must be a QuestionForm data structure, an ExternalQuestion data structure,
            or an HTMLQuestion data structure. The XML question data must not be larger than
            64 kilobytes (65,535 bytes) in size, including whitespace.
        </p>
        <p>Either a Question parameter or a HITLayoutId parameter must be provided.</p>")
    @as("Question")
    question: option<string_>,
    @ocaml.doc("<p>
            A general description of the HIT. A description includes detailed information about the kind of task
            the HIT contains. On the Amazon Mechanical Turk web site, the HIT description appears in the expanded
            view of search results, and in the HIT and assignment screens. A good description gives the user enough
            information to evaluate the HIT before accepting it.
        </p>")
    @as("Description")
    description: string_,
    @ocaml.doc("<p>
            One or more words or phrases that describe the HIT, separated by commas.
            These words are used in searches to find HITs.
        </p>")
    @as("Keywords")
    keywords: option<string_>,
    @ocaml.doc("<p>
            The title of the HIT. A title should be short and descriptive about the kind of task the HIT contains.
            On the Amazon Mechanical Turk web site, the HIT title appears in search results,
            and everywhere the HIT is mentioned.
        </p>")
    @as("Title")
    title: string_,
    @ocaml.doc("<p>
            The amount of money the Requester will pay a Worker for successfully completing the HIT.
        </p>")
    @as("Reward")
    reward: currencyAmount,
    @ocaml.doc("<p>
            The amount of time, in seconds, that a Worker has to complete the HIT after accepting it.
            If a Worker does not complete the assignment within the specified duration,
            the assignment is considered abandoned. If the HIT is still active
            (that is, its lifetime has not elapsed), the assignment becomes available
            for other users to find and accept.
        </p>")
    @as("AssignmentDurationInSeconds")
    assignmentDurationInSeconds: long,
    @ocaml.doc("<p>
            An amount of time, in seconds, after which the HIT is no longer available for users to accept.
            After the lifetime of the HIT elapses, the HIT no longer appears in HIT searches,
            even if not all of the assignments for the HIT have been accepted.
        </p>")
    @as("LifetimeInSeconds")
    lifetimeInSeconds: long,
    @ocaml.doc("<p>
            The number of seconds after an assignment for the HIT has been submitted,
            after which the assignment is considered Approved automatically
            unless the Requester explicitly rejects it.
        </p>")
    @as("AutoApprovalDelayInSeconds")
    autoApprovalDelayInSeconds: option<long>,
    @ocaml.doc("<p>
            The number of times the HIT can be accepted and completed before the HIT becomes unavailable.
        </p>")
    @as("MaxAssignments")
    maxAssignments: option<integer_>,
  }
  type response = {
    @ocaml.doc("<p> Contains the newly created HIT data. For a description of
            the HIT data structure as it appears in responses, see the HIT Data
            Structure documentation.
        </p>")
    @as("HIT")
    hit: option<hit>,
  }
  @module("@aws-sdk/client-mturk-requester") @new external new: request => t = "CreateHITCommand"
  let make = (
    ~description,
    ~title,
    ~reward,
    ~assignmentDurationInSeconds,
    ~lifetimeInSeconds,
    ~hitlayoutParameters=?,
    ~hitlayoutId=?,
    ~hitreviewPolicy=?,
    ~assignmentReviewPolicy=?,
    ~uniqueRequestToken=?,
    ~qualificationRequirements=?,
    ~requesterAnnotation=?,
    ~question=?,
    ~keywords=?,
    ~autoApprovalDelayInSeconds=?,
    ~maxAssignments=?,
    (),
  ) =>
    new({
      hitlayoutParameters: hitlayoutParameters,
      hitlayoutId: hitlayoutId,
      hitreviewPolicy: hitreviewPolicy,
      assignmentReviewPolicy: assignmentReviewPolicy,
      uniqueRequestToken: uniqueRequestToken,
      qualificationRequirements: qualificationRequirements,
      requesterAnnotation: requesterAnnotation,
      question: question,
      description: description,
      keywords: keywords,
      title: title,
      reward: reward,
      assignmentDurationInSeconds: assignmentDurationInSeconds,
      lifetimeInSeconds: lifetimeInSeconds,
      autoApprovalDelayInSeconds: autoApprovalDelayInSeconds,
      maxAssignments: maxAssignments,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
