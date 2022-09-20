type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-budgets") @new
external createClient: unit => awsServiceClient = "BudgetsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
@ocaml.doc("<p>The error message the exception carries.</p>") type errorMessage = string
type user = string
@ocaml.doc(
  "<p> A string that represents the spend unit of a budget. It can't be null or empty.</p>"
)
type unitValue = string
@ocaml.doc("<p> The time unit of the budget, such as MONTHLY or QUARTERLY.</p>")
type timeUnit = [
  | @as("ANNUALLY") #ANNUALLY
  | @as("QUARTERLY") #QUARTERLY
  | @as("MONTHLY") #MONTHLY
  | @as("DAILY") #DAILY
]
@ocaml.doc("<p> The type of threshold for a notification.</p>")
type thresholdType = [@as("ABSOLUTE_VALUE") #ABSOLUTE_VALUE | @as("PERCENTAGE") #PERCENTAGE]
type targetId = string
@ocaml.doc("<p> The subscription type of the subscriber. It can be SMS or EMAIL.</p>")
type subscriptionType = [@as("EMAIL") #EMAIL | @as("SNS") #SNS]
@ocaml.doc(
  "<p> A string that contains an email address or SNS topic for the subscriber's address.</p>"
)
type subscriberAddress = string
type roleArn = string
type role = string
type region = string
type policyId = string
type policyArn = string
@ocaml.doc("<p> A string that represents a numeric value.</p>") type numericValue = string
type nullableBoolean = bool
@ocaml.doc("<p> The type of a notification. It must be ACTUAL or FORECASTED.</p>")
type notificationType = [@as("FORECASTED") #FORECASTED | @as("ACTUAL") #ACTUAL]
@ocaml.doc("<p> The threshold of a notification.</p>") type notificationThreshold = float
type notificationState = [@as("ALARM") #ALARM | @as("OK") #OK]
type maxResultsBudgetNotifications = int
@ocaml.doc(
  "<p> An integer that represents how many entries a paginated response contains. The maximum is 100.</p>"
)
type maxResults = int
type instanceId = string
type group = string
@ocaml.doc("<p> A generic time stamp. In Java, it's transformed to a <code>Date</code> object.</p>")
type genericTimestamp = Js.Date.t
@ocaml.doc("<p> A generic string.</p>") type genericString = string
type executionType = [
  | @as("RESET_BUDGET_ACTION") #RESET_BUDGET_ACTION
  | @as("REVERSE_BUDGET_ACTION") #REVERSE_BUDGET_ACTION
  | @as("RETRY_BUDGET_ACTION") #RETRY_BUDGET_ACTION
  | @as("APPROVE_BUDGET_ACTION") #APPROVE_BUDGET_ACTION
]
type eventType = [
  | @as("EXECUTE_ACTION") #EXECUTE_ACTION
  | @as("UPDATE_ACTION") #UPDATE_ACTION
  | @as("DELETE_ACTION") #DELETE_ACTION
  | @as("CREATE_ACTION") #CREATE_ACTION
  | @as("SYSTEM") #SYSTEM
]
@ocaml.doc("<p> The comparison operator of a notification. Currently, the service supports the following
			operators:</p>
		       <p>
            <code>GREATER_THAN</code>, <code>LESS_THAN</code>, <code>EQUAL_TO</code>
         </p>")
type comparisonOperator = [
  | @as("EQUAL_TO") #EQUAL_TO
  | @as("LESS_THAN") #LESS_THAN
  | @as("GREATER_THAN") #GREATER_THAN
]
@ocaml.doc("<p> The type of a budget. It must be one of the following types: </p>
		       <p>
            <code>COST</code>, <code>USAGE</code>, <code>RI_UTILIZATION</code>, <code>RI_COVERAGE</code>, <code>SAVINGS_PLANS_UTILIZATION</code>, or <code>SAVINGS_PLANS_COVERAGE</code>.</p>")
type budgetType = [
  | @as("SAVINGS_PLANS_COVERAGE") #SAVINGS_PLANS_COVERAGE
  | @as("SAVINGS_PLANS_UTILIZATION") #SAVINGS_PLANS_UTILIZATION
  | @as("RI_COVERAGE") #RI_COVERAGE
  | @as("RI_UTILIZATION") #RI_UTILIZATION
  | @as("COST") #COST
  | @as("USAGE") #USAGE
]
@ocaml.doc(
  "<p> A string that represents the budget name. The \":\" and \"\\\" characters aren't allowed.</p>"
)
type budgetName = string
type autoAdjustType = [@as("FORECAST") #FORECAST | @as("HISTORICAL") #HISTORICAL]
type approvalModel = [@as("MANUAL") #MANUAL | @as("AUTOMATIC") #AUTOMATIC]
type adjustmentPeriod = int
type actionType = [
  | @as("RUN_SSM_DOCUMENTS") #RUN_SSM_DOCUMENTS
  | @as("APPLY_SCP_POLICY") #APPLY_SCP_POLICY
  | @as("APPLY_IAM_POLICY") #APPLY_IAM_POLICY
]
type actionSubType = [
  | @as("STOP_RDS_INSTANCES") #STOP_RDS_INSTANCES
  | @as("STOP_EC2_INSTANCES") #STOP_EC2_INSTANCES
]
type actionStatus = [
  | @as("RESET_FAILURE") #RESET_FAILURE
  | @as("RESET_IN_PROGRESS") #RESET_IN_PROGRESS
  | @as("REVERSE_FAILURE") #REVERSE_FAILURE
  | @as("REVERSE_SUCCESS") #REVERSE_SUCCESS
  | @as("REVERSE_IN_PROGRESS") #REVERSE_IN_PROGRESS
  | @as("EXECUTION_FAILURE") #EXECUTION_FAILURE
  | @as("EXECUTION_SUCCESS") #EXECUTION_SUCCESS
  | @as("EXECUTION_IN_PROGRESS") #EXECUTION_IN_PROGRESS
  | @as("PENDING") #PENDING
  | @as("STANDBY") #STANDBY
]
type actionId = string
@ocaml.doc("<p>The account ID of the user. It's a 12-digit number.</p>") type accountId = string
type users = array<user>
@ocaml.doc("<p>The period of time that's covered by a budget. The period has a start date and an end date.
			The start date must come before the end date. There are no restrictions on the end date. </p>")
type timePeriod = {
  @ocaml.doc("<p>The end date for a budget. If you didn't specify an end date, Amazon Web Services set your end date to <code>06/15/87 00:00 UTC</code>. The defaults are the same for the Billing and Cost Management console and the API.</p>
		       <p>After the end date, Amazon Web Services deletes the budget and all the associated
			notifications and subscribers. You can change your end date with the
				<code>UpdateBudget</code> operation.</p>")
  @as("End")
  end: option<genericTimestamp>,
  @ocaml.doc("<p>The start date for a budget. If you created your budget and didn't specify a start date, Amazon Web Services defaults to the start of your chosen time period (DAILY, MONTHLY, QUARTERLY, or ANNUALLY). For example, if you created your budget on January 24, 2018, chose <code>DAILY</code>, and didn't set a start date, Amazon Web Services set your start date to <code>01/24/18 00:00 UTC</code>. If you chose <code>MONTHLY</code>, Amazon Web Services set your start date to <code>01/01/18 00:00 UTC</code>. The defaults are the same for the Billing and Cost Management console and the API.</p>
		       <p>You can change your start date with the <code>UpdateBudget</code> operation.</p>")
  @as("Start")
  start: option<genericTimestamp>,
}
type targetIds = array<targetId>
@ocaml.doc("<p>The subscriber to a budget notification. The subscriber consists of a subscription type and either an Amazon SNS topic or an email address.</p>
		       <p>For example, an email subscriber has the following parameters:</p>
		       <ul>
            <li>
				           <p>A <code>subscriptionType</code> of <code>EMAIL</code>
               </p>
			         </li>
            <li>
				           <p>An <code>address</code> of <code>example@example.com</code>
               </p>
			         </li>
         </ul>")
type subscriber = {
  @ocaml.doc("<p>The address that Amazon Web Services sends budget notifications to, either an SNS topic or an email.</p>
		       <p>When you create a subscriber, the value of <code>Address</code> can't contain line breaks.</p>")
  @as("Address")
  address: subscriberAddress,
  @ocaml.doc("<p>The type of notification that Amazon Web Services sends to a subscriber.</p>")
  @as("SubscriptionType")
  subscriptionType: subscriptionType,
}
@ocaml.doc("<p>The amount of cost or usage that's measured for a budget.</p>
		       <p>For example, a <code>Spend</code> for <code>3 GB</code> of S3 usage has the following
			parameters:</p>
		       <ul>
            <li>
				           <p>An <code>Amount</code> of <code>3</code>
               </p>
			         </li>
            <li>
				           <p>A <code>unit</code> of <code>GB</code>
               </p>
			         </li>
         </ul>")
type spend = {
  @ocaml.doc("<p>The unit of measurement that's used for the budget forecast, actual spend, or budget
			threshold, such as USD or GBP.</p>")
  @as("Unit")
  unit_: unitValue,
  @ocaml.doc("<p>The cost or usage amount that's associated with a budget forecast, actual spend, or budget
			threshold.</p>")
  @as("Amount")
  amount: numericValue,
}
type roles = array<role>
@ocaml.doc("<p>A notification that's associated with a budget. A budget can have up to ten notifications. </p>
		       <p>Each notification must have at least one subscriber. A notification can have one SNS subscriber and up to 10 email subscribers, for a total of 11 subscribers.</p>
		       <p>For example, if you have a budget for 200 dollars and you want to be notified when you go over 160 dollars, create a notification with the following parameters:</p>
		       <ul>
            <li>
				           <p>A notificationType of <code>ACTUAL</code>
               </p>
			         </li>
            <li>
				           <p>A <code>thresholdType</code> of <code>PERCENTAGE</code>
               </p>
			         </li>
            <li>
				           <p>A <code>comparisonOperator</code> of <code>GREATER_THAN</code>
               </p>
			         </li>
            <li>
				           <p>A notification <code>threshold</code> of <code>80</code>
               </p>
			         </li>
         </ul>")
type notification = {
  @ocaml.doc("<p>Specifies whether this notification is in alarm. If a budget notification is in the
				<code>ALARM</code> state, you passed the set threshold for the budget.</p>")
  @as("NotificationState")
  notificationState: option<notificationState>,
  @ocaml.doc(
    "<p>The type of threshold for a notification. For <code>ABSOLUTE_VALUE</code> thresholds, Amazon Web Services notifies you when you go over or are forecasted to go over your total cost threshold. For <code>PERCENTAGE</code> thresholds, Amazon Web Services notifies you when you go over or are forecasted to go over a certain percentage of your forecasted spend. For example, if you have a budget for 200 dollars and you have a <code>PERCENTAGE</code> threshold of 80%, Amazon Web Services notifies you when you go over 160 dollars.</p>"
  )
  @as("ThresholdType")
  thresholdType: option<thresholdType>,
  @ocaml.doc("<p>The threshold that's associated with a notification. Thresholds are always a percentage, and
			many customers find value being alerted between 50% - 200% of the budgeted amount. The
			maximum limit for your threshold is 1,000,000% above the budgeted amount.</p>")
  @as("Threshold")
  threshold: notificationThreshold,
  @ocaml.doc("<p>The comparison that's used for this notification.</p>") @as("ComparisonOperator")
  comparisonOperator: comparisonOperator,
  @ocaml.doc("<p>Specifies whether the notification is for how much you have spent (<code>ACTUAL</code>) or
			for how much that you're forecasted to spend (<code>FORECASTED</code>).</p>")
  @as("NotificationType")
  notificationType: notificationType,
}
type instanceIds = array<instanceId>
@ocaml.doc(
  "<p>The parameters that define or describe the historical data that your auto-adjusting budget is based on.</p>"
)
type historicalOptions = {
  @ocaml.doc("<p>The integer that describes how many budget periods in your <code>BudgetAdjustmentPeriod</code> are included in the calculation of your current <code>BudgetLimit</code>. If the first budget period in your <code>BudgetAdjustmentPeriod</code> has no cost data, then that budget period isn’t included in the average that determines your budget limit. </p>
		       <p>For example, if you set <code>BudgetAdjustmentPeriod</code> as <code>4</code> quarters, but your account had no cost data in the first quarter, then only the last three quarters are included in the calculation. In this scenario, <code>LookBackAvailablePeriods</code> returns <code>3</code>. </p>
		       <p>You can’t set your own <code>LookBackAvailablePeriods</code>. The value is automatically calculated from the <code>BudgetAdjustmentPeriod</code> and your historical cost data.</p>")
  @as("LookBackAvailablePeriods")
  lookBackAvailablePeriods: option<adjustmentPeriod>,
  @ocaml.doc("<p>The number of budget periods included in the moving-average calculation that determines your auto-adjusted budget amount. The maximum value depends on the <code>TimeUnit</code> granularity of the budget:</p>
		       <ul>
            <li>
               <p>For the <code>DAILY</code> granularity, the maximum value is <code>60</code>.</p>
            </li>
            <li>
               <p>For the <code>MONTHLY</code> granularity, the maximum value is <code>12</code>.</p>
            </li>
            <li>
               <p>For the <code>QUARTERLY</code> granularity, the maximum value is <code>4</code>.</p>
            </li>
            <li>
               <p>For the <code>ANNUALLY</code> granularity, the maximum value is <code>1</code>.</p>
            </li>
         </ul>")
  @as("BudgetAdjustmentPeriod")
  budgetAdjustmentPeriod: adjustmentPeriod,
}
type groups = array<group>
type dimensionValues = array<genericString>
@ocaml.doc("<p>The types of cost that are included in a <code>COST</code> budget, such as tax and subscriptions.</p>
		       <p>
            <code>USAGE</code>, <code>RI_UTILIZATION</code>, <code>RI_COVERAGE</code>,
				<code>SAVINGS_PLANS_UTILIZATION</code>, and <code>SAVINGS_PLANS_COVERAGE</code>
			budgets don't have <code>CostTypes</code>.</p>")
type costTypes = {
  @ocaml.doc("<p>Specifies whether a budget uses the amortized rate.</p>
		       <p>The default value is <code>false</code>.</p>")
  @as("UseAmortized")
  useAmortized: option<nullableBoolean>,
  @ocaml.doc("<p>Specifies whether a budget includes discounts.</p>
		       <p>The default value is <code>true</code>.</p>")
  @as("IncludeDiscount")
  includeDiscount: option<nullableBoolean>,
  @ocaml.doc("<p>Specifies whether a budget includes support subscription fees.</p>
		       <p>The default value is <code>true</code>.</p>")
  @as("IncludeSupport")
  includeSupport: option<nullableBoolean>,
  @ocaml.doc("<p>Specifies whether a budget includes non-RI subscription costs.</p>
		       <p>The default value is <code>true</code>.</p>")
  @as("IncludeOtherSubscription")
  includeOtherSubscription: option<nullableBoolean>,
  @ocaml.doc("<p>Specifies whether a budget includes recurring fees such as monthly RI fees.</p>
		       <p>The default value is <code>true</code>.</p>")
  @as("IncludeRecurring")
  includeRecurring: option<nullableBoolean>,
  @ocaml.doc("<p>Specifies whether a budget includes upfront RI costs.</p>
		       <p>The default value is <code>true</code>.</p>")
  @as("IncludeUpfront")
  includeUpfront: option<nullableBoolean>,
  @ocaml.doc("<p>Specifies whether a budget includes credits.</p>
		       <p>The default value is <code>true</code>.</p>")
  @as("IncludeCredit")
  includeCredit: option<nullableBoolean>,
  @ocaml.doc("<p>Specifies whether a budget includes refunds.</p>
		       <p>The default value is <code>true</code>.</p>")
  @as("IncludeRefund")
  includeRefund: option<nullableBoolean>,
  @ocaml.doc("<p>Specifies whether a budget uses a blended rate.</p>
		       <p>The default value is <code>false</code>.</p>")
  @as("UseBlended")
  useBlended: option<nullableBoolean>,
  @ocaml.doc("<p>Specifies whether a budget includes subscriptions.</p>
		       <p>The default value is <code>true</code>.</p>")
  @as("IncludeSubscription")
  includeSubscription: option<nullableBoolean>,
  @ocaml.doc("<p>Specifies whether a budget includes taxes.</p>
		       <p>The default value is <code>true</code>.</p>")
  @as("IncludeTax")
  includeTax: option<nullableBoolean>,
}
@ocaml.doc("<p>The trigger threshold of the action. </p>")
type actionThreshold = {
  @as("ActionThresholdType") actionThresholdType: thresholdType,
  @as("ActionThresholdValue") actionThresholdValue: notificationThreshold,
}
@ocaml.doc("<p> A list of subscribers.</p>") type subscribers = array<subscriber>
@ocaml.doc("<p>The Amazon Web Services Systems Manager (SSM) action definition details. </p>")
type ssmActionDefinition = {
  @ocaml.doc("<p>The EC2 and RDS instance IDs. </p>") @as("InstanceIds") instanceIds: instanceIds,
  @ocaml.doc("<p>The Region to run the SSM document. </p>") @as("Region") region: region,
  @ocaml.doc("<p>The action subType. </p>") @as("ActionSubType") actionSubType: actionSubType,
}
@ocaml.doc("<p>The service control policies (SCP) action definition details. </p>")
type scpActionDefinition = {
  @ocaml.doc("<p>A list of target IDs. </p>") @as("TargetIds") targetIds: targetIds,
  @ocaml.doc("<p>The policy ID attached. </p>") @as("PolicyId") policyId: policyId,
}
type plannedBudgetLimits = Js.Dict.t<spend>
@ocaml.doc("<p> A list of notifications.</p>") type notifications = array<notification>
@ocaml.doc("<p>The Identity and Access Management (IAM) action definition details. </p>")
type iamActionDefinition = {
  @ocaml.doc("<p>A list of users to be attached. There must be at least one user. </p>")
  @as("Users")
  users: option<users>,
  @ocaml.doc("<p>A list of groups to be attached. There must be at least one group. </p>")
  @as("Groups")
  groups: option<groups>,
  @ocaml.doc("<p>A list of roles to be attached. There must be at least one role. </p>")
  @as("Roles")
  roles: option<roles>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the policy to be attached. </p>")
  @as("PolicyArn")
  policyArn: policyArn,
}
@ocaml.doc("<p> A map that represents the cost filters that are applied to the budget.</p>")
type costFilters = Js.Dict.t<dimensionValues>
@ocaml.doc("<p>The spend objects that are associated with this budget. The <code>actualSpend</code> tracks
			how much you've used, cost, usage, RI units, or Savings Plans units and the
				<code>forecastedSpend</code> tracks how much that you're predicted to spend based on
			your historical usage profile.</p>
		       <p>For example, if it's the 20th of the month and you have spent <code>50</code> dollars on
			Amazon EC2, your <code>actualSpend</code> is <code>50 USD</code>, and your
				<code>forecastedSpend</code> is <code>75 USD</code>.</p>")
type calculatedSpend = {
  @ocaml.doc("<p>The amount of cost, usage, RI units, or Savings Plans units that you're forecasted to
			use.</p>")
  @as("ForecastedSpend")
  forecastedSpend: option<spend>,
  @ocaml.doc("<p>The amount of cost, usage, RI units, or Savings Plans units that you used.</p>")
  @as("ActualSpend")
  actualSpend: spend,
}
@ocaml.doc(
  "<p>The amount of cost or usage that you created the budget for, compared to your actual costs or usage.</p>"
)
type budgetedAndActualAmounts = {
  @ocaml.doc("<p>The time period that's covered by this budget comparison.</p>") @as("TimePeriod")
  timePeriod: option<timePeriod>,
  @ocaml.doc("<p>Your actual costs or usage for a budget period.</p>") @as("ActualAmount")
  actualAmount: option<spend>,
  @ocaml.doc("<p>The amount of cost or usage that you created the budget for.</p>")
  @as("BudgetedAmount")
  budgetedAmount: option<spend>,
}
@ocaml.doc("<p>The parameters that determine the budget amount for an auto-adjusting budget.</p>")
type autoAdjustData = {
  @ocaml.doc("<p>The last time that your budget was auto-adjusted.</p>") @as("LastAutoAdjustTime")
  lastAutoAdjustTime: option<genericTimestamp>,
  @ocaml.doc(
    "<p>The parameters that define or describe the historical data that your auto-adjusting budget is based on.</p>"
  )
  @as("HistoricalOptions")
  historicalOptions: option<historicalOptions>,
  @ocaml.doc(
    "<p>The string that defines whether your budget auto-adjusts based on historical or forecasted data.</p>"
  )
  @as("AutoAdjustType")
  autoAdjustType: autoAdjustType,
}
@ocaml.doc(
  "<p>A notification with subscribers. A notification can have one SNS subscriber and up to 10 email subscribers, for a total of 11 subscribers.</p>"
)
type notificationWithSubscribers = {
  @ocaml.doc("<p>A list of subscribers who are subscribed to this notification.</p>")
  @as("Subscribers")
  subscribers: subscribers,
  @ocaml.doc("<p>The notification that's associated with a budget.</p>") @as("Notification")
  notification: notification,
}
@ocaml.doc("<p>Specifies all of the type-specific parameters. </p>")
type definition = {
  @ocaml.doc("<p>The Amazon Web Services Systems Manager (SSM) action definition details. </p>")
  @as("SsmActionDefinition")
  ssmActionDefinition: option<ssmActionDefinition>,
  @ocaml.doc("<p>The service control policies (SCPs) action definition details. </p>")
  @as("ScpActionDefinition")
  scpActionDefinition: option<scpActionDefinition>,
  @ocaml.doc("<p>The Identity and Access Management (IAM) action definition details. </p>")
  @as("IamActionDefinition")
  iamActionDefinition: option<iamActionDefinition>,
}
type budgetedAndActualAmountsList = array<budgetedAndActualAmounts>
@ocaml.doc("<p>
         The budget name and associated notifications for an account.
      </p>")
type budgetNotificationsForAccount = {
  @as("BudgetName") budgetName: option<budgetName>,
  @as("Notifications") notifications: option<notifications>,
}
@ocaml.doc("<p>Represents the output of the <code>CreateBudget</code> operation. The content consists of the detailed metadata and data file information, and the current status of the <code>budget</code> object.</p>
		       <p>This is the Amazon Resource Name (ARN) pattern for a budget: </p>
		       <p>
            <code>arn:aws:budgets::AccountId:budget/budgetName</code>
         </p>")
type budget = {
  @ocaml.doc("<p>The parameters that determine the budget amount for an auto-adjusting budget.</p>")
  @as("AutoAdjustData")
  autoAdjustData: option<autoAdjustData>,
  @ocaml.doc("<p>The last time that you updated this budget.</p>") @as("LastUpdatedTime")
  lastUpdatedTime: option<genericTimestamp>,
  @ocaml.doc("<p>Specifies whether this budget tracks costs, usage, RI utilization, RI coverage, Savings
			Plans utilization, or Savings Plans coverage.</p>")
  @as("BudgetType")
  budgetType: budgetType,
  @ocaml.doc("<p>The actual and forecasted cost or usage that the budget tracks.</p>")
  @as("CalculatedSpend")
  calculatedSpend: option<calculatedSpend>,
  @ocaml.doc("<p>The period of time that's covered by a budget. You setthe start date and end date. The start
			date must come before the end date. The end date must come before <code>06/15/87 00:00
				UTC</code>. </p>
		       <p>If you create your budget and don't specify a start date, Amazon Web Services defaults to the
			start of your chosen time period (DAILY, MONTHLY, QUARTERLY, or ANNUALLY). For example,
			if you created your budget on January 24, 2018, chose <code>DAILY</code>, and didn't set
			a start date, Amazon Web Services set your start date to <code>01/24/18 00:00 UTC</code>.
			If you chose <code>MONTHLY</code>, Amazon Web Services set your start date to
				<code>01/01/18 00:00 UTC</code>. If you didn't specify an end date, Amazon Web Services set your end date to <code>06/15/87 00:00 UTC</code>. The defaults are the same for
			the Billing and Cost Management console and the API. </p>
		       <p>You can change either date with the <code>UpdateBudget</code> operation.</p>
		       <p>After the end date, Amazon Web Services deletes the budget and all the associated
			notifications and subscribers.</p>")
  @as("TimePeriod")
  timePeriod: option<timePeriod>,
  @ocaml.doc("<p>The length of time until a budget resets the actual and forecasted spend.</p>")
  @as("TimeUnit")
  timeUnit: timeUnit,
  @ocaml.doc("<p>The types of costs that are included in this <code>COST</code> budget.</p>
		       <p>
            <code>USAGE</code>, <code>RI_UTILIZATION</code>, <code>RI_COVERAGE</code>, <code>SAVINGS_PLANS_UTILIZATION</code>, and <code>SAVINGS_PLANS_COVERAGE</code> budgets do not have <code>CostTypes</code>.</p>")
  @as("CostTypes")
  costTypes: option<costTypes>,
  @ocaml.doc("<p>The cost filters, such as <code>Region</code>, <code>Service</code>, <code>member account</code>, <code>Tag</code>, or <code>Cost Category</code>, that are applied to a budget.</p>
		       <p>Amazon Web Services Budgets supports the following services as a <code>Service</code> filter for RI budgets:</p>
		       <ul>
            <li>
				           <p>Amazon EC2</p>
			         </li>
            <li>
				           <p>Amazon Redshift</p>
			         </li>
            <li>
				           <p>Amazon Relational Database Service</p>
			         </li>
            <li>
				           <p>Amazon ElastiCache</p>
			         </li>
            <li>
				           <p>Amazon OpenSearch Service</p>
			         </li>
         </ul>")
  @as("CostFilters")
  costFilters: option<costFilters>,
  @ocaml.doc("<p>A map containing multiple <code>BudgetLimit</code>, including current or future limits.</p>
		       <p>
            <code>PlannedBudgetLimits</code> is available for cost or usage budget and supports both
			monthly and quarterly <code>TimeUnit</code>. </p>
		       <p>For monthly budgets, provide 12 months of <code>PlannedBudgetLimits</code> values. This must start from the current month and include the next 11 months. The <code>key</code> is the start of the month, <code>UTC</code> in epoch seconds. </p>
		       <p>For quarterly budgets, provide four quarters of <code>PlannedBudgetLimits</code> value
			entries in standard calendar quarter increments. This must start from the current
			quarter and include the next three quarters. The <code>key</code> is the start of the
			quarter, <code>UTC</code> in epoch seconds. </p>
		       <p>If the planned budget expires before 12 months for monthly or four quarters for quarterly,
			provide the <code>PlannedBudgetLimits</code> values only for the remaining
			periods.</p>
		       <p>If the budget begins at a date in the future, provide <code>PlannedBudgetLimits</code> values from the start date of the budget. </p>
		       <p>After all of the <code>BudgetLimit</code> values in <code>PlannedBudgetLimits</code> are used, the budget continues to use the last limit as the <code>BudgetLimit</code>. At that point, the planned budget provides the same experience as a fixed budget. </p>
		       <p>
            <code>DescribeBudget</code> and <code>DescribeBudgets</code> response along with
				<code>PlannedBudgetLimits</code> also contain <code>BudgetLimit</code> representing
			the current month or quarter limit present in <code>PlannedBudgetLimits</code>. This
			only applies to budgets that are created with <code>PlannedBudgetLimits</code>. Budgets
			that are created without <code>PlannedBudgetLimits</code> only contain
				<code>BudgetLimit</code>. They don't contain
			<code>PlannedBudgetLimits</code>.</p>")
  @as("PlannedBudgetLimits")
  plannedBudgetLimits: option<plannedBudgetLimits>,
  @ocaml.doc("<p>The total amount of cost, usage, RI utilization, RI coverage, Savings Plans utilization, or
			Savings Plans coverage that you want to track with your budget.</p>
		       <p>
            <code>BudgetLimit</code> is required for cost or usage budgets, but optional for RI or
			Savings Plans utilization or coverage budgets. RI and Savings Plans utilization or
			coverage budgets default to <code>100</code>. This is the only valid value for RI or
			Savings Plans utilization or coverage budgets. You can't use <code>BudgetLimit</code>
			with <code>PlannedBudgetLimits</code> for <code>CreateBudget</code> and
				<code>UpdateBudget</code> actions. </p>")
  @as("BudgetLimit")
  budgetLimit: option<spend>,
  @ocaml.doc(
    "<p>The name of a budget. The name must be unique within an account. The <code>:</code> and <code>\\</code> characters aren't allowed in <code>BudgetName</code>.</p>"
  )
  @as("BudgetName")
  budgetName: budgetName,
}
@ocaml.doc("<p> A list of notifications, each with a list of subscribers.</p>")
type notificationWithSubscribersList = array<notificationWithSubscribers>
@ocaml.doc("<p> A list of budgets.</p>") type budgets = array<budget>
@ocaml.doc(
  "<p>A history of the state of a budget at the end of the budget's specified time period.</p>"
)
type budgetPerformanceHistory = {
  @ocaml.doc("<p>A list of amounts of cost or usage that you created budgets for, which are compared to your
			actual costs or usage.</p>")
  @as("BudgetedAndActualAmountsList")
  budgetedAndActualAmountsList: option<budgetedAndActualAmountsList>,
  @as("TimeUnit") timeUnit: option<timeUnit>,
  @ocaml.doc("<p>The history of the cost types for a budget during the specified time period.</p>")
  @as("CostTypes")
  costTypes: option<costTypes>,
  @ocaml.doc(
    "<p>The history of the cost filters for a budget during the specified time period.</p>"
  )
  @as("CostFilters")
  costFilters: option<costFilters>,
  @as("BudgetType") budgetType: option<budgetType>,
  @as("BudgetName") budgetName: option<budgetName>,
}
type budgetNotificationsForAccountList = array<budgetNotificationsForAccount>
@ocaml.doc("<p>A budget action resource. </p>")
type action = {
  @as("Subscribers") subscribers: subscribers,
  @ocaml.doc("<p>The status of the action. </p>") @as("Status") status: actionStatus,
  @ocaml.doc("<p>This specifies if the action needs manual or automatic approval. </p>")
  @as("ApprovalModel")
  approvalModel: approvalModel,
  @ocaml.doc("<p>The role passed for action execution and reversion. Roles and actions must be in the same
			account. </p>")
  @as("ExecutionRoleArn")
  executionRoleArn: roleArn,
  @ocaml.doc("<p>Where you specify all of the type-specific parameters. </p>") @as("Definition")
  definition: definition,
  @ocaml.doc("<p>The trigger threshold of the action. </p>") @as("ActionThreshold")
  actionThreshold: actionThreshold,
  @ocaml.doc("<p>The type of action. This defines the type of tasks that can be carried out by this action.
			This field also determines the format for definition. </p>")
  @as("ActionType")
  actionType: actionType,
  @as("NotificationType") notificationType: notificationType,
  @as("BudgetName") budgetName: budgetName,
  @ocaml.doc("<p>A system-generated universally unique identifier (UUID) for the action. </p>")
  @as("ActionId")
  actionId: actionId,
}
type actions = array<action>
@ocaml.doc("<p>The description of the details for the event. </p>")
type actionHistoryDetails = {
  @ocaml.doc("<p>The budget action resource. </p>") @as("Action") action: action,
  @as("Message") message: genericString,
}
@ocaml.doc("<p>The historical records for a budget action. </p>")
type actionHistory = {
  @ocaml.doc("<p>The description of the details for the event. </p>") @as("ActionHistoryDetails")
  actionHistoryDetails: actionHistoryDetails,
  @ocaml.doc("<p>This distinguishes between whether the events are triggered by the user or are generated by
			the system. </p>")
  @as("EventType")
  eventType: eventType,
  @ocaml.doc("<p>The status of action at the time of the event. </p>") @as("Status")
  status: actionStatus,
  @as("Timestamp") timestamp_: genericTimestamp,
}
type actionHistories = array<actionHistory>
@ocaml.doc("<p>The Amazon Web Services Budgets API enables you to use Amazon Web Services Budgets to plan your service usage, service costs, and instance reservations. The API reference provides descriptions, syntax, and usage examples for each of the actions and data types for Amazon Web Services Budgets. </p>
		       <p>Budgets provide you with a way to see the following information:</p>
		       <ul>
            <li>
				           <p>How close your plan is to your budgeted amount or to the free tier limits</p>
			         </li>
            <li>
				           <p>Your usage-to-date, including how much you've used of your Reserved Instances (RIs)</p>
			         </li>
            <li>
				           <p>Your current estimated charges from Amazon Web Services, and how much your predicted usage will accrue in charges by the end of the month</p>
			         </li>
            <li>
				           <p>How much of your budget has been used</p>
			         </li>
         </ul>
		       <p>Amazon Web Services updates your budget status several times a day. Budgets track your unblended costs, subscriptions, refunds, and RIs. You can create the following types of budgets:</p>
		       <ul>
            <li>
				           <p>
                  <b>Cost budgets</b> - Plan how much you want to spend on a service.</p>
			         </li>
            <li>
				           <p>
                  <b>Usage budgets</b> - Plan how much you want to use one or more services.</p>
			         </li>
            <li>
				           <p>
                  <b>RI utilization budgets</b> - Define a utilization threshold, and receive alerts when your RI usage falls below that threshold. This lets you see if your RIs are unused or under-utilized.</p>
			         </li>
            <li>
				           <p>
                  <b>RI coverage budgets</b> - Define a coverage threshold, and receive alerts when the number of your instance hours that are covered by RIs fall below that threshold. This lets you see how much of your instance usage is covered by a reservation.</p>
			         </li>
         </ul>
		       <p>Service Endpoint</p>
		       <p>The Amazon Web Services Budgets API provides the following endpoint:</p>
		       <ul>
            <li>
				           <p>https://budgets.amazonaws.com</p>
			         </li>
         </ul>
		       <p>For information about costs that are associated with the Amazon Web Services Budgets API, see <a href=\"https://aws.amazon.com/aws-cost-management/pricing/\">Amazon Web Services Cost Management Pricing</a>.</p>")
module ExecuteBudgetAction = {
  type t
  type request = {
    @ocaml.doc("<p>
         The type of execution.
      </p>")
    @as("ExecutionType")
    executionType: executionType,
    @ocaml.doc("<p>
         A system-generated universally unique identifier (UUID) for the action.
      </p>")
    @as("ActionId")
    actionId: actionId,
    @as("BudgetName") budgetName: budgetName,
    @as("AccountId") accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>
         The type of execution.
      </p>")
    @as("ExecutionType")
    executionType: executionType,
    @ocaml.doc("<p>
         A system-generated universally unique identifier (UUID) for the action.
      </p>")
    @as("ActionId")
    actionId: actionId,
    @as("BudgetName") budgetName: budgetName,
    @as("AccountId") accountId: accountId,
  }
  @module("@aws-sdk/client-budgets") @new external new: request => t = "ExecuteBudgetActionCommand"
  let make = (~executionType, ~actionId, ~budgetName, ~accountId, ()) =>
    new({
      executionType: executionType,
      actionId: actionId,
      budgetName: budgetName,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBudget = {
  type t
  @ocaml.doc("<p> Request of DeleteBudget </p>")
  type request = {
    @ocaml.doc("<p>The name of the budget that you want to delete.</p>") @as("BudgetName")
    budgetName: budgetName,
    @ocaml.doc(
      "<p>The <code>accountId</code> that is associated with the budget that you want to delete.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-budgets") @new external new: request => t = "DeleteBudgetCommand"
  let make = (~budgetName, ~accountId, ()) => new({budgetName: budgetName, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateSubscriber = {
  type t
  @ocaml.doc("<p> Request of UpdateSubscriber </p>")
  type request = {
    @ocaml.doc("<p>The updated subscriber that is associated with a budget notification.</p>")
    @as("NewSubscriber")
    newSubscriber: subscriber,
    @ocaml.doc("<p>The previous subscriber that is associated with a budget notification.</p>")
    @as("OldSubscriber")
    oldSubscriber: subscriber,
    @ocaml.doc("<p>The notification whose subscriber you want to update.</p>") @as("Notification")
    notification: notification,
    @ocaml.doc("<p>The name of the budget whose subscriber you want to update.</p>")
    @as("BudgetName")
    budgetName: budgetName,
    @ocaml.doc(
      "<p>The <code>accountId</code> that is associated with the budget whose subscriber you want to update.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-budgets") @new external new: request => t = "UpdateSubscriberCommand"
  let make = (~newSubscriber, ~oldSubscriber, ~notification, ~budgetName, ~accountId, ()) =>
    new({
      newSubscriber: newSubscriber,
      oldSubscriber: oldSubscriber,
      notification: notification,
      budgetName: budgetName,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateNotification = {
  type t
  @ocaml.doc("<p> Request of UpdateNotification </p>")
  type request = {
    @ocaml.doc("<p>The updated notification to be associated with a budget.</p>")
    @as("NewNotification")
    newNotification: notification,
    @ocaml.doc("<p>The previous notification that is associated with a budget.</p>")
    @as("OldNotification")
    oldNotification: notification,
    @ocaml.doc("<p>The name of the budget whose notification you want to update.</p>")
    @as("BudgetName")
    budgetName: budgetName,
    @ocaml.doc(
      "<p>The <code>accountId</code> that is associated with the budget whose notification you want to update.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-budgets") @new external new: request => t = "UpdateNotificationCommand"
  let make = (~newNotification, ~oldNotification, ~budgetName, ~accountId, ()) =>
    new({
      newNotification: newNotification,
      oldNotification: oldNotification,
      budgetName: budgetName,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSubscriber = {
  type t
  @ocaml.doc("<p> Request of DeleteSubscriber </p>")
  type request = {
    @ocaml.doc("<p>The subscriber that you want to delete.</p>") @as("Subscriber")
    subscriber: subscriber,
    @ocaml.doc("<p>The notification whose subscriber you want to delete.</p>") @as("Notification")
    notification: notification,
    @ocaml.doc("<p>The name of the budget whose subscriber you want to delete.</p>")
    @as("BudgetName")
    budgetName: budgetName,
    @ocaml.doc(
      "<p>The <code>accountId</code> that is associated with the budget whose subscriber you want to delete.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-budgets") @new external new: request => t = "DeleteSubscriberCommand"
  let make = (~subscriber, ~notification, ~budgetName, ~accountId, ()) =>
    new({
      subscriber: subscriber,
      notification: notification,
      budgetName: budgetName,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteNotification = {
  type t
  @ocaml.doc("<p> Request of DeleteNotification </p>")
  type request = {
    @ocaml.doc("<p>The notification that you want to delete.</p>") @as("Notification")
    notification: notification,
    @ocaml.doc("<p>The name of the budget whose notification you want to delete.</p>")
    @as("BudgetName")
    budgetName: budgetName,
    @ocaml.doc(
      "<p>The <code>accountId</code> that is associated with the budget whose notification you want to delete.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-budgets") @new external new: request => t = "DeleteNotificationCommand"
  let make = (~notification, ~budgetName, ~accountId, ()) =>
    new({notification: notification, budgetName: budgetName, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateSubscriber = {
  type t
  @ocaml.doc("<p> Request of CreateSubscriber </p>")
  type request = {
    @ocaml.doc("<p>The subscriber that you want to associate with a budget notification.</p>")
    @as("Subscriber")
    subscriber: subscriber,
    @ocaml.doc("<p>The notification that you want to create a subscriber for.</p>")
    @as("Notification")
    notification: notification,
    @ocaml.doc(
      "<p>The name of the budget that you want to subscribe to. Budget names must be unique within an account.</p>"
    )
    @as("BudgetName")
    budgetName: budgetName,
    @ocaml.doc(
      "<p>The <code>accountId</code> that is associated with the budget that you want to create a subscriber for.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-budgets") @new external new: request => t = "CreateSubscriberCommand"
  let make = (~subscriber, ~notification, ~budgetName, ~accountId, ()) =>
    new({
      subscriber: subscriber,
      notification: notification,
      budgetName: budgetName,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeSubscribersForNotification = {
  type t
  @ocaml.doc("<p> Request of DescribeSubscribersForNotification </p>")
  type request = {
    @ocaml.doc(
      "<p>The pagination token that you include in your request to indicate the next set of results that you want to retrieve.</p>"
    )
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc(
      "<p>An optional integer that represents how many entries a paginated response contains. The maximum is 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The notification whose subscribers you want to list.</p>") @as("Notification")
    notification: notification,
    @ocaml.doc("<p>The name of the budget whose subscribers you want descriptions of.</p>")
    @as("BudgetName")
    budgetName: budgetName,
    @ocaml.doc(
      "<p>The <code>accountId</code> that is associated with the budget whose subscribers you want descriptions of.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  @ocaml.doc("<p> Response of DescribeSubscribersForNotification </p>")
  type response = {
    @ocaml.doc(
      "<p>The pagination token in the service response that indicates the next set of results that you can retrieve.</p>"
    )
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>A list of subscribers that are associated with a notification.</p>")
    @as("Subscribers")
    subscribers: option<subscribers>,
  }
  @module("@aws-sdk/client-budgets") @new
  external new: request => t = "DescribeSubscribersForNotificationCommand"
  let make = (~notification, ~budgetName, ~accountId, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      notification: notification,
      budgetName: budgetName,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeNotificationsForBudget = {
  type t
  @ocaml.doc("<p> Request of DescribeNotificationsForBudget </p>")
  type request = {
    @ocaml.doc(
      "<p>The pagination token that you include in your request to indicate the next set of results that you want to retrieve.</p>"
    )
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc(
      "<p>An optional integer that represents how many entries a paginated response contains. The maximum is 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The name of the budget whose notifications you want descriptions of.</p>")
    @as("BudgetName")
    budgetName: budgetName,
    @ocaml.doc(
      "<p>The <code>accountId</code> that is associated with the budget whose notifications you want descriptions of.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  @ocaml.doc("<p> Response of GetNotificationsForBudget </p>")
  type response = {
    @ocaml.doc(
      "<p>The pagination token in the service response that indicates the next set of results that you can retrieve.</p>"
    )
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>A list of notifications that are associated with a budget.</p>")
    @as("Notifications")
    notifications: option<notifications>,
  }
  @module("@aws-sdk/client-budgets") @new
  external new: request => t = "DescribeNotificationsForBudgetCommand"
  let make = (~budgetName, ~accountId, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      budgetName: budgetName,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateNotification = {
  type t
  @ocaml.doc("<p> Request of CreateNotification </p>")
  type request = {
    @ocaml.doc(
      "<p>A list of subscribers that you want to associate with the notification. Each notification can have one SNS subscriber and up to 10 email subscribers.</p>"
    )
    @as("Subscribers")
    subscribers: subscribers,
    @ocaml.doc("<p>The notification that you want to create.</p>") @as("Notification")
    notification: notification,
    @ocaml.doc(
      "<p>The name of the budget that you want Amazon Web Services to notify you about. Budget names must be unique within an account.</p>"
    )
    @as("BudgetName")
    budgetName: budgetName,
    @ocaml.doc(
      "<p>The <code>accountId</code> that is associated with the budget that you want to create a notification for.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-budgets") @new external new: request => t = "CreateNotificationCommand"
  let make = (~subscribers, ~notification, ~budgetName, ~accountId, ()) =>
    new({
      subscribers: subscribers,
      notification: notification,
      budgetName: budgetName,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateBudget = {
  type t
  @ocaml.doc("<p> Request of UpdateBudget </p>")
  type request = {
    @ocaml.doc("<p>The budget that you want to update your budget to.</p>") @as("NewBudget")
    newBudget: budget,
    @ocaml.doc(
      "<p>The <code>accountId</code> that is associated with the budget that you want to update.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-budgets") @new external new: request => t = "UpdateBudgetCommand"
  let make = (~newBudget, ~accountId, ()) => new({newBudget: newBudget, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeBudget = {
  type t
  @ocaml.doc("<p> Request of DescribeBudget </p>")
  type request = {
    @ocaml.doc("<p>The name of the budget that you want a description of.</p>") @as("BudgetName")
    budgetName: budgetName,
    @ocaml.doc(
      "<p>The <code>accountId</code> that is associated with the budget that you want a description of.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  @ocaml.doc("<p> Response of DescribeBudget </p>")
  type response = {
    @ocaml.doc("<p>The description of the budget.</p>") @as("Budget") budget: option<budget>,
  }
  @module("@aws-sdk/client-budgets") @new external new: request => t = "DescribeBudgetCommand"
  let make = (~budgetName, ~accountId, ()) => new({budgetName: budgetName, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBudgetAction = {
  type t
  type request = {
    @as("Subscribers") subscribers: subscribers,
    @ocaml.doc("<p>
         This specifies if the action needs manual or automatic approval.
      </p>")
    @as("ApprovalModel")
    approvalModel: approvalModel,
    @ocaml.doc("<p>
         The role passed for action execution and reversion. Roles and actions must be in the same account.
      </p>")
    @as("ExecutionRoleArn")
    executionRoleArn: roleArn,
    @as("Definition") definition: definition,
    @as("ActionThreshold") actionThreshold: actionThreshold,
    @ocaml.doc("<p>
         The type of action. This defines the type of tasks that can be carried out by this action. This field also determines the format for definition.
      </p>")
    @as("ActionType")
    actionType: actionType,
    @as("NotificationType") notificationType: notificationType,
    @as("BudgetName") budgetName: budgetName,
    @as("AccountId") accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>
         A system-generated universally unique identifier (UUID) for the action.
      </p>")
    @as("ActionId")
    actionId: actionId,
    @as("BudgetName") budgetName: budgetName,
    @as("AccountId") accountId: accountId,
  }
  @module("@aws-sdk/client-budgets") @new external new: request => t = "CreateBudgetActionCommand"
  let make = (
    ~subscribers,
    ~approvalModel,
    ~executionRoleArn,
    ~definition,
    ~actionThreshold,
    ~actionType,
    ~notificationType,
    ~budgetName,
    ~accountId,
    (),
  ) =>
    new({
      subscribers: subscribers,
      approvalModel: approvalModel,
      executionRoleArn: executionRoleArn,
      definition: definition,
      actionThreshold: actionThreshold,
      actionType: actionType,
      notificationType: notificationType,
      budgetName: budgetName,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateBudgetAction = {
  type t
  type request = {
    @as("Subscribers") subscribers: option<subscribers>,
    @ocaml.doc("<p>
         This specifies if the action needs manual or automatic approval.
      </p>")
    @as("ApprovalModel")
    approvalModel: option<approvalModel>,
    @ocaml.doc("<p>
         The role passed for action execution and reversion. Roles and actions must be in the same account.
      </p>")
    @as("ExecutionRoleArn")
    executionRoleArn: option<roleArn>,
    @as("Definition") definition: option<definition>,
    @as("ActionThreshold") actionThreshold: option<actionThreshold>,
    @as("NotificationType") notificationType: option<notificationType>,
    @ocaml.doc("<p>
         A system-generated universally unique identifier (UUID) for the action.
      </p>")
    @as("ActionId")
    actionId: actionId,
    @as("BudgetName") budgetName: budgetName,
    @as("AccountId") accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>
         The updated action resource information.
      </p>")
    @as("NewAction")
    newAction: action,
    @ocaml.doc("<p>
         The previous action resource information.
      </p>")
    @as("OldAction")
    oldAction: action,
    @as("BudgetName") budgetName: budgetName,
    @as("AccountId") accountId: accountId,
  }
  @module("@aws-sdk/client-budgets") @new external new: request => t = "UpdateBudgetActionCommand"
  let make = (
    ~actionId,
    ~budgetName,
    ~accountId,
    ~subscribers=?,
    ~approvalModel=?,
    ~executionRoleArn=?,
    ~definition=?,
    ~actionThreshold=?,
    ~notificationType=?,
    (),
  ) =>
    new({
      subscribers: subscribers,
      approvalModel: approvalModel,
      executionRoleArn: executionRoleArn,
      definition: definition,
      actionThreshold: actionThreshold,
      notificationType: notificationType,
      actionId: actionId,
      budgetName: budgetName,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBudgets = {
  type t
  @ocaml.doc("<p> Request of DescribeBudgets </p>")
  type request = {
    @ocaml.doc(
      "<p>The pagination token that you include in your request to indicate the next set of results that you want to retrieve.</p>"
    )
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc(
      "<p>An optional integer that represents how many entries a paginated response contains. The maximum is 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The <code>accountId</code> that is associated with the budgets that you want descriptions of.</p>"
    )
    @as("AccountId")
    accountId: accountId,
  }
  @ocaml.doc("<p> Response of DescribeBudgets </p>")
  type response = {
    @ocaml.doc(
      "<p>The pagination token in the service response that indicates the next set of results that you can retrieve.</p>"
    )
    @as("NextToken")
    nextToken: option<genericString>,
    @ocaml.doc("<p>A list of budgets.</p>") @as("Budgets") budgets: option<budgets>,
  }
  @module("@aws-sdk/client-budgets") @new external new: request => t = "DescribeBudgetsCommand"
  let make = (~accountId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBudgetPerformanceHistory = {
  type t
  type request = {
    @as("NextToken") nextToken: option<genericString>,
    @as("MaxResults") maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>Retrieves how often the budget went into an <code>ALARM</code> state for the specified time period.</p>"
    )
    @as("TimePeriod")
    timePeriod: option<timePeriod>,
    @as("BudgetName") budgetName: budgetName,
    @as("AccountId") accountId: accountId,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @ocaml.doc("<p>The history of how often the budget has gone into an <code>ALARM</code> state.</p>
         <p>For <code>DAILY</code> budgets, the history saves the state of the budget for the last 60 days. For <code>MONTHLY</code> budgets, the history saves the state of the budget for the current month plus the last 12 months. For <code>QUARTERLY</code> budgets, the history saves the state of the budget for the last four quarters.</p>")
    @as("BudgetPerformanceHistory")
    budgetPerformanceHistory: option<budgetPerformanceHistory>,
  }
  @module("@aws-sdk/client-budgets") @new
  external new: request => t = "DescribeBudgetPerformanceHistoryCommand"
  let make = (~budgetName, ~accountId, ~nextToken=?, ~maxResults=?, ~timePeriod=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      timePeriod: timePeriod,
      budgetName: budgetName,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBudgetNotificationsForAccount = {
  type t
  type request = {
    @as("NextToken") nextToken: option<genericString>,
    @ocaml.doc("<p>
			An integer that shows how many budget name entries a paginated response contains.
		</p>")
    @as("MaxResults")
    maxResults: option<maxResultsBudgetNotifications>,
    @as("AccountId") accountId: accountId,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @ocaml.doc("<p>
			A list of budget names and associated notifications for an account.
		</p>")
    @as("BudgetNotificationsForAccount")
    budgetNotificationsForAccount: option<budgetNotificationsForAccountList>,
  }
  @module("@aws-sdk/client-budgets") @new
  external new: request => t = "DescribeBudgetNotificationsForAccountCommand"
  let make = (~accountId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBudgetAction = {
  type t
  type request = {
    @ocaml.doc("<p>
         A system-generated universally unique identifier (UUID) for the action.
      </p>")
    @as("ActionId")
    actionId: actionId,
    @as("BudgetName") budgetName: budgetName,
    @as("AccountId") accountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>
         A budget action resource.
      </p>")
    @as("Action")
    action: action,
    @as("BudgetName") budgetName: budgetName,
    @as("AccountId") accountId: accountId,
  }
  @module("@aws-sdk/client-budgets") @new external new: request => t = "DescribeBudgetActionCommand"
  let make = (~actionId, ~budgetName, ~accountId, ()) =>
    new({actionId: actionId, budgetName: budgetName, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBudgetAction = {
  type t
  type request = {
    @ocaml.doc("<p>
         A system-generated universally unique identifier (UUID) for the action.
      </p>")
    @as("ActionId")
    actionId: actionId,
    @as("BudgetName") budgetName: budgetName,
    @as("AccountId") accountId: accountId,
  }
  type response = {
    @as("Action") action: action,
    @as("BudgetName") budgetName: budgetName,
    @as("AccountId") accountId: accountId,
  }
  @module("@aws-sdk/client-budgets") @new external new: request => t = "DeleteBudgetActionCommand"
  let make = (~actionId, ~budgetName, ~accountId, ()) =>
    new({actionId: actionId, budgetName: budgetName, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBudget = {
  type t
  @ocaml.doc("<p> Request of CreateBudget </p>")
  type request = {
    @ocaml.doc(
      "<p>A notification that you want to associate with a budget. A budget can have up to five notifications, and each notification can have one SNS subscriber and up to 10 email subscribers. If you include notifications and subscribers in your <code>CreateBudget</code> call, Amazon Web Services creates the notifications and subscribers for you.</p>"
    )
    @as("NotificationsWithSubscribers")
    notificationsWithSubscribers: option<notificationWithSubscribersList>,
    @ocaml.doc("<p>The budget object that you want to create.</p>") @as("Budget") budget: budget,
    @ocaml.doc("<p>The <code>accountId</code> that is associated with the budget.</p>")
    @as("AccountId")
    accountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-budgets") @new external new: request => t = "CreateBudgetCommand"
  let make = (~budget, ~accountId, ~notificationsWithSubscribers=?, ()) =>
    new({
      notificationsWithSubscribers: notificationsWithSubscribers,
      budget: budget,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeBudgetActionsForBudget = {
  type t
  type request = {
    @as("NextToken") nextToken: option<genericString>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("BudgetName") budgetName: budgetName,
    @as("AccountId") accountId: accountId,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @ocaml.doc("<p>
         A list of the budget action resources information.
      </p>")
    @as("Actions")
    actions: actions,
  }
  @module("@aws-sdk/client-budgets") @new
  external new: request => t = "DescribeBudgetActionsForBudgetCommand"
  let make = (~budgetName, ~accountId, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      budgetName: budgetName,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBudgetActionsForAccount = {
  type t
  type request = {
    @as("NextToken") nextToken: option<genericString>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("AccountId") accountId: accountId,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @ocaml.doc("<p>
         A list of the budget action resources information.
      </p>")
    @as("Actions")
    actions: actions,
  }
  @module("@aws-sdk/client-budgets") @new
  external new: request => t = "DescribeBudgetActionsForAccountCommand"
  let make = (~accountId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, accountId: accountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBudgetActionHistories = {
  type t
  type request = {
    @as("NextToken") nextToken: option<genericString>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("TimePeriod") timePeriod: option<timePeriod>,
    @ocaml.doc("<p>
         A system-generated universally unique identifier (UUID) for the action.
      </p>")
    @as("ActionId")
    actionId: actionId,
    @as("BudgetName") budgetName: budgetName,
    @as("AccountId") accountId: accountId,
  }
  type response = {
    @as("NextToken") nextToken: option<genericString>,
    @ocaml.doc("<p>
         The historical record of the budget action resource.
      </p>")
    @as("ActionHistories")
    actionHistories: actionHistories,
  }
  @module("@aws-sdk/client-budgets") @new
  external new: request => t = "DescribeBudgetActionHistoriesCommand"
  let make = (~actionId, ~budgetName, ~accountId, ~nextToken=?, ~maxResults=?, ~timePeriod=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      timePeriod: timePeriod,
      actionId: actionId,
      budgetName: budgetName,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
