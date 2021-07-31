type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type turkErrorCode = string
type amazonawsTimestamp = Js.Date.t;
type amazonawsString = string
type reviewableHITStatus = [@as("Reviewing") #Reviewing | @as("Reviewable") #Reviewable]
type reviewPolicyLevel = [@as("HIT") #HIT | @as("Assignment") #Assignment]
type reviewActionStatus = [@as("Cancelled") #Cancelled | @as("Failed") #Failed | @as("Succeeded") #Succeeded | @as("Intended") #Intended]
type resultSize = int;
type qualificationTypeStatus = [@as("Inactive") #Inactive | @as("Active") #Active]
type qualificationStatus = [@as("Revoked") #Revoked | @as("Granted") #Granted]
type paginationToken = string
type notifyWorkersFailureCode = [@as("HardFailure") #HardFailure | @as("SoftFailure") #SoftFailure]
type notificationTransport = [@as("SNS") #SNS | @as("SQS") #SQS | @as("Email") #Email]
type amazonawsLong = float;
type amazonawsInteger = int;
type idempotencyToken = string
type hITStatus = [@as("Disposed") #Disposed | @as("Reviewing") #Reviewing | @as("Reviewable") #Reviewable | @as("Unassignable") #Unassignable | @as("Assignable") #Assignable]
type hITReviewStatus = [@as("ReviewedInappropriate") #ReviewedInappropriate | @as("ReviewedAppropriate") #ReviewedAppropriate | @as("MarkedForReview") #MarkedForReview | @as("NotReviewed") #NotReviewed]
type hITAccessActions = [@as("DiscoverPreviewAndAccept") #DiscoverPreviewAndAccept | @as("PreviewAndAccept") #PreviewAndAccept | @as("Accept") #Accept]
type exceptionMessage = string
type eventType = [@as("Ping") #Ping | @as("HITDisposed") #HITDisposed | @as("HITExtended") #HITExtended | @as("HITReviewable") #HITReviewable | @as("HITExpired") #HITExpired | @as("HITCreated") #HITCreated | @as("AssignmentApproved") #AssignmentApproved | @as("AssignmentRejected") #AssignmentRejected | @as("AssignmentSubmitted") #AssignmentSubmitted | @as("AssignmentReturned") #AssignmentReturned | @as("AssignmentAbandoned") #AssignmentAbandoned | @as("AssignmentAccepted") #AssignmentAccepted]
type entityId = string
type customerId = string
type currencyAmount = string
type countryParameters = string
type comparator = [@as("NotIn") #NotIn | @as("In") #In | @as("DoesNotExist") #DoesNotExist | @as("Exists") #Exists | @as("NotEqualTo") #NotEqualTo | @as("EqualTo") #EqualTo | @as("GreaterThanOrEqualTo") #GreaterThanOrEqualTo | @as("GreaterThan") #GreaterThan | @as("LessThanOrEqualTo") #LessThanOrEqualTo | @as("LessThan") #LessThan]
type amazonawsBoolean = bool;
type assignmentStatus = [@as("Rejected") #Rejected | @as("Approved") #Approved | @as("Submitted") #Submitted]
type workerBlock = {
@as("Reason") reason: amazonawsString,
@as("WorkerId") workerId: customerId
}
type stringList = array<amazonawsString>
type reviewResultDetail = {
@as("Value") value: amazonawsString,
@as("Key") key: amazonawsString,
@as("QuestionId") questionId: entityId,
@as("SubjectType") subjectType: amazonawsString,
@as("SubjectId") subjectId: entityId,
@as("ActionId") actionId: entityId
}
type reviewPolicyLevelList = array<reviewPolicyLevel>
type reviewActionDetail = {
@as("ErrorCode") errorCode: amazonawsString,
@as("Result") result: amazonawsString,
@as("CompleteTime") completeTime: amazonawsTimestamp,
@as("Status") status: reviewActionStatus,
@as("TargetType") targetType: amazonawsString,
@as("TargetId") targetId: entityId,
@as("ActionName") actionName: amazonawsString,
@as("ActionId") actionId: entityId
}
type qualificationType = {
@as("AutoGrantedValue") autoGrantedValue: amazonawsInteger,
@as("AutoGranted") autoGranted: amazonawsBoolean,
@as("IsRequestable") isRequestable: amazonawsBoolean,
@as("RetryDelayInSeconds") retryDelayInSeconds: amazonawsLong,
@as("AnswerKey") answerKey: amazonawsString,
@as("TestDurationInSeconds") testDurationInSeconds: amazonawsLong,
@as("Test") test: amazonawsString,
@as("QualificationTypeStatus") qualificationTypeStatus: qualificationTypeStatus,
@as("Keywords") keywords: amazonawsString,
@as("Description") description: amazonawsString,
@as("Name") name: amazonawsString,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("QualificationTypeId") qualificationTypeId: entityId
}
type qualificationRequest = {
@as("SubmitTime") submitTime: amazonawsTimestamp,
@as("Answer") answer: amazonawsString,
@as("Test") test: amazonawsString,
@as("WorkerId") workerId: customerId,
@as("QualificationTypeId") qualificationTypeId: entityId,
@as("QualificationRequestId") qualificationRequestId: amazonawsString
}
type notifyWorkersFailureStatus = {
@as("WorkerId") workerId: customerId,
@as("NotifyWorkersFailureMessage") notifyWorkersFailureMessage: amazonawsString,
@as("NotifyWorkersFailureCode") notifyWorkersFailureCode: notifyWorkersFailureCode
}
type locale = {
@as("Subdivision") subdivision: countryParameters,
@as("Country") country: option<countryParameters>
}
type integerList = array<amazonawsInteger>
type hITLayoutParameter = {
@as("Value") value: option<amazonawsString>,
@as("Name") name: option<amazonawsString>
}
type eventTypeList = array<eventType>
type customerIdList = array<customerId>
type bonusPayment = {
@as("GrantTime") grantTime: amazonawsTimestamp,
@as("Reason") reason: amazonawsString,
@as("AssignmentId") assignmentId: entityId,
@as("BonusAmount") bonusAmount: currencyAmount,
@as("WorkerId") workerId: customerId
}
type assignmentStatusList = array<assignmentStatus>
type assignment = {
@as("RequesterFeedback") requesterFeedback: amazonawsString,
@as("Answer") answer: amazonawsString,
@as("Deadline") deadline: amazonawsTimestamp,
@as("RejectionTime") rejectionTime: amazonawsTimestamp,
@as("ApprovalTime") approvalTime: amazonawsTimestamp,
@as("SubmitTime") submitTime: amazonawsTimestamp,
@as("AcceptTime") acceptTime: amazonawsTimestamp,
@as("AutoApprovalTime") autoApprovalTime: amazonawsTimestamp,
@as("AssignmentStatus") assignmentStatus: assignmentStatus,
@as("HITId") hITId: entityId,
@as("WorkerId") workerId: customerId,
@as("AssignmentId") assignmentId: entityId
}
type workerBlockList = array<workerBlock>
type reviewResultDetailList = array<reviewResultDetail>
type reviewActionDetailList = array<reviewActionDetail>
type qualificationTypeList = array<qualificationType>
type qualificationRequestList = array<qualificationRequest>
type qualification = {
@as("Status") status: qualificationStatus,
@as("LocaleValue") localeValue: locale,
@as("IntegerValue") integerValue: amazonawsInteger,
@as("GrantTime") grantTime: amazonawsTimestamp,
@as("WorkerId") workerId: customerId,
@as("QualificationTypeId") qualificationTypeId: entityId
}
type parameterMapEntry = {
@as("Values") values: stringList,
@as("Key") key: amazonawsString
}
type notifyWorkersFailureStatusList = array<notifyWorkersFailureStatus>
type notificationSpecification = {
@as("EventTypes") eventTypes: option<eventTypeList>,
@as("Version") version: option<amazonawsString>,
@as("Transport") transport: option<notificationTransport>,
@as("Destination") destination: option<amazonawsString>
}
type localeList = array<locale>
type hITLayoutParameterList = array<hITLayoutParameter>
type bonusPaymentList = array<bonusPayment>
type assignmentList = array<assignment>
type reviewReport = {
@as("ReviewActions") reviewActions: reviewActionDetailList,
@as("ReviewResults") reviewResults: reviewResultDetailList
}
type qualificationRequirement = {
@as("ActionsGuarded") actionsGuarded: hITAccessActions,
@as("RequiredToPreview") requiredToPreview: amazonawsBoolean,
@as("LocaleValues") localeValues: localeList,
@as("IntegerValues") integerValues: integerList,
@as("Comparator") comparator: option<comparator>,
@as("QualificationTypeId") qualificationTypeId: option<amazonawsString>
}
type qualificationList = array<qualification>
type parameterMapEntryList = array<parameterMapEntry>
type qualificationRequirementList = array<qualificationRequirement>
type policyParameter = {
@as("MapEntries") mapEntries: parameterMapEntryList,
@as("Values") values: stringList,
@as("Key") key: amazonawsString
}
type policyParameterList = array<policyParameter>
type hIT = {
@as("NumberOfAssignmentsCompleted") numberOfAssignmentsCompleted: amazonawsInteger,
@as("NumberOfAssignmentsAvailable") numberOfAssignmentsAvailable: amazonawsInteger,
@as("NumberOfAssignmentsPending") numberOfAssignmentsPending: amazonawsInteger,
@as("HITReviewStatus") hITReviewStatus: hITReviewStatus,
@as("QualificationRequirements") qualificationRequirements: qualificationRequirementList,
@as("RequesterAnnotation") requesterAnnotation: amazonawsString,
@as("AssignmentDurationInSeconds") assignmentDurationInSeconds: amazonawsLong,
@as("Expiration") expiration: amazonawsTimestamp,
@as("AutoApprovalDelayInSeconds") autoApprovalDelayInSeconds: amazonawsLong,
@as("Reward") reward: currencyAmount,
@as("MaxAssignments") maxAssignments: amazonawsInteger,
@as("HITStatus") hITStatus: hITStatus,
@as("Keywords") keywords: amazonawsString,
@as("Question") question: amazonawsString,
@as("Description") description: amazonawsString,
@as("Title") title: amazonawsString,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("HITLayoutId") hITLayoutId: entityId,
@as("HITGroupId") hITGroupId: entityId,
@as("HITTypeId") hITTypeId: entityId,
@as("HITId") hITId: entityId
}
type reviewPolicy = {
@as("Parameters") parameters: policyParameterList,
@as("PolicyName") policyName: option<amazonawsString>
}
type hITList = array<hIT>
type clientType;
@module("@aws-sdk/client-mturk-requester") @new external createClient: unit => clientType = "MTurkClient";
module UpdateHITTypeOfHIT = {
  type t;
  type request = {
@as("HITTypeId") hITTypeId: option<entityId>,
@as("HITId") hITId: option<entityId>
}
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "UpdateHITTypeOfHITCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateHITReviewStatus = {
  type t;
  type request = {
@as("Revert") revert: amazonawsBoolean,
@as("HITId") hITId: option<entityId>
}
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "UpdateHITReviewStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateExpirationForHIT = {
  type t;
  type request = {
@as("ExpireAt") expireAt: option<amazonawsTimestamp>,
@as("HITId") hITId: option<entityId>
}
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "UpdateExpirationForHITCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendBonus = {
  type t;
  type request = {
@as("UniqueRequestToken") uniqueRequestToken: idempotencyToken,
@as("Reason") reason: option<amazonawsString>,
@as("AssignmentId") assignmentId: option<entityId>,
@as("BonusAmount") bonusAmount: option<currencyAmount>,
@as("WorkerId") workerId: option<customerId>
}
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "SendBonusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RejectQualificationRequest = {
  type t;
  type request = {
@as("Reason") reason: amazonawsString,
@as("QualificationRequestId") qualificationRequestId: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "RejectQualificationRequestCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RejectAssignment = {
  type t;
  type request = {
@as("RequesterFeedback") requesterFeedback: option<amazonawsString>,
@as("AssignmentId") assignmentId: option<entityId>
}
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "RejectAssignmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFileUploadURL = {
  type t;
  type request = {
@as("QuestionIdentifier") questionIdentifier: option<amazonawsString>,
@as("AssignmentId") assignmentId: option<entityId>
}
  type response = {
@as("FileUploadURL") fileUploadURL: amazonawsString
}
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "GetFileUploadURLCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccountBalance = {
  type t;
  type request = unit
  type response = {
@as("OnHoldBalance") onHoldBalance: currencyAmount,
@as("AvailableBalance") availableBalance: currencyAmount
}
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "GetAccountBalanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateQualificationFromWorker = {
  type t;
  type request = {
@as("Reason") reason: amazonawsString,
@as("QualificationTypeId") qualificationTypeId: option<entityId>,
@as("WorkerId") workerId: option<customerId>
}
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "DisassociateQualificationFromWorkerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteWorkerBlock = {
  type t;
  type request = {
@as("Reason") reason: amazonawsString,
@as("WorkerId") workerId: option<customerId>
}
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "DeleteWorkerBlockCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteQualificationType = {
  type t;
  type request = {
@as("QualificationTypeId") qualificationTypeId: option<entityId>
}
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "DeleteQualificationTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteHIT = {
  type t;
  type request = {
@as("HITId") hITId: option<entityId>
}
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "DeleteHITCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateWorkerBlock = {
  type t;
  type request = {
@as("Reason") reason: option<amazonawsString>,
@as("WorkerId") workerId: option<customerId>
}
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "CreateWorkerBlockCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAdditionalAssignmentsForHIT = {
  type t;
  type request = {
@as("UniqueRequestToken") uniqueRequestToken: idempotencyToken,
@as("NumberOfAdditionalAssignments") numberOfAdditionalAssignments: option<amazonawsInteger>,
@as("HITId") hITId: option<entityId>
}
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "CreateAdditionalAssignmentsForHITCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateQualificationWithWorker = {
  type t;
  type request = {
@as("SendNotification") sendNotification: amazonawsBoolean,
@as("IntegerValue") integerValue: amazonawsInteger,
@as("WorkerId") workerId: option<customerId>,
@as("QualificationTypeId") qualificationTypeId: option<entityId>
}
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "AssociateQualificationWithWorkerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ApproveAssignment = {
  type t;
  type request = {
@as("OverrideRejection") overrideRejection: amazonawsBoolean,
@as("RequesterFeedback") requesterFeedback: amazonawsString,
@as("AssignmentId") assignmentId: option<entityId>
}
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "ApproveAssignmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcceptQualificationRequest = {
  type t;
  type request = {
@as("IntegerValue") integerValue: amazonawsInteger,
@as("QualificationRequestId") qualificationRequestId: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "AcceptQualificationRequestCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateQualificationType = {
  type t;
  type request = {
@as("AutoGrantedValue") autoGrantedValue: amazonawsInteger,
@as("AutoGranted") autoGranted: amazonawsBoolean,
@as("RetryDelayInSeconds") retryDelayInSeconds: amazonawsLong,
@as("TestDurationInSeconds") testDurationInSeconds: amazonawsLong,
@as("AnswerKey") answerKey: amazonawsString,
@as("Test") test: amazonawsString,
@as("QualificationTypeStatus") qualificationTypeStatus: qualificationTypeStatus,
@as("Description") description: amazonawsString,
@as("QualificationTypeId") qualificationTypeId: option<entityId>
}
  type response = {
@as("QualificationType") qualificationType: qualificationType
}
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "UpdateQualificationTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetQualificationType = {
  type t;
  type request = {
@as("QualificationTypeId") qualificationTypeId: option<entityId>
}
  type response = {
@as("QualificationType") qualificationType: qualificationType
}
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "GetQualificationTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateQualificationType = {
  type t;
  type request = {
@as("AutoGrantedValue") autoGrantedValue: amazonawsInteger,
@as("AutoGranted") autoGranted: amazonawsBoolean,
@as("TestDurationInSeconds") testDurationInSeconds: amazonawsLong,
@as("AnswerKey") answerKey: amazonawsString,
@as("Test") test: amazonawsString,
@as("RetryDelayInSeconds") retryDelayInSeconds: amazonawsLong,
@as("QualificationTypeStatus") qualificationTypeStatus: option<qualificationTypeStatus>,
@as("Description") description: option<amazonawsString>,
@as("Keywords") keywords: amazonawsString,
@as("Name") name: option<amazonawsString>
}
  type response = {
@as("QualificationType") qualificationType: qualificationType
}
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "CreateQualificationTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateNotificationSettings = {
  type t;
  type request = {
@as("Active") active: amazonawsBoolean,
@as("Notification") notification: notificationSpecification,
@as("HITTypeId") hITTypeId: option<entityId>
}
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "UpdateNotificationSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendTestEventNotification = {
  type t;
  type request = {
@as("TestEventType") testEventType: option<eventType>,
@as("Notification") notification: option<notificationSpecification>
}
  type response = unit
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "SendTestEventNotificationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module NotifyWorkers = {
  type t;
  type request = {
@as("WorkerIds") workerIds: option<customerIdList>,
@as("MessageText") messageText: option<amazonawsString>,
@as("Subject") subject: option<amazonawsString>
}
  type response = {
@as("NotifyWorkersFailureStatuses") notifyWorkersFailureStatuses: notifyWorkersFailureStatusList
}
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "NotifyWorkersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListWorkerBlocks = {
  type t;
  type request = {
@as("MaxResults") maxResults: resultSize,
@as("NextToken") nextToken: paginationToken
}
  type response = {
@as("WorkerBlocks") workerBlocks: workerBlockList,
@as("NumResults") numResults: amazonawsInteger,
@as("NextToken") nextToken: paginationToken
}
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "ListWorkerBlocksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListQualificationTypes = {
  type t;
  type request = {
@as("MaxResults") maxResults: resultSize,
@as("NextToken") nextToken: paginationToken,
@as("MustBeOwnedByCaller") mustBeOwnedByCaller: amazonawsBoolean,
@as("MustBeRequestable") mustBeRequestable: option<amazonawsBoolean>,
@as("Query") query: amazonawsString
}
  type response = {
@as("QualificationTypes") qualificationTypes: qualificationTypeList,
@as("NextToken") nextToken: paginationToken,
@as("NumResults") numResults: amazonawsInteger
}
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "ListQualificationTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListQualificationRequests = {
  type t;
  type request = {
@as("MaxResults") maxResults: resultSize,
@as("NextToken") nextToken: paginationToken,
@as("QualificationTypeId") qualificationTypeId: entityId
}
  type response = {
@as("QualificationRequests") qualificationRequests: qualificationRequestList,
@as("NextToken") nextToken: paginationToken,
@as("NumResults") numResults: amazonawsInteger
}
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "ListQualificationRequestsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBonusPayments = {
  type t;
  type request = {
@as("MaxResults") maxResults: resultSize,
@as("NextToken") nextToken: paginationToken,
@as("AssignmentId") assignmentId: entityId,
@as("HITId") hITId: entityId
}
  type response = {
@as("BonusPayments") bonusPayments: bonusPaymentList,
@as("NextToken") nextToken: paginationToken,
@as("NumResults") numResults: amazonawsInteger
}
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "ListBonusPaymentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAssignmentsForHIT = {
  type t;
  type request = {
@as("AssignmentStatuses") assignmentStatuses: assignmentStatusList,
@as("MaxResults") maxResults: resultSize,
@as("NextToken") nextToken: paginationToken,
@as("HITId") hITId: option<entityId>
}
  type response = {
@as("Assignments") assignments: assignmentList,
@as("NumResults") numResults: amazonawsInteger,
@as("NextToken") nextToken: paginationToken
}
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "ListAssignmentsForHITCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetQualificationScore = {
  type t;
  type request = {
@as("WorkerId") workerId: option<customerId>,
@as("QualificationTypeId") qualificationTypeId: option<entityId>
}
  type response = {
@as("Qualification") qualification: qualification
}
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "GetQualificationScoreCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListWorkersWithQualificationType = {
  type t;
  type request = {
@as("MaxResults") maxResults: resultSize,
@as("NextToken") nextToken: paginationToken,
@as("Status") status: qualificationStatus,
@as("QualificationTypeId") qualificationTypeId: option<entityId>
}
  type response = {
@as("Qualifications") qualifications: qualificationList,
@as("NumResults") numResults: amazonawsInteger,
@as("NextToken") nextToken: paginationToken
}
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "ListWorkersWithQualificationTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateHITType = {
  type t;
  type request = {
@as("QualificationRequirements") qualificationRequirements: qualificationRequirementList,
@as("Description") description: option<amazonawsString>,
@as("Keywords") keywords: amazonawsString,
@as("Title") title: option<amazonawsString>,
@as("Reward") reward: option<currencyAmount>,
@as("AssignmentDurationInSeconds") assignmentDurationInSeconds: option<amazonawsLong>,
@as("AutoApprovalDelayInSeconds") autoApprovalDelayInSeconds: amazonawsLong
}
  type response = {
@as("HITTypeId") hITTypeId: entityId
}
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "CreateHITTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetHIT = {
  type t;
  type request = {
@as("HITId") hITId: option<entityId>
}
  type response = {
@as("HIT") hIT: hIT
}
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "GetHITCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAssignment = {
  type t;
  type request = {
@as("AssignmentId") assignmentId: option<entityId>
}
  type response = {
@as("HIT") hIT: hIT,
@as("Assignment") assignment: assignment
}
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "GetAssignmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListReviewableHITs = {
  type t;
  type request = {
@as("MaxResults") maxResults: resultSize,
@as("NextToken") nextToken: paginationToken,
@as("Status") status: reviewableHITStatus,
@as("HITTypeId") hITTypeId: entityId
}
  type response = {
@as("HITs") hITs: hITList,
@as("NumResults") numResults: amazonawsInteger,
@as("NextToken") nextToken: paginationToken
}
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "ListReviewableHITsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListReviewPolicyResultsForHIT = {
  type t;
  type request = {
@as("MaxResults") maxResults: resultSize,
@as("NextToken") nextToken: paginationToken,
@as("RetrieveResults") retrieveResults: amazonawsBoolean,
@as("RetrieveActions") retrieveActions: amazonawsBoolean,
@as("PolicyLevels") policyLevels: reviewPolicyLevelList,
@as("HITId") hITId: option<entityId>
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("HITReviewReport") hITReviewReport: reviewReport,
@as("AssignmentReviewReport") assignmentReviewReport: reviewReport,
@as("HITReviewPolicy") hITReviewPolicy: reviewPolicy,
@as("AssignmentReviewPolicy") assignmentReviewPolicy: reviewPolicy,
@as("HITId") hITId: entityId
}
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "ListReviewPolicyResultsForHITCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListHITsForQualificationType = {
  type t;
  type request = {
@as("MaxResults") maxResults: resultSize,
@as("NextToken") nextToken: paginationToken,
@as("QualificationTypeId") qualificationTypeId: option<entityId>
}
  type response = {
@as("HITs") hITs: hITList,
@as("NumResults") numResults: amazonawsInteger,
@as("NextToken") nextToken: paginationToken
}
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "ListHITsForQualificationTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListHITs = {
  type t;
  type request = {
@as("MaxResults") maxResults: resultSize,
@as("NextToken") nextToken: paginationToken
}
  type response = {
@as("HITs") hITs: hITList,
@as("NumResults") numResults: amazonawsInteger,
@as("NextToken") nextToken: paginationToken
}
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "ListHITsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateHITWithHITType = {
  type t;
  type request = {
@as("HITLayoutParameters") hITLayoutParameters: hITLayoutParameterList,
@as("HITLayoutId") hITLayoutId: entityId,
@as("HITReviewPolicy") hITReviewPolicy: reviewPolicy,
@as("AssignmentReviewPolicy") assignmentReviewPolicy: reviewPolicy,
@as("UniqueRequestToken") uniqueRequestToken: idempotencyToken,
@as("RequesterAnnotation") requesterAnnotation: amazonawsString,
@as("Question") question: amazonawsString,
@as("LifetimeInSeconds") lifetimeInSeconds: option<amazonawsLong>,
@as("MaxAssignments") maxAssignments: amazonawsInteger,
@as("HITTypeId") hITTypeId: option<entityId>
}
  type response = {
@as("HIT") hIT: hIT
}
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "CreateHITWithHITTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateHIT = {
  type t;
  type request = {
@as("HITLayoutParameters") hITLayoutParameters: hITLayoutParameterList,
@as("HITLayoutId") hITLayoutId: entityId,
@as("HITReviewPolicy") hITReviewPolicy: reviewPolicy,
@as("AssignmentReviewPolicy") assignmentReviewPolicy: reviewPolicy,
@as("UniqueRequestToken") uniqueRequestToken: idempotencyToken,
@as("QualificationRequirements") qualificationRequirements: qualificationRequirementList,
@as("RequesterAnnotation") requesterAnnotation: amazonawsString,
@as("Question") question: amazonawsString,
@as("Description") description: option<amazonawsString>,
@as("Keywords") keywords: amazonawsString,
@as("Title") title: option<amazonawsString>,
@as("Reward") reward: option<currencyAmount>,
@as("AssignmentDurationInSeconds") assignmentDurationInSeconds: option<amazonawsLong>,
@as("LifetimeInSeconds") lifetimeInSeconds: option<amazonawsLong>,
@as("AutoApprovalDelayInSeconds") autoApprovalDelayInSeconds: amazonawsLong,
@as("MaxAssignments") maxAssignments: amazonawsInteger
}
  type response = {
@as("HIT") hIT: hIT
}
  @module("@aws-sdk/client-mturk-requester") @new external new_: (request) => t = "CreateHITCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
