type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-budgets") @new external createClient: unit => awsServiceClient = "BudgetsClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type errorMessage = string
type user = string
type unitValue = string
type timeUnit = [@as("ANNUALLY") #ANNUALLY | @as("QUARTERLY") #QUARTERLY | @as("MONTHLY") #MONTHLY | @as("DAILY") #DAILY]
type thresholdType = [@as("ABSOLUTE_VALUE") #ABSOLUTE_VALUE | @as("PERCENTAGE") #PERCENTAGE]
type targetId = string
type subscriptionType = [@as("EMAIL") #EMAIL | @as("SNS") #SNS]
type subscriberAddress = string
type roleArn = string
type role = string
type region = string
type policyId = string
type policyArn = string
type numericValue = string
type nullableBoolean = bool
type notificationType = [@as("FORECASTED") #FORECASTED | @as("ACTUAL") #ACTUAL]
type notificationThreshold = float
type notificationState = [@as("ALARM") #ALARM | @as("OK") #OK]
type maxResults = int
type instanceId = string
type group = string
type genericTimestamp = Js.Date.t;
type genericString = string
type executionType = [@as("RESET_BUDGET_ACTION") #RESET_BUDGET_ACTION | @as("REVERSE_BUDGET_ACTION") #REVERSE_BUDGET_ACTION | @as("RETRY_BUDGET_ACTION") #RETRY_BUDGET_ACTION | @as("APPROVE_BUDGET_ACTION") #APPROVE_BUDGET_ACTION]
type eventType = [@as("EXECUTE_ACTION") #EXECUTE_ACTION | @as("UPDATE_ACTION") #UPDATE_ACTION | @as("DELETE_ACTION") #DELETE_ACTION | @as("CREATE_ACTION") #CREATE_ACTION | @as("SYSTEM") #SYSTEM]
type comparisonOperator = [@as("EQUAL_TO") #EQUAL_TO | @as("LESS_THAN") #LESS_THAN | @as("GREATER_THAN") #GREATER_THAN]
type budgetType = [@as("SAVINGS_PLANS_COVERAGE") #SAVINGS_PLANS_COVERAGE | @as("SAVINGS_PLANS_UTILIZATION") #SAVINGS_PLANS_UTILIZATION | @as("RI_COVERAGE") #RI_COVERAGE | @as("RI_UTILIZATION") #RI_UTILIZATION | @as("COST") #COST | @as("USAGE") #USAGE]
type budgetName = string
type approvalModel = [@as("MANUAL") #MANUAL | @as("AUTOMATIC") #AUTOMATIC]
type actionType = [@as("RUN_SSM_DOCUMENTS") #RUN_SSM_DOCUMENTS | @as("APPLY_SCP_POLICY") #APPLY_SCP_POLICY | @as("APPLY_IAM_POLICY") #APPLY_IAM_POLICY]
type actionSubType = [@as("STOP_RDS_INSTANCES") #STOP_RDS_INSTANCES | @as("STOP_EC2_INSTANCES") #STOP_EC2_INSTANCES]
type actionStatus = [@as("RESET_FAILURE") #RESET_FAILURE | @as("RESET_IN_PROGRESS") #RESET_IN_PROGRESS | @as("REVERSE_FAILURE") #REVERSE_FAILURE | @as("REVERSE_SUCCESS") #REVERSE_SUCCESS | @as("REVERSE_IN_PROGRESS") #REVERSE_IN_PROGRESS | @as("EXECUTION_FAILURE") #EXECUTION_FAILURE | @as("EXECUTION_SUCCESS") #EXECUTION_SUCCESS | @as("EXECUTION_IN_PROGRESS") #EXECUTION_IN_PROGRESS | @as("PENDING") #PENDING | @as("STANDBY") #STANDBY]
type actionId = string
type accountId = string
type users = array<user>
type timePeriod = {
@as("End") end: option<genericTimestamp>,
  @as("Start") start: option<genericTimestamp>
}
type targetIds = array<targetId>
type subscriber = {
@as("Address") address: subscriberAddress,
  @as("SubscriptionType") subscriptionType: subscriptionType
}
type spend = {
@as("Unit") unit_: unitValue,
  @as("Amount") amount: numericValue
}
type roles = array<role>
type notification = {
@as("NotificationState") notificationState: option<notificationState>,
  @as("ThresholdType") thresholdType: option<thresholdType>,
  @as("Threshold") threshold: notificationThreshold,
  @as("ComparisonOperator") comparisonOperator: comparisonOperator,
  @as("NotificationType") notificationType: notificationType
}
type instanceIds = array<instanceId>
type groups = array<group>
type dimensionValues = array<genericString>
type costTypes = {
@as("UseAmortized") useAmortized: option<nullableBoolean>,
  @as("IncludeDiscount") includeDiscount: option<nullableBoolean>,
  @as("IncludeSupport") includeSupport: option<nullableBoolean>,
  @as("IncludeOtherSubscription") includeOtherSubscription: option<nullableBoolean>,
  @as("IncludeRecurring") includeRecurring: option<nullableBoolean>,
  @as("IncludeUpfront") includeUpfront: option<nullableBoolean>,
  @as("IncludeCredit") includeCredit: option<nullableBoolean>,
  @as("IncludeRefund") includeRefund: option<nullableBoolean>,
  @as("UseBlended") useBlended: option<nullableBoolean>,
  @as("IncludeSubscription") includeSubscription: option<nullableBoolean>,
  @as("IncludeTax") includeTax: option<nullableBoolean>
}
type actionThreshold = {
@as("ActionThresholdType") actionThresholdType: thresholdType,
  @as("ActionThresholdValue") actionThresholdValue: notificationThreshold
}
type subscribers = array<subscriber>
type ssmActionDefinition = {
@as("InstanceIds") instanceIds: instanceIds,
  @as("Region") region: region,
  @as("ActionSubType") actionSubType: actionSubType
}
type scpActionDefinition = {
@as("TargetIds") targetIds: targetIds,
  @as("PolicyId") policyId: policyId
}
type plannedBudgetLimits = Js.Dict.t<spend>
type notifications = array<notification>
type iamActionDefinition = {
@as("Users") users: option<users>,
  @as("Groups") groups: option<groups>,
  @as("Roles") roles: option<roles>,
  @as("PolicyArn") policyArn: policyArn
}
type costFilters = Js.Dict.t<dimensionValues>
type calculatedSpend = {
@as("ForecastedSpend") forecastedSpend: option<spend>,
  @as("ActualSpend") actualSpend: spend
}
type budgetedAndActualAmounts = {
@as("TimePeriod") timePeriod: option<timePeriod>,
  @as("ActualAmount") actualAmount: option<spend>,
  @as("BudgetedAmount") budgetedAmount: option<spend>
}
type notificationWithSubscribers = {
@as("Subscribers") subscribers: subscribers,
  @as("Notification") notification: notification
}
type definition = {
@as("SsmActionDefinition") ssmActionDefinition: option<ssmActionDefinition>,
  @as("ScpActionDefinition") scpActionDefinition: option<scpActionDefinition>,
  @as("IamActionDefinition") iamActionDefinition: option<iamActionDefinition>
}
type budgetedAndActualAmountsList = array<budgetedAndActualAmounts>
type budget = {
@as("LastUpdatedTime") lastUpdatedTime: option<genericTimestamp>,
  @as("BudgetType") budgetType: budgetType,
  @as("CalculatedSpend") calculatedSpend: option<calculatedSpend>,
  @as("TimePeriod") timePeriod: option<timePeriod>,
  @as("TimeUnit") timeUnit: timeUnit,
  @as("CostTypes") costTypes: option<costTypes>,
  @as("CostFilters") costFilters: option<costFilters>,
  @as("PlannedBudgetLimits") plannedBudgetLimits: option<plannedBudgetLimits>,
  @as("BudgetLimit") budgetLimit: option<spend>,
  @as("BudgetName") budgetName: budgetName
}
type notificationWithSubscribersList = array<notificationWithSubscribers>
type budgets = array<budget>
type budgetPerformanceHistory = {
@as("BudgetedAndActualAmountsList") budgetedAndActualAmountsList: option<budgetedAndActualAmountsList>,
  @as("TimeUnit") timeUnit: option<timeUnit>,
  @as("CostTypes") costTypes: option<costTypes>,
  @as("CostFilters") costFilters: option<costFilters>,
  @as("BudgetType") budgetType: option<budgetType>,
  @as("BudgetName") budgetName: option<budgetName>
}
type action = {
@as("Subscribers") subscribers: subscribers,
  @as("Status") status: actionStatus,
  @as("ApprovalModel") approvalModel: approvalModel,
  @as("ExecutionRoleArn") executionRoleArn: roleArn,
  @as("Definition") definition: definition,
  @as("ActionThreshold") actionThreshold: actionThreshold,
  @as("ActionType") actionType: actionType,
  @as("NotificationType") notificationType: notificationType,
  @as("BudgetName") budgetName: budgetName,
  @as("ActionId") actionId: actionId
}
type actions = array<action>
type actionHistoryDetails = {
@as("Action") action: action,
  @as("Message") message: genericString
}
type actionHistory = {
@as("ActionHistoryDetails") actionHistoryDetails: actionHistoryDetails,
  @as("EventType") eventType: eventType,
  @as("Status") status: actionStatus,
  @as("Timestamp") timestamp_: genericTimestamp
}
type actionHistories = array<actionHistory>

module ExecuteBudgetAction = {
  type t;
  type request = {
@as("ExecutionType") executionType: executionType,
  @as("ActionId") actionId: actionId,
  @as("BudgetName") budgetName: budgetName,
  @as("AccountId") accountId: accountId
}
  type response = {
@as("ExecutionType") executionType: executionType,
  @as("ActionId") actionId: actionId,
  @as("BudgetName") budgetName: budgetName,
  @as("AccountId") accountId: accountId
}
  @module("@aws-sdk/client-budgets") @new external new_: (request) => t = "ExecuteBudgetActionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteBudget = {
  type t;
  type request = {
@as("BudgetName") budgetName: budgetName,
  @as("AccountId") accountId: accountId
}
  type response = unit
  @module("@aws-sdk/client-budgets") @new external new_: (request) => t = "DeleteBudgetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateSubscriber = {
  type t;
  type request = {
@as("NewSubscriber") newSubscriber: subscriber,
  @as("OldSubscriber") oldSubscriber: subscriber,
  @as("Notification") notification: notification,
  @as("BudgetName") budgetName: budgetName,
  @as("AccountId") accountId: accountId
}
  type response = unit
  @module("@aws-sdk/client-budgets") @new external new_: (request) => t = "UpdateSubscriberCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateNotification = {
  type t;
  type request = {
@as("NewNotification") newNotification: notification,
  @as("OldNotification") oldNotification: notification,
  @as("BudgetName") budgetName: budgetName,
  @as("AccountId") accountId: accountId
}
  type response = unit
  @module("@aws-sdk/client-budgets") @new external new_: (request) => t = "UpdateNotificationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteSubscriber = {
  type t;
  type request = {
@as("Subscriber") subscriber: subscriber,
  @as("Notification") notification: notification,
  @as("BudgetName") budgetName: budgetName,
  @as("AccountId") accountId: accountId
}
  type response = unit
  @module("@aws-sdk/client-budgets") @new external new_: (request) => t = "DeleteSubscriberCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteNotification = {
  type t;
  type request = {
@as("Notification") notification: notification,
  @as("BudgetName") budgetName: budgetName,
  @as("AccountId") accountId: accountId
}
  type response = unit
  @module("@aws-sdk/client-budgets") @new external new_: (request) => t = "DeleteNotificationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateSubscriber = {
  type t;
  type request = {
@as("Subscriber") subscriber: subscriber,
  @as("Notification") notification: notification,
  @as("BudgetName") budgetName: budgetName,
  @as("AccountId") accountId: accountId
}
  type response = unit
  @module("@aws-sdk/client-budgets") @new external new_: (request) => t = "CreateSubscriberCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeSubscribersForNotification = {
  type t;
  type request = {
@as("NextToken") nextToken: option<genericString>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("Notification") notification: notification,
  @as("BudgetName") budgetName: budgetName,
  @as("AccountId") accountId: accountId
}
  type response = {
@as("NextToken") nextToken: option<genericString>,
  @as("Subscribers") subscribers: option<subscribers>
}
  @module("@aws-sdk/client-budgets") @new external new_: (request) => t = "DescribeSubscribersForNotificationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeNotificationsForBudget = {
  type t;
  type request = {
@as("NextToken") nextToken: option<genericString>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("BudgetName") budgetName: budgetName,
  @as("AccountId") accountId: accountId
}
  type response = {
@as("NextToken") nextToken: option<genericString>,
  @as("Notifications") notifications: option<notifications>
}
  @module("@aws-sdk/client-budgets") @new external new_: (request) => t = "DescribeNotificationsForBudgetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateNotification = {
  type t;
  type request = {
@as("Subscribers") subscribers: subscribers,
  @as("Notification") notification: notification,
  @as("BudgetName") budgetName: budgetName,
  @as("AccountId") accountId: accountId
}
  type response = unit
  @module("@aws-sdk/client-budgets") @new external new_: (request) => t = "CreateNotificationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateBudget = {
  type t;
  type request = {
@as("NewBudget") newBudget: budget,
  @as("AccountId") accountId: accountId
}
  type response = unit
  @module("@aws-sdk/client-budgets") @new external new_: (request) => t = "UpdateBudgetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeBudget = {
  type t;
  type request = {
@as("BudgetName") budgetName: budgetName,
  @as("AccountId") accountId: accountId
}
  type response = {
@as("Budget") budget: option<budget>
}
  @module("@aws-sdk/client-budgets") @new external new_: (request) => t = "DescribeBudgetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateBudgetAction = {
  type t;
  type request = {
@as("Subscribers") subscribers: subscribers,
  @as("ApprovalModel") approvalModel: approvalModel,
  @as("ExecutionRoleArn") executionRoleArn: roleArn,
  @as("Definition") definition: definition,
  @as("ActionThreshold") actionThreshold: actionThreshold,
  @as("ActionType") actionType: actionType,
  @as("NotificationType") notificationType: notificationType,
  @as("BudgetName") budgetName: budgetName,
  @as("AccountId") accountId: accountId
}
  type response = {
@as("ActionId") actionId: actionId,
  @as("BudgetName") budgetName: budgetName,
  @as("AccountId") accountId: accountId
}
  @module("@aws-sdk/client-budgets") @new external new_: (request) => t = "CreateBudgetActionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateBudgetAction = {
  type t;
  type request = {
@as("Subscribers") subscribers: option<subscribers>,
  @as("ApprovalModel") approvalModel: option<approvalModel>,
  @as("ExecutionRoleArn") executionRoleArn: option<roleArn>,
  @as("Definition") definition: option<definition>,
  @as("ActionThreshold") actionThreshold: option<actionThreshold>,
  @as("NotificationType") notificationType: option<notificationType>,
  @as("ActionId") actionId: actionId,
  @as("BudgetName") budgetName: budgetName,
  @as("AccountId") accountId: accountId
}
  type response = {
@as("NewAction") newAction: action,
  @as("OldAction") oldAction: action,
  @as("BudgetName") budgetName: budgetName,
  @as("AccountId") accountId: accountId
}
  @module("@aws-sdk/client-budgets") @new external new_: (request) => t = "UpdateBudgetActionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeBudgets = {
  type t;
  type request = {
@as("NextToken") nextToken: option<genericString>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("AccountId") accountId: accountId
}
  type response = {
@as("NextToken") nextToken: option<genericString>,
  @as("Budgets") budgets: option<budgets>
}
  @module("@aws-sdk/client-budgets") @new external new_: (request) => t = "DescribeBudgetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeBudgetPerformanceHistory = {
  type t;
  type request = {
@as("NextToken") nextToken: option<genericString>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("TimePeriod") timePeriod: option<timePeriod>,
  @as("BudgetName") budgetName: budgetName,
  @as("AccountId") accountId: accountId
}
  type response = {
@as("NextToken") nextToken: option<genericString>,
  @as("BudgetPerformanceHistory") budgetPerformanceHistory: option<budgetPerformanceHistory>
}
  @module("@aws-sdk/client-budgets") @new external new_: (request) => t = "DescribeBudgetPerformanceHistoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeBudgetAction = {
  type t;
  type request = {
@as("ActionId") actionId: actionId,
  @as("BudgetName") budgetName: budgetName,
  @as("AccountId") accountId: accountId
}
  type response = {
@as("Action") action: action,
  @as("BudgetName") budgetName: budgetName,
  @as("AccountId") accountId: accountId
}
  @module("@aws-sdk/client-budgets") @new external new_: (request) => t = "DescribeBudgetActionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteBudgetAction = {
  type t;
  type request = {
@as("ActionId") actionId: actionId,
  @as("BudgetName") budgetName: budgetName,
  @as("AccountId") accountId: accountId
}
  type response = {
@as("Action") action: action,
  @as("BudgetName") budgetName: budgetName,
  @as("AccountId") accountId: accountId
}
  @module("@aws-sdk/client-budgets") @new external new_: (request) => t = "DeleteBudgetActionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateBudget = {
  type t;
  type request = {
@as("NotificationsWithSubscribers") notificationsWithSubscribers: option<notificationWithSubscribersList>,
  @as("Budget") budget: budget,
  @as("AccountId") accountId: accountId
}
  type response = unit
  @module("@aws-sdk/client-budgets") @new external new_: (request) => t = "CreateBudgetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeBudgetActionsForBudget = {
  type t;
  type request = {
@as("NextToken") nextToken: option<genericString>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("BudgetName") budgetName: budgetName,
  @as("AccountId") accountId: accountId
}
  type response = {
@as("NextToken") nextToken: option<genericString>,
  @as("Actions") actions: actions
}
  @module("@aws-sdk/client-budgets") @new external new_: (request) => t = "DescribeBudgetActionsForBudgetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeBudgetActionsForAccount = {
  type t;
  type request = {
@as("NextToken") nextToken: option<genericString>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("AccountId") accountId: accountId
}
  type response = {
@as("NextToken") nextToken: option<genericString>,
  @as("Actions") actions: actions
}
  @module("@aws-sdk/client-budgets") @new external new_: (request) => t = "DescribeBudgetActionsForAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeBudgetActionHistories = {
  type t;
  type request = {
@as("NextToken") nextToken: option<genericString>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("TimePeriod") timePeriod: option<timePeriod>,
  @as("ActionId") actionId: actionId,
  @as("BudgetName") budgetName: budgetName,
  @as("AccountId") accountId: accountId
}
  type response = {
@as("NextToken") nextToken: option<genericString>,
  @as("ActionHistories") actionHistories: actionHistories
}
  @module("@aws-sdk/client-budgets") @new external new_: (request) => t = "DescribeBudgetActionHistoriesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
