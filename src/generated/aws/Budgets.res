type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
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
type nullableBoolean = bool;
type notificationType = [@as("FORECASTED") #FORECASTED | @as("ACTUAL") #ACTUAL]
type notificationThreshold = float;
type notificationState = [@as("ALARM") #ALARM | @as("OK") #OK]
type maxResults = int;
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
@as("End") end: genericTimestamp,
@as("Start") start: genericTimestamp
}
type targetIds = array<targetId>
type subscriber = {
@as("Address") address: option<subscriberAddress>,
@as("SubscriptionType") subscriptionType: option<subscriptionType>
}
type spend = {
@as("Unit") unit: option<unitValue>,
@as("Amount") amount: option<numericValue>
}
type roles = array<role>
type notification = {
@as("NotificationState") notificationState: notificationState,
@as("ThresholdType") thresholdType: thresholdType,
@as("Threshold") threshold: option<notificationThreshold>,
@as("ComparisonOperator") comparisonOperator: option<comparisonOperator>,
@as("NotificationType") notificationType: option<notificationType>
}
type instanceIds = array<instanceId>
type groups = array<group>
type dimensionValues = array<genericString>
type costTypes = {
@as("UseAmortized") useAmortized: nullableBoolean,
@as("IncludeDiscount") includeDiscount: nullableBoolean,
@as("IncludeSupport") includeSupport: nullableBoolean,
@as("IncludeOtherSubscription") includeOtherSubscription: nullableBoolean,
@as("IncludeRecurring") includeRecurring: nullableBoolean,
@as("IncludeUpfront") includeUpfront: nullableBoolean,
@as("IncludeCredit") includeCredit: nullableBoolean,
@as("IncludeRefund") includeRefund: nullableBoolean,
@as("UseBlended") useBlended: nullableBoolean,
@as("IncludeSubscription") includeSubscription: nullableBoolean,
@as("IncludeTax") includeTax: nullableBoolean
}
type actionThreshold = {
@as("ActionThresholdType") actionThresholdType: option<thresholdType>,
@as("ActionThresholdValue") actionThresholdValue: option<notificationThreshold>
}
type subscribers = array<subscriber>
type ssmActionDefinition = {
@as("InstanceIds") instanceIds: option<instanceIds>,
@as("Region") region: option<region>,
@as("ActionSubType") actionSubType: option<actionSubType>
}
type scpActionDefinition = {
@as("TargetIds") targetIds: option<targetIds>,
@as("PolicyId") policyId: option<policyId>
}
type plannedBudgetLimits = Js.Dict.t< spend>
type notifications = array<notification>
type iamActionDefinition = {
@as("Users") users: users,
@as("Groups") groups: groups,
@as("Roles") roles: roles,
@as("PolicyArn") policyArn: option<policyArn>
}
type costFilters = Js.Dict.t< dimensionValues>
type calculatedSpend = {
@as("ForecastedSpend") forecastedSpend: spend,
@as("ActualSpend") actualSpend: option<spend>
}
type budgetedAndActualAmounts = {
@as("TimePeriod") timePeriod: timePeriod,
@as("ActualAmount") actualAmount: spend,
@as("BudgetedAmount") budgetedAmount: spend
}
type notificationWithSubscribers = {
@as("Subscribers") subscribers: option<subscribers>,
@as("Notification") notification: option<notification>
}
type definition = {
@as("SsmActionDefinition") ssmActionDefinition: ssmActionDefinition,
@as("ScpActionDefinition") scpActionDefinition: scpActionDefinition,
@as("IamActionDefinition") iamActionDefinition: iamActionDefinition
}
type budgetedAndActualAmountsList = array<budgetedAndActualAmounts>
type budget = {
@as("LastUpdatedTime") lastUpdatedTime: genericTimestamp,
@as("BudgetType") budgetType: option<budgetType>,
@as("CalculatedSpend") calculatedSpend: calculatedSpend,
@as("TimePeriod") timePeriod: timePeriod,
@as("TimeUnit") timeUnit: option<timeUnit>,
@as("CostTypes") costTypes: costTypes,
@as("CostFilters") costFilters: costFilters,
@as("PlannedBudgetLimits") plannedBudgetLimits: plannedBudgetLimits,
@as("BudgetLimit") budgetLimit: spend,
@as("BudgetName") budgetName: option<budgetName>
}
type notificationWithSubscribersList = array<notificationWithSubscribers>
type budgets = array<budget>
type budgetPerformanceHistory = {
@as("BudgetedAndActualAmountsList") budgetedAndActualAmountsList: budgetedAndActualAmountsList,
@as("TimeUnit") timeUnit: timeUnit,
@as("CostTypes") costTypes: costTypes,
@as("CostFilters") costFilters: costFilters,
@as("BudgetType") budgetType: budgetType,
@as("BudgetName") budgetName: budgetName
}
type action = {
@as("Subscribers") subscribers: option<subscribers>,
@as("Status") status: option<actionStatus>,
@as("ApprovalModel") approvalModel: option<approvalModel>,
@as("ExecutionRoleArn") executionRoleArn: option<roleArn>,
@as("Definition") definition: option<definition>,
@as("ActionThreshold") actionThreshold: option<actionThreshold>,
@as("ActionType") actionType: option<actionType>,
@as("NotificationType") notificationType: option<notificationType>,
@as("BudgetName") budgetName: option<budgetName>,
@as("ActionId") actionId: option<actionId>
}
type actions = array<action>
type actionHistoryDetails = {
@as("Action") action: option<action>,
@as("Message") message: option<genericString>
}
type actionHistory = {
@as("ActionHistoryDetails") actionHistoryDetails: option<actionHistoryDetails>,
@as("EventType") eventType: option<eventType>,
@as("Status") status: option<actionStatus>,
@as("Timestamp") timestamp: option<genericTimestamp>
}
type actionHistories = array<actionHistory>
type clientType;
@module("@aws-sdk/client-budgets") @new external createClient: unit => clientType = "BudgetsClient";
module ExecuteBudgetAction = {
  type t;
  type request = {
@as("ExecutionType") executionType: option<executionType>,
@as("ActionId") actionId: option<actionId>,
@as("BudgetName") budgetName: option<budgetName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("ExecutionType") executionType: option<executionType>,
@as("ActionId") actionId: option<actionId>,
@as("BudgetName") budgetName: option<budgetName>,
@as("AccountId") accountId: option<accountId>
}
  @module("@aws-sdk/client-budgets") @new external new_: (Js.Promise.t<request>) => t = "ExecuteBudgetActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBudget = {
  type t;
  type request = {
@as("BudgetName") budgetName: option<budgetName>,
@as("AccountId") accountId: option<accountId>
}
  type response = unit
  @module("@aws-sdk/client-budgets") @new external new_: (Js.Promise.t<request>) => t = "DeleteBudgetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSubscriber = {
  type t;
  type request = {
@as("NewSubscriber") newSubscriber: option<subscriber>,
@as("OldSubscriber") oldSubscriber: option<subscriber>,
@as("Notification") notification: option<notification>,
@as("BudgetName") budgetName: option<budgetName>,
@as("AccountId") accountId: option<accountId>
}
  type response = unit
  @module("@aws-sdk/client-budgets") @new external new_: (Js.Promise.t<request>) => t = "UpdateSubscriberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateNotification = {
  type t;
  type request = {
@as("NewNotification") newNotification: option<notification>,
@as("OldNotification") oldNotification: option<notification>,
@as("BudgetName") budgetName: option<budgetName>,
@as("AccountId") accountId: option<accountId>
}
  type response = unit
  @module("@aws-sdk/client-budgets") @new external new_: (Js.Promise.t<request>) => t = "UpdateNotificationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSubscriber = {
  type t;
  type request = {
@as("Subscriber") subscriber: option<subscriber>,
@as("Notification") notification: option<notification>,
@as("BudgetName") budgetName: option<budgetName>,
@as("AccountId") accountId: option<accountId>
}
  type response = unit
  @module("@aws-sdk/client-budgets") @new external new_: (Js.Promise.t<request>) => t = "DeleteSubscriberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteNotification = {
  type t;
  type request = {
@as("Notification") notification: option<notification>,
@as("BudgetName") budgetName: option<budgetName>,
@as("AccountId") accountId: option<accountId>
}
  type response = unit
  @module("@aws-sdk/client-budgets") @new external new_: (Js.Promise.t<request>) => t = "DeleteNotificationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSubscriber = {
  type t;
  type request = {
@as("Subscriber") subscriber: option<subscriber>,
@as("Notification") notification: option<notification>,
@as("BudgetName") budgetName: option<budgetName>,
@as("AccountId") accountId: option<accountId>
}
  type response = unit
  @module("@aws-sdk/client-budgets") @new external new_: (Js.Promise.t<request>) => t = "CreateSubscriberCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSubscribersForNotification = {
  type t;
  type request = {
@as("NextToken") nextToken: genericString,
@as("MaxResults") maxResults: maxResults,
@as("Notification") notification: option<notification>,
@as("BudgetName") budgetName: option<budgetName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("Subscribers") subscribers: subscribers
}
  @module("@aws-sdk/client-budgets") @new external new_: (Js.Promise.t<request>) => t = "DescribeSubscribersForNotificationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeNotificationsForBudget = {
  type t;
  type request = {
@as("NextToken") nextToken: genericString,
@as("MaxResults") maxResults: maxResults,
@as("BudgetName") budgetName: option<budgetName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("Notifications") notifications: notifications
}
  @module("@aws-sdk/client-budgets") @new external new_: (Js.Promise.t<request>) => t = "DescribeNotificationsForBudgetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateNotification = {
  type t;
  type request = {
@as("Subscribers") subscribers: option<subscribers>,
@as("Notification") notification: option<notification>,
@as("BudgetName") budgetName: option<budgetName>,
@as("AccountId") accountId: option<accountId>
}
  type response = unit
  @module("@aws-sdk/client-budgets") @new external new_: (Js.Promise.t<request>) => t = "CreateNotificationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateBudget = {
  type t;
  type request = {
@as("NewBudget") newBudget: option<budget>,
@as("AccountId") accountId: option<accountId>
}
  type response = unit
  @module("@aws-sdk/client-budgets") @new external new_: (Js.Promise.t<request>) => t = "UpdateBudgetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBudget = {
  type t;
  type request = {
@as("BudgetName") budgetName: option<budgetName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("Budget") budget: budget
}
  @module("@aws-sdk/client-budgets") @new external new_: (Js.Promise.t<request>) => t = "DescribeBudgetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBudgetAction = {
  type t;
  type request = {
@as("Subscribers") subscribers: option<subscribers>,
@as("ApprovalModel") approvalModel: option<approvalModel>,
@as("ExecutionRoleArn") executionRoleArn: option<roleArn>,
@as("Definition") definition: option<definition>,
@as("ActionThreshold") actionThreshold: option<actionThreshold>,
@as("ActionType") actionType: option<actionType>,
@as("NotificationType") notificationType: option<notificationType>,
@as("BudgetName") budgetName: option<budgetName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("ActionId") actionId: option<actionId>,
@as("BudgetName") budgetName: option<budgetName>,
@as("AccountId") accountId: option<accountId>
}
  @module("@aws-sdk/client-budgets") @new external new_: (Js.Promise.t<request>) => t = "CreateBudgetActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateBudgetAction = {
  type t;
  type request = {
@as("Subscribers") subscribers: subscribers,
@as("ApprovalModel") approvalModel: approvalModel,
@as("ExecutionRoleArn") executionRoleArn: roleArn,
@as("Definition") definition: definition,
@as("ActionThreshold") actionThreshold: actionThreshold,
@as("NotificationType") notificationType: notificationType,
@as("ActionId") actionId: option<actionId>,
@as("BudgetName") budgetName: option<budgetName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("NewAction") newAction: option<action>,
@as("OldAction") oldAction: option<action>,
@as("BudgetName") budgetName: option<budgetName>,
@as("AccountId") accountId: option<accountId>
}
  @module("@aws-sdk/client-budgets") @new external new_: (Js.Promise.t<request>) => t = "UpdateBudgetActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBudgets = {
  type t;
  type request = {
@as("NextToken") nextToken: genericString,
@as("MaxResults") maxResults: maxResults,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("Budgets") budgets: budgets
}
  @module("@aws-sdk/client-budgets") @new external new_: (Js.Promise.t<request>) => t = "DescribeBudgetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBudgetPerformanceHistory = {
  type t;
  type request = {
@as("NextToken") nextToken: genericString,
@as("MaxResults") maxResults: maxResults,
@as("TimePeriod") timePeriod: timePeriod,
@as("BudgetName") budgetName: option<budgetName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("BudgetPerformanceHistory") budgetPerformanceHistory: budgetPerformanceHistory
}
  @module("@aws-sdk/client-budgets") @new external new_: (Js.Promise.t<request>) => t = "DescribeBudgetPerformanceHistoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBudgetAction = {
  type t;
  type request = {
@as("ActionId") actionId: option<actionId>,
@as("BudgetName") budgetName: option<budgetName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("Action") action: option<action>,
@as("BudgetName") budgetName: option<budgetName>,
@as("AccountId") accountId: option<accountId>
}
  @module("@aws-sdk/client-budgets") @new external new_: (Js.Promise.t<request>) => t = "DescribeBudgetActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBudgetAction = {
  type t;
  type request = {
@as("ActionId") actionId: option<actionId>,
@as("BudgetName") budgetName: option<budgetName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("Action") action: option<action>,
@as("BudgetName") budgetName: option<budgetName>,
@as("AccountId") accountId: option<accountId>
}
  @module("@aws-sdk/client-budgets") @new external new_: (Js.Promise.t<request>) => t = "DeleteBudgetActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBudget = {
  type t;
  type request = {
@as("NotificationsWithSubscribers") notificationsWithSubscribers: notificationWithSubscribersList,
@as("Budget") budget: option<budget>,
@as("AccountId") accountId: option<accountId>
}
  type response = unit
  @module("@aws-sdk/client-budgets") @new external new_: (Js.Promise.t<request>) => t = "CreateBudgetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBudgetActionsForBudget = {
  type t;
  type request = {
@as("NextToken") nextToken: genericString,
@as("MaxResults") maxResults: maxResults,
@as("BudgetName") budgetName: option<budgetName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("Actions") actions: option<actions>
}
  @module("@aws-sdk/client-budgets") @new external new_: (Js.Promise.t<request>) => t = "DescribeBudgetActionsForBudgetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBudgetActionsForAccount = {
  type t;
  type request = {
@as("NextToken") nextToken: genericString,
@as("MaxResults") maxResults: maxResults,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("Actions") actions: option<actions>
}
  @module("@aws-sdk/client-budgets") @new external new_: (Js.Promise.t<request>) => t = "DescribeBudgetActionsForAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBudgetActionHistories = {
  type t;
  type request = {
@as("NextToken") nextToken: genericString,
@as("MaxResults") maxResults: maxResults,
@as("TimePeriod") timePeriod: timePeriod,
@as("ActionId") actionId: option<actionId>,
@as("BudgetName") budgetName: option<budgetName>,
@as("AccountId") accountId: option<accountId>
}
  type response = {
@as("NextToken") nextToken: genericString,
@as("ActionHistories") actionHistories: option<actionHistories>
}
  @module("@aws-sdk/client-budgets") @new external new_: (Js.Promise.t<request>) => t = "DescribeBudgetActionHistoriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
