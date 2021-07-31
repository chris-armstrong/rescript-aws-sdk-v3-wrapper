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
type currencyAmount = string
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
type workerBlock = {
  @as("Reason") reason: option<string_>,
  @as("WorkerId") workerId: option<customerId>,
}
type stringList = array<string_>
type reviewResultDetail = {
  @as("Value") value: option<string_>,
  @as("Key") key: option<string_>,
  @as("QuestionId") questionId: option<entityId>,
  @as("SubjectType") subjectType: option<string_>,
  @as("SubjectId") subjectId: option<entityId>,
  @as("ActionId") actionId: option<entityId>,
}
type reviewPolicyLevelList = array<reviewPolicyLevel>
type reviewActionDetail = {
  @as("ErrorCode") errorCode: option<string_>,
  @as("Result") result: option<string_>,
  @as("CompleteTime") completeTime: option<timestamp_>,
  @as("Status") status: option<reviewActionStatus>,
  @as("TargetType") targetType: option<string_>,
  @as("TargetId") targetId: option<entityId>,
  @as("ActionName") actionName: option<string_>,
  @as("ActionId") actionId: option<entityId>,
}
type qualificationType = {
  @as("AutoGrantedValue") autoGrantedValue: option<integer_>,
  @as("AutoGranted") autoGranted: option<boolean_>,
  @as("IsRequestable") isRequestable: option<boolean_>,
  @as("RetryDelayInSeconds") retryDelayInSeconds: option<long>,
  @as("AnswerKey") answerKey: option<string_>,
  @as("TestDurationInSeconds") testDurationInSeconds: option<long>,
  @as("Test") test: option<string_>,
  @as("QualificationTypeStatus") qualificationTypeStatus: option<qualificationTypeStatus>,
  @as("Keywords") keywords: option<string_>,
  @as("Description") description: option<string_>,
  @as("Name") name: option<string_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("QualificationTypeId") qualificationTypeId: option<entityId>,
}
type qualificationRequest = {
  @as("SubmitTime") submitTime: option<timestamp_>,
  @as("Answer") answer: option<string_>,
  @as("Test") test: option<string_>,
  @as("WorkerId") workerId: option<customerId>,
  @as("QualificationTypeId") qualificationTypeId: option<entityId>,
  @as("QualificationRequestId") qualificationRequestId: option<string_>,
}
type notifyWorkersFailureStatus = {
  @as("WorkerId") workerId: option<customerId>,
  @as("NotifyWorkersFailureMessage") notifyWorkersFailureMessage: option<string_>,
  @as("NotifyWorkersFailureCode") notifyWorkersFailureCode: option<notifyWorkersFailureCode>,
}
type locale = {
  @as("Subdivision") subdivision: option<countryParameters>,
  @as("Country") country: countryParameters,
}
type integerList = array<integer_>
type hitlayoutParameter = {
  @as("Value") value: string_,
  @as("Name") name: string_,
}
type eventTypeList = array<eventType>
type customerIdList = array<customerId>
type bonusPayment = {
  @as("GrantTime") grantTime: option<timestamp_>,
  @as("Reason") reason: option<string_>,
  @as("AssignmentId") assignmentId: option<entityId>,
  @as("BonusAmount") bonusAmount: option<currencyAmount>,
  @as("WorkerId") workerId: option<customerId>,
}
type assignmentStatusList = array<assignmentStatus>
type assignment = {
  @as("RequesterFeedback") requesterFeedback: option<string_>,
  @as("Answer") answer: option<string_>,
  @as("Deadline") deadline: option<timestamp_>,
  @as("RejectionTime") rejectionTime: option<timestamp_>,
  @as("ApprovalTime") approvalTime: option<timestamp_>,
  @as("SubmitTime") submitTime: option<timestamp_>,
  @as("AcceptTime") acceptTime: option<timestamp_>,
  @as("AutoApprovalTime") autoApprovalTime: option<timestamp_>,
  @as("AssignmentStatus") assignmentStatus: option<assignmentStatus>,
  @as("HITId") hitid: option<entityId>,
  @as("WorkerId") workerId: option<customerId>,
  @as("AssignmentId") assignmentId: option<entityId>,
}
type workerBlockList = array<workerBlock>
type reviewResultDetailList = array<reviewResultDetail>
type reviewActionDetailList = array<reviewActionDetail>
type qualificationTypeList = array<qualificationType>
type qualificationRequestList = array<qualificationRequest>
type qualification = {
  @as("Status") status: option<qualificationStatus>,
  @as("LocaleValue") localeValue: option<locale>,
  @as("IntegerValue") integerValue: option<integer_>,
  @as("GrantTime") grantTime: option<timestamp_>,
  @as("WorkerId") workerId: option<customerId>,
  @as("QualificationTypeId") qualificationTypeId: option<entityId>,
}
type parameterMapEntry = {
  @as("Values") values: option<stringList>,
  @as("Key") key: option<string_>,
}
type notifyWorkersFailureStatusList = array<notifyWorkersFailureStatus>
type notificationSpecification = {
  @as("EventTypes") eventTypes: eventTypeList,
  @as("Version") version: string_,
  @as("Transport") transport: notificationTransport,
  @as("Destination") destination: string_,
}
type localeList = array<locale>
type hitlayoutParameterList = array<hitlayoutParameter>
type bonusPaymentList = array<bonusPayment>
type assignmentList = array<assignment>
type reviewReport = {
  @as("ReviewActions") reviewActions: option<reviewActionDetailList>,
  @as("ReviewResults") reviewResults: option<reviewResultDetailList>,
}
type qualificationRequirement = {
  @as("ActionsGuarded") actionsGuarded: option<hitaccessActions>,
  @as("RequiredToPreview") requiredToPreview: option<boolean_>,
  @as("LocaleValues") localeValues: option<localeList>,
  @as("IntegerValues") integerValues: option<integerList>,
  @as("Comparator") comparator: comparator,
  @as("QualificationTypeId") qualificationTypeId: string_,
}
type qualificationList = array<qualification>
type parameterMapEntryList = array<parameterMapEntry>
type qualificationRequirementList = array<qualificationRequirement>
type policyParameter = {
  @as("MapEntries") mapEntries: option<parameterMapEntryList>,
  @as("Values") values: option<stringList>,
  @as("Key") key: option<string_>,
}
type policyParameterList = array<policyParameter>
type hit = {
  @as("NumberOfAssignmentsCompleted") numberOfAssignmentsCompleted: option<integer_>,
  @as("NumberOfAssignmentsAvailable") numberOfAssignmentsAvailable: option<integer_>,
  @as("NumberOfAssignmentsPending") numberOfAssignmentsPending: option<integer_>,
  @as("HITReviewStatus") hitreviewStatus: option<hitreviewStatus>,
  @as("QualificationRequirements") qualificationRequirements: option<qualificationRequirementList>,
  @as("RequesterAnnotation") requesterAnnotation: option<string_>,
  @as("AssignmentDurationInSeconds") assignmentDurationInSeconds: option<long>,
  @as("Expiration") expiration: option<timestamp_>,
  @as("AutoApprovalDelayInSeconds") autoApprovalDelayInSeconds: option<long>,
  @as("Reward") reward: option<currencyAmount>,
  @as("MaxAssignments") maxAssignments: option<integer_>,
  @as("HITStatus") hitstatus: option<hitstatus>,
  @as("Keywords") keywords: option<string_>,
  @as("Question") question: option<string_>,
  @as("Description") description: option<string_>,
  @as("Title") title: option<string_>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("HITLayoutId") hitlayoutId: option<entityId>,
  @as("HITGroupId") hitgroupId: option<entityId>,
  @as("HITTypeId") hittypeId: option<entityId>,
  @as("HITId") hitid: option<entityId>,
}
type reviewPolicy = {
  @as("Parameters") parameters: option<policyParameterList>,
  @as("PolicyName") policyName: string_,
}
type hitlist = array<hit>

module UpdateHITTypeOfHIT = {
  type t
  type request = {
    @as("HITTypeId") hittypeId: entityId,
    @as("HITId") hitid: entityId,
  }
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "UpdateHITTypeOfHITCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateHITReviewStatus = {
  type t
  type request = {
    @as("Revert") revert: option<boolean_>,
    @as("HITId") hitid: entityId,
  }
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "UpdateHITReviewStatusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateExpirationForHIT = {
  type t
  type request = {
    @as("ExpireAt") expireAt: timestamp_,
    @as("HITId") hitid: entityId,
  }
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "UpdateExpirationForHITCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendBonus = {
  type t
  type request = {
    @as("UniqueRequestToken") uniqueRequestToken: option<idempotencyToken>,
    @as("Reason") reason: string_,
    @as("AssignmentId") assignmentId: entityId,
    @as("BonusAmount") bonusAmount: currencyAmount,
    @as("WorkerId") workerId: customerId,
  }
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new external new_: request => t = "SendBonusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RejectQualificationRequest = {
  type t
  type request = {
    @as("Reason") reason: option<string_>,
    @as("QualificationRequestId") qualificationRequestId: string_,
  }
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "RejectQualificationRequestCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RejectAssignment = {
  type t
  type request = {
    @as("RequesterFeedback") requesterFeedback: string_,
    @as("AssignmentId") assignmentId: entityId,
  }
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "RejectAssignmentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFileUploadURL = {
  type t
  type request = {
    @as("QuestionIdentifier") questionIdentifier: string_,
    @as("AssignmentId") assignmentId: entityId,
  }
  type response = {@as("FileUploadURL") fileUploadURL: option<string_>}
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "GetFileUploadURLCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccountBalance = {
  type t
  type request = unit
  type response = {
    @as("OnHoldBalance") onHoldBalance: option<currencyAmount>,
    @as("AvailableBalance") availableBalance: option<currencyAmount>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "GetAccountBalanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateQualificationFromWorker = {
  type t
  type request = {
    @as("Reason") reason: option<string_>,
    @as("QualificationTypeId") qualificationTypeId: entityId,
    @as("WorkerId") workerId: customerId,
  }
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "DisassociateQualificationFromWorkerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteWorkerBlock = {
  type t
  type request = {
    @as("Reason") reason: option<string_>,
    @as("WorkerId") workerId: customerId,
  }
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "DeleteWorkerBlockCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteQualificationType = {
  type t
  type request = {@as("QualificationTypeId") qualificationTypeId: entityId}
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "DeleteQualificationTypeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteHIT = {
  type t
  type request = {@as("HITId") hitid: entityId}
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new external new_: request => t = "DeleteHITCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWorkerBlock = {
  type t
  type request = {
    @as("Reason") reason: string_,
    @as("WorkerId") workerId: customerId,
  }
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "CreateWorkerBlockCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAdditionalAssignmentsForHIT = {
  type t
  type request = {
    @as("UniqueRequestToken") uniqueRequestToken: option<idempotencyToken>,
    @as("NumberOfAdditionalAssignments") numberOfAdditionalAssignments: integer_,
    @as("HITId") hitid: entityId,
  }
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "CreateAdditionalAssignmentsForHITCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateQualificationWithWorker = {
  type t
  type request = {
    @as("SendNotification") sendNotification: option<boolean_>,
    @as("IntegerValue") integerValue: option<integer_>,
    @as("WorkerId") workerId: customerId,
    @as("QualificationTypeId") qualificationTypeId: entityId,
  }
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "AssociateQualificationWithWorkerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ApproveAssignment = {
  type t
  type request = {
    @as("OverrideRejection") overrideRejection: option<boolean_>,
    @as("RequesterFeedback") requesterFeedback: option<string_>,
    @as("AssignmentId") assignmentId: entityId,
  }
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "ApproveAssignmentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcceptQualificationRequest = {
  type t
  type request = {
    @as("IntegerValue") integerValue: option<integer_>,
    @as("QualificationRequestId") qualificationRequestId: string_,
  }
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "AcceptQualificationRequestCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateQualificationType = {
  type t
  type request = {
    @as("AutoGrantedValue") autoGrantedValue: option<integer_>,
    @as("AutoGranted") autoGranted: option<boolean_>,
    @as("RetryDelayInSeconds") retryDelayInSeconds: option<long>,
    @as("TestDurationInSeconds") testDurationInSeconds: option<long>,
    @as("AnswerKey") answerKey: option<string_>,
    @as("Test") test: option<string_>,
    @as("QualificationTypeStatus") qualificationTypeStatus: option<qualificationTypeStatus>,
    @as("Description") description: option<string_>,
    @as("QualificationTypeId") qualificationTypeId: entityId,
  }
  type response = {@as("QualificationType") qualificationType: option<qualificationType>}
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "UpdateQualificationTypeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetQualificationType = {
  type t
  type request = {@as("QualificationTypeId") qualificationTypeId: entityId}
  type response = {@as("QualificationType") qualificationType: option<qualificationType>}
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "GetQualificationTypeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateQualificationType = {
  type t
  type request = {
    @as("AutoGrantedValue") autoGrantedValue: option<integer_>,
    @as("AutoGranted") autoGranted: option<boolean_>,
    @as("TestDurationInSeconds") testDurationInSeconds: option<long>,
    @as("AnswerKey") answerKey: option<string_>,
    @as("Test") test: option<string_>,
    @as("RetryDelayInSeconds") retryDelayInSeconds: option<long>,
    @as("QualificationTypeStatus") qualificationTypeStatus: qualificationTypeStatus,
    @as("Description") description: string_,
    @as("Keywords") keywords: option<string_>,
    @as("Name") name: string_,
  }
  type response = {@as("QualificationType") qualificationType: option<qualificationType>}
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "CreateQualificationTypeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateNotificationSettings = {
  type t
  type request = {
    @as("Active") active: option<boolean_>,
    @as("Notification") notification: option<notificationSpecification>,
    @as("HITTypeId") hittypeId: entityId,
  }
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "UpdateNotificationSettingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendTestEventNotification = {
  type t
  type request = {
    @as("TestEventType") testEventType: eventType,
    @as("Notification") notification: notificationSpecification,
  }
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "SendTestEventNotificationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module NotifyWorkers = {
  type t
  type request = {
    @as("WorkerIds") workerIds: customerIdList,
    @as("MessageText") messageText: string_,
    @as("Subject") subject: string_,
  }
  type response = {
    @as("NotifyWorkersFailureStatuses")
    notifyWorkersFailureStatuses: option<notifyWorkersFailureStatusList>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "NotifyWorkersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWorkerBlocks = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<resultSize>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  type response = {
    @as("WorkerBlocks") workerBlocks: option<workerBlockList>,
    @as("NumResults") numResults: option<integer_>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "ListWorkerBlocksCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListQualificationTypes = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<resultSize>,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("MustBeOwnedByCaller") mustBeOwnedByCaller: option<boolean_>,
    @as("MustBeRequestable") mustBeRequestable: boolean_,
    @as("Query") query: option<string_>,
  }
  type response = {
    @as("QualificationTypes") qualificationTypes: option<qualificationTypeList>,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("NumResults") numResults: option<integer_>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "ListQualificationTypesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListQualificationRequests = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<resultSize>,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("QualificationTypeId") qualificationTypeId: option<entityId>,
  }
  type response = {
    @as("QualificationRequests") qualificationRequests: option<qualificationRequestList>,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("NumResults") numResults: option<integer_>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "ListQualificationRequestsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBonusPayments = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<resultSize>,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("AssignmentId") assignmentId: option<entityId>,
    @as("HITId") hitid: option<entityId>,
  }
  type response = {
    @as("BonusPayments") bonusPayments: option<bonusPaymentList>,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("NumResults") numResults: option<integer_>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "ListBonusPaymentsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssignmentsForHIT = {
  type t
  type request = {
    @as("AssignmentStatuses") assignmentStatuses: option<assignmentStatusList>,
    @as("MaxResults") maxResults: option<resultSize>,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("HITId") hitid: entityId,
  }
  type response = {
    @as("Assignments") assignments: option<assignmentList>,
    @as("NumResults") numResults: option<integer_>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "ListAssignmentsForHITCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetQualificationScore = {
  type t
  type request = {
    @as("WorkerId") workerId: customerId,
    @as("QualificationTypeId") qualificationTypeId: entityId,
  }
  type response = {@as("Qualification") qualification: option<qualification>}
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "GetQualificationScoreCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWorkersWithQualificationType = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<resultSize>,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("Status") status: option<qualificationStatus>,
    @as("QualificationTypeId") qualificationTypeId: entityId,
  }
  type response = {
    @as("Qualifications") qualifications: option<qualificationList>,
    @as("NumResults") numResults: option<integer_>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "ListWorkersWithQualificationTypeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateHITType = {
  type t
  type request = {
    @as("QualificationRequirements")
    qualificationRequirements: option<qualificationRequirementList>,
    @as("Description") description: string_,
    @as("Keywords") keywords: option<string_>,
    @as("Title") title: string_,
    @as("Reward") reward: currencyAmount,
    @as("AssignmentDurationInSeconds") assignmentDurationInSeconds: long,
    @as("AutoApprovalDelayInSeconds") autoApprovalDelayInSeconds: option<long>,
  }
  type response = {@as("HITTypeId") hittypeId: option<entityId>}
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "CreateHITTypeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetHIT = {
  type t
  type request = {@as("HITId") hitid: entityId}
  type response = {@as("HIT") hit: option<hit>}
  @module("@aws-sdk/client-mturk-requester") @new external new_: request => t = "GetHITCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAssignment = {
  type t
  type request = {@as("AssignmentId") assignmentId: entityId}
  type response = {
    @as("HIT") hit: option<hit>,
    @as("Assignment") assignment: option<assignment>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "GetAssignmentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListReviewableHITs = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<resultSize>,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("Status") status: option<reviewableHITStatus>,
    @as("HITTypeId") hittypeId: option<entityId>,
  }
  type response = {
    @as("HITs") hits: option<hitlist>,
    @as("NumResults") numResults: option<integer_>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "ListReviewableHITsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListReviewPolicyResultsForHIT = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<resultSize>,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("RetrieveResults") retrieveResults: option<boolean_>,
    @as("RetrieveActions") retrieveActions: option<boolean_>,
    @as("PolicyLevels") policyLevels: option<reviewPolicyLevelList>,
    @as("HITId") hitid: entityId,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("HITReviewReport") hitreviewReport: option<reviewReport>,
    @as("AssignmentReviewReport") assignmentReviewReport: option<reviewReport>,
    @as("HITReviewPolicy") hitreviewPolicy: option<reviewPolicy>,
    @as("AssignmentReviewPolicy") assignmentReviewPolicy: option<reviewPolicy>,
    @as("HITId") hitid: option<entityId>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "ListReviewPolicyResultsForHITCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListHITsForQualificationType = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<resultSize>,
    @as("NextToken") nextToken: option<paginationToken>,
    @as("QualificationTypeId") qualificationTypeId: entityId,
  }
  type response = {
    @as("HITs") hits: option<hitlist>,
    @as("NumResults") numResults: option<integer_>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "ListHITsForQualificationTypeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListHITs = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<resultSize>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  type response = {
    @as("HITs") hits: option<hitlist>,
    @as("NumResults") numResults: option<integer_>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-mturk-requester") @new external new_: request => t = "ListHITsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateHITWithHITType = {
  type t
  type request = {
    @as("HITLayoutParameters") hitlayoutParameters: option<hitlayoutParameterList>,
    @as("HITLayoutId") hitlayoutId: option<entityId>,
    @as("HITReviewPolicy") hitreviewPolicy: option<reviewPolicy>,
    @as("AssignmentReviewPolicy") assignmentReviewPolicy: option<reviewPolicy>,
    @as("UniqueRequestToken") uniqueRequestToken: option<idempotencyToken>,
    @as("RequesterAnnotation") requesterAnnotation: option<string_>,
    @as("Question") question: option<string_>,
    @as("LifetimeInSeconds") lifetimeInSeconds: long,
    @as("MaxAssignments") maxAssignments: option<integer_>,
    @as("HITTypeId") hittypeId: entityId,
  }
  type response = {@as("HIT") hit: option<hit>}
  @module("@aws-sdk/client-mturk-requester") @new
  external new_: request => t = "CreateHITWithHITTypeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateHIT = {
  type t
  type request = {
    @as("HITLayoutParameters") hitlayoutParameters: option<hitlayoutParameterList>,
    @as("HITLayoutId") hitlayoutId: option<entityId>,
    @as("HITReviewPolicy") hitreviewPolicy: option<reviewPolicy>,
    @as("AssignmentReviewPolicy") assignmentReviewPolicy: option<reviewPolicy>,
    @as("UniqueRequestToken") uniqueRequestToken: option<idempotencyToken>,
    @as("QualificationRequirements")
    qualificationRequirements: option<qualificationRequirementList>,
    @as("RequesterAnnotation") requesterAnnotation: option<string_>,
    @as("Question") question: option<string_>,
    @as("Description") description: string_,
    @as("Keywords") keywords: option<string_>,
    @as("Title") title: string_,
    @as("Reward") reward: currencyAmount,
    @as("AssignmentDurationInSeconds") assignmentDurationInSeconds: long,
    @as("LifetimeInSeconds") lifetimeInSeconds: long,
    @as("AutoApprovalDelayInSeconds") autoApprovalDelayInSeconds: option<long>,
    @as("MaxAssignments") maxAssignments: option<integer_>,
  }
  type response = {@as("HIT") hit: option<hit>}
  @module("@aws-sdk/client-mturk-requester") @new external new_: request => t = "CreateHITCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
