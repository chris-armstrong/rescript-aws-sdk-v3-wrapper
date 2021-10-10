type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-personalize") @new
external createClient: unit => awsServiceClient = "PersonalizeClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type tunable = bool
type transactionsPerSecond = int
type trainingMode = [@as("UPDATE") #UPDATE | @as("FULL") #FULL]
type trainingInputMode = string
type trainingHours = float
type trackingId = string
type status = string
type s3Location = string
type roleArn = string
type recipeType = string
type recipeProvider = [@as("SERVICE") #SERVICE]
type performHPO = bool
type performAutoML = bool
type parameterValue = string
type parameterName = string
type objectiveSensitivity = [
  | @as("OFF") #OFF
  | @as("HIGH") #HIGH
  | @as("MEDIUM") #MEDIUM
  | @as("LOW") #LOW
]
type numBatchResults = int
type nextToken = string
type name = string
type metricValue = float
type metricRegex = string
type metricName = string
type maxResults = int
type kmsKeyArn = string
type itemAttribute = string
type integerMinValue = int
type integerMaxValue = int
type ingestionMode = [@as("ALL") #ALL | @as("PUT") #PUT | @as("BULK") #BULK]
type hporesource = string
type hpoobjectiveType = string
type filterExpression = string
type failureReason = string
type eventValueThreshold = string
type eventType = string
type errorMessage = string
type dockerURI = string
type description = string
type date = Js.Date.t
type datasetType = string
type continuousMinValue = float
type continuousMaxValue = float
type categoricalValue = string
type boolean_ = bool
type avroSchema = string
type arn = string
type accountId = string
@ocaml.doc("<p>Provides a summary of the properties of a solution version. For a complete listing, call the
      <a>DescribeSolutionVersion</a> API.</p>")
type solutionVersionSummary = {
  @ocaml.doc("<p>If a solution version fails, the reason behind the failure.</p>")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>The date and time (in Unix time) that the solution version was last updated.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The date and time (in Unix time) that this version of a solution was created.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The status of the solution version.</p>
         <p>A solution version can be in one of the following states:</p>
         <ul>
            <li>
               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
            </li>
         </ul>")
  status: option<status>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the solution version.</p>")
  solutionVersionArn: option<arn>,
}
@ocaml.doc("<p>Provides a summary of the properties of a solution. For a complete listing, call the
      <a>DescribeSolution</a> API.</p>")
type solutionSummary = {
  @ocaml.doc("<p>The date and time (in Unix time) that the solution was last updated.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The date and time (in Unix time) that the solution was created.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The status of the solution.</p>
         <p>A solution can be in one of the following states:</p>
         <ul>
            <li>
               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
            </li>
            <li>
               <p>DELETE PENDING > DELETE IN_PROGRESS</p>
            </li>
         </ul>")
  status: option<status>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the solution.</p>") solutionArn: option<arn>,
  @ocaml.doc("<p>The name of the solution.</p>") name: option<name>,
}
@ocaml.doc("<p>The configuration details of an Amazon S3 input or output bucket.</p>")
type s3DataConfig = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Key Management Service (KMS) key that Amazon Personalize uses to
      encrypt or decrypt the input and output files of a batch inference job.</p>")
  kmsKeyArn: option<kmsKeyArn>,
  @ocaml.doc("<p>The file path of the Amazon S3 bucket.</p>") path: s3Location,
}
type resourceConfig = Js.Dict.t<parameterValue>
@ocaml.doc("<p>Provides a summary of the properties of a recipe. For a complete listing, call the
      <a>DescribeRecipe</a> API.</p>")
type recipeSummary = {
  @ocaml.doc("<p>The date and time (in Unix time) that the recipe was last updated.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The date and time (in Unix time) that the recipe was created.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The status of the recipe.</p>") status: option<status>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the recipe.</p>") recipeArn: option<arn>,
  @ocaml.doc("<p>The name of the recipe.</p>") name: option<name>,
}
@ocaml.doc("<p>Provides information about a recipe. Each recipe provides an algorithm
      that Amazon Personalize uses in model training when you use the <a>CreateSolution</a>
      operation. </p>")
type recipe = {
  @ocaml.doc("<p>The date and time (in Unix format) that the recipe was last updated.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>One of the following values:</p>
         <ul>
            <li>
               <p>PERSONALIZED_RANKING</p>
            </li>
            <li>
               <p>RELATED_ITEMS</p>
            </li>
            <li>
               <p>USER_PERSONALIZATION</p>
            </li>
         </ul>")
  recipeType: option<recipeType>,
  @ocaml.doc("<p>The date and time (in Unix format) that the recipe was created.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The description of the recipe.</p>") description: option<description>,
  @ocaml.doc("<p>The status of the recipe.</p>") status: option<status>,
  @ocaml.doc("<p>The ARN of the FeatureTransformation object.</p>")
  featureTransformationArn: option<arn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the algorithm that Amazon Personalize uses to train
      the model.</p>")
  algorithmArn: option<arn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the recipe.</p>") recipeArn: option<arn>,
  @ocaml.doc("<p>The name of the recipe.</p>") name: option<name>,
}
@ocaml.doc("<p>Describes the additional objective for the solution, such as maximizing streaming 
      minutes or increasing revenue. For more information see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/optimizing-solution-for-objective.html\">Optimizing a solution</a>.</p>")
type optimizationObjective = {
  @ocaml.doc(
    "<p>Specifies how Amazon Personalize balances the importance of your optimization objective versus relevance.</p>"
  )
  objectiveSensitivity: option<objectiveSensitivity>,
  @ocaml.doc(
    "<p>The numerical metadata column in an Items dataset related to the optimization objective. For example, VIDEO_LENGTH (to maximize streaming minutes), or PRICE (to maximize revenue).</p>"
  )
  itemAttribute: option<itemAttribute>,
}
type metrics = Js.Dict.t<metricValue>
@ocaml.doc("<p>Provides the name and range of an integer-valued hyperparameter.</p>")
type integerHyperParameterRange = {
  @ocaml.doc("<p>The maximum allowable value for the hyperparameter.</p>")
  maxValue: option<integerMaxValue>,
  @ocaml.doc("<p>The minimum allowable value for the hyperparameter.</p>")
  minValue: option<integerMinValue>,
  @ocaml.doc("<p>The name of the hyperparameter.</p>") name: option<parameterName>,
}
type hyperParameters = Js.Dict.t<parameterValue>
@ocaml.doc("<p>Describes the resource configuration for hyperparameter optimization (HPO).</p>")
type hporesourceConfig = {
  @ocaml.doc("<p>The maximum number of parallel training
      jobs when you create a
      solution
      version.
      The maximum value for <code>maxParallelTrainingJobs</code> is
      <code>10</code>.</p>")
  maxParallelTrainingJobs: option<hporesource>,
  @ocaml.doc("<p>The maximum number of training
      jobs when you create a
      solution
      version.
      The maximum value for <code>maxNumberOfTrainingJobs</code> is
      <code>40</code>.</p>")
  maxNumberOfTrainingJobs: option<hporesource>,
}
@ocaml.doc("<p>The metric to optimize during hyperparameter optimization (HPO).</p>
         <note>
            <p>Amazon Personalize doesn't support configuring the <code>hpoObjective</code> 
        at this time.</p>
         </note>")
type hpoobjective = {
  @ocaml.doc("<p>A regular expression for finding the metric in the training job logs.</p>")
  metricRegex: option<metricRegex>,
  @ocaml.doc("<p>The name of the metric.</p>") metricName: option<metricName>,
  @ocaml.doc(
    "<p>The type of the metric. Valid values are <code>Maximize</code> and <code>Minimize</code>.</p>"
  )
  @as("type")
  type_: option<hpoobjectiveType>,
}
@ocaml.doc("<p>A short summary of a filter's attributes.</p>")
type filterSummary = {
  @ocaml.doc("<p>The status of the filter.</p>") status: option<status>,
  @ocaml.doc("<p>If the filter failed, the reason for the failure.</p>")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>The ARN of the dataset group to which the filter belongs.</p>")
  datasetGroupArn: option<arn>,
  @ocaml.doc("<p>The time at which the filter was last updated.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The time at which the filter was created.</p>") creationDateTime: option<date>,
  @ocaml.doc("<p>The ARN of the filter.</p>") filterArn: option<arn>,
  @ocaml.doc("<p>The name of the filter.</p>") name: option<name>,
}
@ocaml.doc("<p>Contains information on a recommendation filter, including its ARN, status, and filter
            expression.</p>")
type filter = {
  @ocaml.doc("<p>The status of the filter.</p>") status: option<status>,
  @ocaml.doc("<p>Specifies the type of item interactions to filter out of recommendation results. The
            filter expression must follow specific format rules. For information about filter expression structure and syntax, see
            <a>filter-expressions</a>.</p>")
  filterExpression: option<filterExpression>,
  @ocaml.doc("<p>If the filter failed, the reason for its failure.</p>")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>The ARN of the dataset group to which the filter belongs.</p>")
  datasetGroupArn: option<arn>,
  @ocaml.doc("<p>The time at which the filter was last updated.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The time at which the filter was created.</p>") creationDateTime: option<date>,
  @ocaml.doc("<p>The ARN of the filter.</p>") filterArn: option<arn>,
  @ocaml.doc("<p>The name of the filter.</p>") name: option<name>,
}
type featurizationParameters = Js.Dict.t<parameterValue>
type featureTransformationParameters = Js.Dict.t<parameterValue>
@ocaml.doc("<p>Provides a summary of the properties of an event tracker. For a complete listing, call the
      <a>DescribeEventTracker</a> API.</p>")
type eventTrackerSummary = {
  @ocaml.doc("<p>The date and time (in Unix time) that the event tracker was last updated.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The date and time (in Unix time) that the event tracker was created.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The status of the event tracker.</p>
         <p>An event tracker can be in one of the following states:</p>
         <ul>
            <li>
               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
            </li>
            <li>
               <p>DELETE PENDING > DELETE IN_PROGRESS</p>
            </li>
         </ul>")
  status: option<status>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the event tracker.</p>")
  eventTrackerArn: option<arn>,
  @ocaml.doc("<p>The name of the event tracker.</p>") name: option<name>,
}
@ocaml.doc("<p>Provides information about an event tracker.</p>")
type eventTracker = {
  @ocaml.doc("<p>The date and time (in Unix time) that the event tracker was last updated.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The date and time (in Unix format) that the event tracker was created.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The status of the event tracker.</p>
         <p>An event tracker can be in one of the following states:</p>
         <ul>
            <li>
               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
            </li>
            <li>
               <p>DELETE PENDING > DELETE IN_PROGRESS</p>
            </li>
         </ul>")
  status: option<status>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the dataset group that receives the event data.</p>"
  )
  datasetGroupArn: option<arn>,
  @ocaml.doc("<p>The ID of the event tracker. Include this ID in requests to the
    <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html\">PutEvents</a> API.</p>")
  trackingId: option<trackingId>,
  @ocaml.doc("<p>The Amazon AWS account that owns the event tracker.</p>")
  accountId: option<accountId>,
  @ocaml.doc("<p>The ARN of the event tracker.</p>") eventTrackerArn: option<arn>,
  @ocaml.doc("<p>The name of the event tracker.</p>") name: option<name>,
}
@ocaml.doc("<p>Provides the name and default range of a integer-valued hyperparameter
      and whether the hyperparameter is tunable. A tunable hyperparameter can
      have its value determined during hyperparameter optimization (HPO).</p>")
type defaultIntegerHyperParameterRange = {
  @ocaml.doc("<p>Indicates whether the hyperparameter is tunable.</p>") isTunable: option<tunable>,
  @ocaml.doc("<p>The maximum allowable value for the hyperparameter.</p>")
  maxValue: option<integerMaxValue>,
  @ocaml.doc("<p>The minimum allowable value for the hyperparameter.</p>")
  minValue: option<integerMinValue>,
  @ocaml.doc("<p>The name of the hyperparameter.</p>") name: option<parameterName>,
}
@ocaml.doc("<p>Provides the name and default range of a continuous hyperparameter
      and whether the hyperparameter is tunable. A tunable hyperparameter can
      have its value determined during hyperparameter optimization (HPO).</p>")
type defaultContinuousHyperParameterRange = {
  @ocaml.doc("<p>Whether the hyperparameter is tunable.</p>") isTunable: option<tunable>,
  @ocaml.doc("<p>The maximum allowable value for the hyperparameter.</p>")
  maxValue: option<continuousMaxValue>,
  @ocaml.doc("<p>The minimum allowable value for the hyperparameter.</p>")
  minValue: option<continuousMinValue>,
  @ocaml.doc("<p>The name of the hyperparameter.</p>") name: option<parameterName>,
}
@ocaml.doc("<p>Provides a summary of the properties of a dataset. For a complete listing, call the
      <a>DescribeDataset</a> API.</p>")
type datasetSummary = {
  @ocaml.doc("<p>The date and time (in Unix time) that the dataset was last updated.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The date and time (in Unix time) that the dataset was created.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The status of the dataset.</p>
         <p>A dataset can be in one of the following states:</p>
         <ul>
            <li>
               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
            </li>
            <li>
               <p>DELETE PENDING > DELETE IN_PROGRESS</p>
            </li>
         </ul>")
  status: option<status>,
  @ocaml.doc("<p>The dataset type. One of the following values:</p>
         <ul>
            <li>
               <p>Interactions</p>
            </li>
            <li>
               <p>Items</p>
            </li>
            <li>
               <p>Users</p>
            </li>
            <li>
               <p>Event-Interactions</p>
            </li>
         </ul>")
  datasetType: option<datasetType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset.</p>") datasetArn: option<arn>,
  @ocaml.doc("<p>The name of the dataset.</p>") name: option<name>,
}
@ocaml.doc("<p>Provides a summary of the properties of a dataset schema. For a complete listing, call the
      <a>DescribeSchema</a> API.</p>")
type datasetSchemaSummary = {
  @ocaml.doc("<p>The date and time (in Unix time) that the schema was last updated.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The date and time (in Unix time) that the schema was created.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the schema.</p>") schemaArn: option<arn>,
  @ocaml.doc("<p>The name of the schema.</p>") name: option<name>,
}
@ocaml.doc("<p>Describes the schema for a dataset. For more information on schemas, see
      <a>CreateSchema</a>.</p>")
type datasetSchema = {
  @ocaml.doc("<p>The date and time (in Unix time) that the schema was last updated.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The date and time (in Unix time) that the schema was created.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The schema.</p>") schema: option<avroSchema>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the schema.</p>") schemaArn: option<arn>,
  @ocaml.doc("<p>The name of the schema.</p>") name: option<name>,
}
@ocaml.doc("<p>Provides a summary of the properties of a dataset import job. For a complete listing, call the
      <a>DescribeDatasetImportJob</a> API.</p>")
type datasetImportJobSummary = {
  @ocaml.doc("<p>If a dataset import job fails, the reason behind the failure.</p>")
  failureReason: option<failureReason>,
  @ocaml.doc(
    "<p>The date and time (in Unix time) that the dataset import job status was last updated.</p>"
  )
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The date and time (in Unix time) that the dataset import job was created.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The status of the dataset import job.</p>
         <p>A dataset import job can be in one of the following states:</p>
         <ul>
            <li>
               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
            </li>
         </ul>")
  status: option<status>,
  @ocaml.doc("<p>The name of the dataset import job.</p>") jobName: option<name>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset import job.</p>")
  datasetImportJobArn: option<arn>,
}
@ocaml.doc("<p>Provides a summary of the properties of a dataset group. For a complete listing, call the
      <a>DescribeDatasetGroup</a> API.</p>")
type datasetGroupSummary = {
  @ocaml.doc("<p>If creating a dataset group fails, the reason behind the failure.</p>")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>The date and time (in Unix time) that the dataset group was last updated.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The date and time (in Unix time) that the dataset group was created.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The status of the dataset group.</p>
         <p>A dataset group can be in one of the following states:</p>
         <ul>
            <li>
               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
            </li>
            <li>
               <p>DELETE PENDING</p>
            </li>
         </ul>")
  status: option<status>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset group.</p>")
  datasetGroupArn: option<arn>,
  @ocaml.doc("<p>The name of the dataset group.</p>") name: option<name>,
}
@ocaml.doc("<p>A dataset group is a collection of related datasets (Interactions, User, and Item). You
      create a dataset group by calling <a>CreateDatasetGroup</a>. You then create a
      dataset and add it to a dataset group by calling <a>CreateDataset</a>. The dataset
      group is used to create and train a solution by calling <a>CreateSolution</a>. A
      dataset group can contain only one of each type of dataset.</p>
         <p>You can specify an AWS Key Management Service (KMS) key to encrypt the datasets in the group.</p>")
type datasetGroup = {
  @ocaml.doc("<p>If creating a dataset group fails, provides the reason why.</p>")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>The last update date and time (in Unix time) of the dataset group.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The creation date and time (in Unix time) of the dataset group.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the datasets.</p>")
  kmsKeyArn: option<kmsKeyArn>,
  @ocaml.doc("<p>The ARN of the IAM role that has permissions to create the dataset group.</p>")
  roleArn: option<roleArn>,
  @ocaml.doc("<p>The current status of the dataset group.</p>
         <p>A dataset group can be in one of the following states:</p>
         <ul>
            <li>
               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
            </li>
            <li>
               <p>DELETE PENDING</p>
            </li>
         </ul>")
  status: option<status>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset group.</p>")
  datasetGroupArn: option<arn>,
  @ocaml.doc("<p>The name of the dataset group.</p>") name: option<name>,
}
@ocaml.doc("<p>Provides a summary of the properties of a dataset export job. For a complete listing, call the
      <a>DescribeDatasetExportJob</a> API.</p>")
type datasetExportJobSummary = {
  @ocaml.doc("<p>If a dataset export job fails, the reason behind the failure.</p>")
  failureReason: option<failureReason>,
  @ocaml.doc(
    "<p>The date and time (in Unix time) that the dataset export job status was last updated.</p>"
  )
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The date and time (in Unix time) that the dataset export job was created.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The status of the dataset export job.</p>
         <p>A dataset export job can be in one of the following states:</p>
         <ul>
            <li>
               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
            </li>
         </ul>")
  status: option<status>,
  @ocaml.doc("<p>The name of the dataset export job.</p>") jobName: option<name>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset export job.</p>")
  datasetExportJobArn: option<arn>,
}
@ocaml.doc("<p>Provides metadata for a dataset.</p>")
type dataset = {
  @ocaml.doc("<p>A time stamp that shows when the dataset was updated.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The creation date and time (in Unix time) of the dataset.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The status of the dataset.</p>
         <p>A dataset can be in one of the following states:</p>
         <ul>
            <li>
               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
            </li>
            <li>
               <p>DELETE PENDING > DELETE IN_PROGRESS</p>
            </li>
         </ul>")
  status: option<status>,
  @ocaml.doc("<p>The ARN of the associated schema.</p>") schemaArn: option<arn>,
  @ocaml.doc("<p>One of the following values:</p>
         <ul>
            <li>
               <p>Interactions</p>
            </li>
            <li>
               <p>Items</p>
            </li>
            <li>
               <p>Users</p>
            </li>
         </ul>")
  datasetType: option<datasetType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset group.</p>")
  datasetGroupArn: option<arn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset that you want metadata for.</p>")
  datasetArn: option<arn>,
  @ocaml.doc("<p>The name of the dataset.</p>") name: option<name>,
}
@ocaml.doc("<p>Describes the data source that contains the data to upload to a dataset.</p>")
type dataSource = {
  @ocaml.doc("<p>The path to the Amazon S3 bucket where the data that you want to upload to your dataset is
      stored. For example: </p>
         <p>
            <code>s3://bucket-name/folder-name/</code>
         </p>")
  dataLocation: option<s3Location>,
}
@ocaml.doc("<p>Provides the name and range of a continuous hyperparameter.</p>")
type continuousHyperParameterRange = {
  @ocaml.doc("<p>The maximum allowable value for the hyperparameter.</p>")
  maxValue: option<continuousMaxValue>,
  @ocaml.doc("<p>The minimum allowable value for the hyperparameter.</p>")
  minValue: option<continuousMinValue>,
  @ocaml.doc("<p>The name of the hyperparameter.</p>") name: option<parameterName>,
}
type categoricalValues = array<categoricalValue>
@ocaml.doc("<p>Provides a summary of the properties of a campaign. For a complete listing, call the
      <a>DescribeCampaign</a> API.</p>")
type campaignSummary = {
  @ocaml.doc("<p>If a campaign fails, the reason behind the failure.</p>")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>The date and time (in Unix time) that the campaign was last updated.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The date and time (in Unix time) that the campaign was created.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The status of the campaign.</p>
         <p>A campaign can be in one of the following states:</p>
         <ul>
            <li>
               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
            </li>
            <li>
               <p>DELETE PENDING > DELETE IN_PROGRESS</p>
            </li>
         </ul>")
  status: option<status>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the campaign.</p>") campaignArn: option<arn>,
  @ocaml.doc("<p>The name of the campaign.</p>") name: option<name>,
}
@ocaml.doc("<p>A truncated version of the <a>BatchInferenceJob</a> datatype. The <a>ListBatchInferenceJobs</a> operation returns a list of batch inference job
      summaries.</p>")
type batchInferenceJobSummary = {
  @ocaml.doc("<p>The ARN of the solution version used by the batch inference job.</p>")
  solutionVersionArn: option<arn>,
  @ocaml.doc("<p>If the batch inference job failed, the reason for the failure.</p>")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>The time at which the batch inference job was last updated.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The time at which the batch inference job was created.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The status of the batch inference job. The status is one of the following values:</p>
         <ul>
            <li>
               <p>PENDING</p>
            </li>
            <li>
               <p>IN PROGRESS</p>
            </li>
            <li>
               <p>ACTIVE</p>
            </li>
            <li>
               <p>CREATE FAILED</p>
            </li>
         </ul>")
  status: option<status>,
  @ocaml.doc("<p>The name of the batch inference job.</p>") jobName: option<name>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the batch inference job.</p>")
  batchInferenceJobArn: option<arn>,
}
@ocaml.doc("<p>When the solution performs AutoML (<code>performAutoML</code> is true in
      <a>CreateSolution</a>), specifies the recipe that best optimized the
      specified metric.</p>")
type autoMLResult = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the best recipe.</p>")
  bestRecipeArn: option<arn>,
}
type arnList = array<arn>
@ocaml.doc("<p>Describes an algorithm image.</p>")
type algorithmImage = {
  @ocaml.doc("<p>The URI of the Docker container for the algorithm image.</p>")
  dockerURI: dockerURI,
  @ocaml.doc("<p>The name of the algorithm image.</p>") name: option<name>,
}
@ocaml.doc("<p>If hyperparameter optimization (HPO) was performed, contains the hyperparameter values of
      the best performing model.</p>")
type tunedHPOParams = {
  @ocaml.doc("<p>A list of the hyperparameter values of the best performing model.</p>")
  algorithmHyperParameters: option<hyperParameters>,
}
type solutions = array<solutionSummary>
type solutionVersions = array<solutionVersionSummary>
type schemas = array<datasetSchemaSummary>
type recipes = array<recipeSummary>
type integerHyperParameterRanges = array<integerHyperParameterRange>
type filters = array<filterSummary>
@ocaml.doc("<p>Provides feature transformation information. Feature transformation is the process
      of modifying raw input data into a form more suitable for model training.</p>")
type featureTransformation = {
  @ocaml.doc("<p>The status of the feature transformation.</p>
         <p>A feature transformation can be in one of the following states:</p>
         <ul>
            <li>
               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
            </li>
         </ul>")
  status: option<status>,
  @ocaml.doc("<p>The last update date and time (in Unix time) of the feature transformation.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The creation date and time (in Unix time) of the feature transformation.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>Provides the default parameters for feature transformation.</p>")
  defaultParameters: option<featurizationParameters>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the FeatureTransformation object.</p>")
  featureTransformationArn: option<arn>,
  @ocaml.doc("<p>The name of the feature transformation.</p>") name: option<name>,
}
type eventTrackers = array<eventTrackerSummary>
type defaultIntegerHyperParameterRanges = array<defaultIntegerHyperParameterRange>
type defaultContinuousHyperParameterRanges = array<defaultContinuousHyperParameterRange>
@ocaml.doc("<p>Provides the name and default range of a categorical hyperparameter
      and whether the hyperparameter is tunable. A tunable hyperparameter can
      have its value determined during hyperparameter optimization (HPO).</p>")
type defaultCategoricalHyperParameterRange = {
  @ocaml.doc("<p>Whether the hyperparameter is tunable.</p>") isTunable: option<tunable>,
  @ocaml.doc("<p>A list of the categories for the hyperparameter.</p>")
  values: option<categoricalValues>,
  @ocaml.doc("<p>The name of the hyperparameter.</p>") name: option<parameterName>,
}
type datasets = array<datasetSummary>
type datasetImportJobs = array<datasetImportJobSummary>
@ocaml.doc("<p>Describes a job that imports training data from a data source (Amazon S3 bucket) to an
      Amazon Personalize dataset. For more information, see <a>CreateDatasetImportJob</a>.</p>
         <p>A dataset import job can be in one of the following states:</p>
         <ul>
            <li>
               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
            </li>
         </ul>")
type datasetImportJob = {
  @ocaml.doc("<p>If a dataset import job fails, provides the reason why.</p>")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>The date and time (in Unix time) the dataset was last updated.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The creation date and time (in Unix time) of the dataset import job.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The status of the dataset import job.</p>
         <p>A dataset import job can be in one of the following states:</p>
         <ul>
            <li>
               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
            </li>
         </ul>")
  status: option<status>,
  @ocaml.doc("<p>The ARN of the AWS Identity and Access Management (IAM) role that has permissions to read from the Amazon S3 data
      source.</p>")
  roleArn: option<arn>,
  @ocaml.doc("<p>The Amazon S3 bucket that contains the training data to import.</p>")
  dataSource: option<dataSource>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the dataset that receives the imported data.</p>"
  )
  datasetArn: option<arn>,
  @ocaml.doc("<p>The ARN of the dataset import job.</p>") datasetImportJobArn: option<arn>,
  @ocaml.doc("<p>The name of the import job.</p>") jobName: option<name>,
}
type datasetGroups = array<datasetGroupSummary>
type datasetExportJobs = array<datasetExportJobSummary>
@ocaml.doc("<p>The output configuration parameters of a dataset export job.</p>")
type datasetExportJobOutput = {s3DataDestination: s3DataConfig}
type continuousHyperParameterRanges = array<continuousHyperParameterRange>
@ocaml.doc("<p>Provides the name and range of a categorical hyperparameter.</p>")
type categoricalHyperParameterRange = {
  @ocaml.doc("<p>A list of the categories for the hyperparameter.</p>")
  values: option<categoricalValues>,
  @ocaml.doc("<p>The name of the hyperparameter.</p>") name: option<parameterName>,
}
type campaigns = array<campaignSummary>
@ocaml.doc("<p>The configuration details of a campaign.</p>")
type campaignConfig = {
  @ocaml.doc("<p>A string to string map specifying the exploration configuration hyperparameters, including <code>explorationWeight</code> and 
      <code>explorationItemAgeCutOff</code>, you want to use to configure the amount of item exploration Amazon Personalize uses when
      recommending items. Provide <code>itemExplorationConfig</code> data only if your solution uses the
      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html\">User-Personalization</a> recipe.</p>")
  itemExplorationConfig: option<hyperParameters>,
}
type batchInferenceJobs = array<batchInferenceJobSummary>
@ocaml.doc("<p>The output configuration parameters of a batch inference job.</p>")
type batchInferenceJobOutput = {
  @ocaml.doc(
    "<p>Information on the Amazon S3 bucket in which the batch inference job's output is stored.</p>"
  )
  s3DataDestination: s3DataConfig,
}
@ocaml.doc("<p>The input configuration of a batch inference job.</p>")
type batchInferenceJobInput = {
  @ocaml.doc("<p>The URI of the Amazon S3 location that contains your input data. The Amazon S3 bucket must be in the
      same region as the API endpoint you are calling.</p>")
  s3DataSource: s3DataConfig,
}
@ocaml.doc("<p>The configuration details of a batch inference job.</p>")
type batchInferenceJobConfig = {
  @ocaml.doc("<p>A string to string map specifying the exploration configuration hyperparameters, including <code>explorationWeight</code> and 
      <code>explorationItemAgeCutOff</code>, you want to use to configure the amount of item exploration Amazon Personalize uses when
      recommending items. 
      See <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html\">User-Personalization</a>.</p>")
  itemExplorationConfig: option<hyperParameters>,
}
@ocaml.doc("<p>When the solution performs AutoML (<code>performAutoML</code> is true in
      <a>CreateSolution</a>), Amazon Personalize
      determines which recipe, from the specified list, optimizes the given metric.
      Amazon Personalize then uses that recipe for the solution.</p>")
type autoMLConfig = {
  @ocaml.doc("<p>The list of candidate recipes.</p>") recipeList: option<arnList>,
  @ocaml.doc("<p>The metric to optimize.</p>") metricName: option<metricName>,
}
type defaultCategoricalHyperParameterRanges = array<defaultCategoricalHyperParameterRange>
@ocaml.doc("<p>Describes a job that exports a dataset to an Amazon S3 bucket. For more information, see <a>CreateDatasetExportJob</a>.</p>
         <p>A dataset export job can be in one of the following states:</p>
         <ul>
            <li>
               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
            </li>
         </ul>")
type datasetExportJob = {
  @ocaml.doc("<p>If a dataset export job fails, provides the reason why.</p>")
  failureReason: option<failureReason>,
  @ocaml.doc(
    "<p>The date and time (in Unix time) the status of the dataset export job was last updated.</p>"
  )
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The creation date and time (in Unix time) of the dataset export job.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The path to the Amazon S3 bucket where the job's output is stored.  For example:</p>
         <p>
            <code>s3://bucket-name/folder-name/</code>
         </p>")
  jobOutput: option<datasetExportJobOutput>,
  @ocaml.doc("<p>The status of the dataset export job.</p>
         <p>A dataset export job can be in one of the following states:</p>
         <ul>
            <li>
               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
            </li>
         </ul>")
  status: option<status>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management service role that has permissions to add data to your
      output Amazon S3 bucket.</p>")
  roleArn: option<arn>,
  @ocaml.doc("<p>The data to export, based on how you imported the data. You can choose to export <code>BULK</code> data that you imported using a dataset import job, 
      <code>PUT</code> data that you imported incrementally (using the console, PutEvents, PutUsers and PutItems operations), or <code>ALL</code> 
      for both types. The default value is <code>PUT</code>.
    </p>")
  ingestionMode: option<ingestionMode>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset to export.</p>")
  datasetArn: option<arn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset export job.</p>")
  datasetExportJobArn: option<arn>,
  @ocaml.doc("<p>The name of the export job.</p>") jobName: option<name>,
}
type categoricalHyperParameterRanges = array<categoricalHyperParameterRange>
@ocaml.doc("<p>Provides a summary of the properties of a campaign update. For a complete listing, call the
      <a>DescribeCampaign</a> API.</p>")
type campaignUpdateSummary = {
  @ocaml.doc("<p>The date and time (in Unix time) that the campaign update was last updated.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The date and time (in Unix time) that the campaign update was created.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>If a campaign update fails, the reason behind the failure.</p>")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>The status of the campaign update.</p>
         <p>A campaign update can be in one of the following states:</p>
         <ul>
            <li>
               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
            </li>
            <li>
               <p>DELETE PENDING > DELETE IN_PROGRESS</p>
            </li>
         </ul>")
  status: option<status>,
  campaignConfig: option<campaignConfig>,
  @ocaml.doc("<p>Specifies the requested minimum provisioned transactions (recommendations) per second that
      Amazon Personalize will support.</p>")
  minProvisionedTPS: option<transactionsPerSecond>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the deployed solution version.</p>")
  solutionVersionArn: option<arn>,
}
@ocaml.doc("<p>Contains information on a batch inference job.</p>")
type batchInferenceJob = {
  @ocaml.doc("<p>The time at which the batch inference job was last updated.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The time at which the batch inference job was created.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The status of the batch inference job. The status is one of the following values:</p>
         <ul>
            <li>
               <p>PENDING</p>
            </li>
            <li>
               <p>IN PROGRESS</p>
            </li>
            <li>
               <p>ACTIVE</p>
            </li>
            <li>
               <p>CREATE FAILED</p>
            </li>
         </ul>")
  status: option<status>,
  @ocaml.doc(
    "<p>The ARN of the Amazon Identity and Access Management (IAM) role that requested the batch inference job.</p>"
  )
  roleArn: option<roleArn>,
  @ocaml.doc("<p>A string to string map of the configuration details of a batch inference job.</p>")
  batchInferenceJobConfig: option<batchInferenceJobConfig>,
  @ocaml.doc(
    "<p>The Amazon S3 bucket that contains the output data generated by the batch inference job.</p>"
  )
  jobOutput: option<batchInferenceJobOutput>,
  @ocaml.doc("<p>The Amazon S3 path that leads to the input data used to generate the batch inference
      job.</p>")
  jobInput: option<batchInferenceJobInput>,
  @ocaml.doc("<p>The number of recommendations generated by the batch inference job. This number includes
      the error messages generated for failed input records.</p>")
  numResults: option<numBatchResults>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the solution version from which the batch inference job
      was created.</p>")
  solutionVersionArn: option<arn>,
  @ocaml.doc("<p>If the batch inference job failed, the reason for the failure.</p>")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>The ARN of the filter used on the batch inference job.</p>")
  filterArn: option<arn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the batch inference job.</p>")
  batchInferenceJobArn: option<arn>,
  @ocaml.doc("<p>The name of the batch inference job.</p>") jobName: option<name>,
}
@ocaml.doc("<p>Specifies the hyperparameters and their ranges.
    Hyperparameters can be categorical, continuous, or integer-valued.</p>")
type hyperParameterRanges = {
  @ocaml.doc("<p>The categorical hyperparameters and their ranges.</p>")
  categoricalHyperParameterRanges: option<categoricalHyperParameterRanges>,
  @ocaml.doc("<p>The continuous hyperparameters and their ranges.</p>")
  continuousHyperParameterRanges: option<continuousHyperParameterRanges>,
  @ocaml.doc("<p>The integer-valued hyperparameters and their ranges.</p>")
  integerHyperParameterRanges: option<integerHyperParameterRanges>,
}
@ocaml.doc("<p>Specifies the hyperparameters and their default ranges.
    Hyperparameters can be categorical, continuous, or integer-valued.</p>")
type defaultHyperParameterRanges = {
  @ocaml.doc("<p>The categorical hyperparameters and their default ranges.</p>")
  categoricalHyperParameterRanges: option<defaultCategoricalHyperParameterRanges>,
  @ocaml.doc("<p>The continuous hyperparameters and their default ranges.</p>")
  continuousHyperParameterRanges: option<defaultContinuousHyperParameterRanges>,
  @ocaml.doc("<p>The integer-valued hyperparameters and their default ranges.</p>")
  integerHyperParameterRanges: option<defaultIntegerHyperParameterRanges>,
}
@ocaml.doc("<p>Describes a deployed solution version, otherwise known as a campaign.
      For more information on campaigns, see <a>CreateCampaign</a>.</p>")
type campaign = {
  latestCampaignUpdate: option<campaignUpdateSummary>,
  @ocaml.doc("<p>The date and time (in Unix format) that the campaign was last updated.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The date and time (in Unix format) that the campaign was created.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>If a campaign fails, the reason behind the failure.</p>")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>The status of the campaign.</p>
         <p>A campaign can be in one of the following states:</p>
         <ul>
            <li>
               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
            </li>
            <li>
               <p>DELETE PENDING > DELETE IN_PROGRESS</p>
            </li>
         </ul>")
  status: option<status>,
  @ocaml.doc("<p>The configuration details of a campaign.</p>")
  campaignConfig: option<campaignConfig>,
  @ocaml.doc(
    "<p>Specifies the requested minimum provisioned transactions (recommendations) per second.</p>"
  )
  minProvisionedTPS: option<transactionsPerSecond>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of a specific version of the solution.</p>")
  solutionVersionArn: option<arn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the campaign. </p>") campaignArn: option<arn>,
  @ocaml.doc("<p>The name of the campaign.</p>") name: option<name>,
}
@ocaml.doc("<p>Describes the properties for hyperparameter optimization (HPO).</p>")
type hpoconfig = {
  @ocaml.doc("<p>The hyperparameters and their allowable ranges.</p>")
  algorithmHyperParameterRanges: option<hyperParameterRanges>,
  @ocaml.doc("<p>Describes the resource configuration for HPO.</p>")
  hpoResourceConfig: option<hporesourceConfig>,
  @ocaml.doc("<p>The metric to optimize during HPO.</p>
         <note>
            <p>Amazon Personalize doesn't support configuring the <code>hpoObjective</code> 
        at this time.</p>
         </note>")
  hpoObjective: option<hpoobjective>,
}
@ocaml.doc("<p>Describes a custom algorithm.</p>")
type algorithm = {
  @ocaml.doc("<p>The date and time (in Unix time) that the algorithm was last updated.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The date and time (in Unix time) that the algorithm was created.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the role.</p>") roleArn: option<arn>,
  @ocaml.doc("<p>The training input mode.</p>") trainingInputMode: option<trainingInputMode>,
  @ocaml.doc(
    "<p>Specifies the default maximum number of training jobs and parallel training jobs.</p>"
  )
  defaultResourceConfig: option<resourceConfig>,
  @ocaml.doc("<p>Specifies the default hyperparameters, their ranges, and whether they
      are tunable. A tunable hyperparameter can
      have its value determined during hyperparameter optimization (HPO).</p>")
  defaultHyperParameterRanges: option<defaultHyperParameterRanges>,
  @ocaml.doc("<p>Specifies the default hyperparameters.</p>")
  defaultHyperParameters: option<hyperParameters>,
  @ocaml.doc("<p>The URI of the Docker container for the algorithm image.</p>")
  algorithmImage: option<algorithmImage>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the algorithm.</p>") algorithmArn: option<arn>,
  @ocaml.doc("<p>The name of the algorithm.</p>") name: option<name>,
}
@ocaml.doc("<p>Describes the configuration properties for the solution.</p>")
type solutionConfig = {
  @ocaml.doc("<p>Describes the additional objective for the solution, such as maximizing streaming 
      minutes or increasing revenue. For more information see <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/optimizing-solution-for-objective.html\">Optimizing a solution</a>.</p>")
  optimizationObjective: option<optimizationObjective>,
  @ocaml.doc("<p>The <a>AutoMLConfig</a> object containing a list of recipes to search
      when AutoML is performed.</p>")
  autoMLConfig: option<autoMLConfig>,
  @ocaml.doc("<p>Lists the feature transformation parameters.</p>")
  featureTransformationParameters: option<featureTransformationParameters>,
  @ocaml.doc("<p>Lists the hyperparameter names and ranges.</p>")
  algorithmHyperParameters: option<hyperParameters>,
  @ocaml.doc("<p>Describes the properties for hyperparameter optimization (HPO).</p>")
  hpoConfig: option<hpoconfig>,
  @ocaml.doc("<p>Only events with a value greater than or equal to this threshold are
      used for training a model.</p>")
  eventValueThreshold: option<eventValueThreshold>,
}
@ocaml.doc(
  "<p>An object that provides information about a specific version of a <a>Solution</a>.</p>"
)
type solutionVersion = {
  @ocaml.doc("<p>The date and time (in
      Unix
      time) that the solution was last updated.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The date and
      time
      (in Unix time) that this version of the solution was created.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>If training a solution version fails, the reason for the failure.</p>")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>The status of the solution version.</p>
         <p>A solution version can be in one of the following states:</p>
         <ul>
            <li>
               <p>CREATE PENDING</p>
            </li>
            <li>
               <p>CREATE IN_PROGRESS</p>
            </li>
            <li>
               <p>ACTIVE</p>
            </li>
            <li>
               <p>CREATE FAILED</p>
            </li>
            <li>
               <p>CREATE STOPPING</p>
            </li>
            <li>
               <p>CREATE STOPPED</p>
            </li>
         </ul>")
  status: option<status>,
  @ocaml.doc("<p>If hyperparameter optimization was performed, contains the hyperparameter values of the
      best performing model.</p>")
  tunedHPOParams: option<tunedHPOParams>,
  @ocaml.doc("<p>The scope of training to be performed when creating the solution version. The
      <code>FULL</code> option trains the solution version based on the entirety of the input
      solution's training data, while the <code>UPDATE</code> option processes only the data that
      has changed in comparison to the input solution. Choose <code>UPDATE</code> when you want to
      incrementally update your solution version instead of creating an entirely new one.</p>
         <important>
            <p>The <code>UPDATE</code> option can only be used when you already have an active solution
        version created from the input solution using the <code>FULL</code> option and the input
        solution was trained with the 
        <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html\">User-Personalization</a>
        recipe or the 
        <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-hrnn-coldstart.html\">HRNN-Coldstart</a> recipe.</p>
         </important>")
  trainingMode: option<trainingMode>,
  @ocaml.doc("<p>The time used to train the model. You are billed for the time it takes to train a model.
      This field is visible only after Amazon Personalize successfully trains a model.</p>")
  trainingHours: option<trainingHours>,
  @ocaml.doc("<p>Describes the configuration properties for the solution.</p>")
  solutionConfig: option<solutionConfig>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the dataset group providing the training data.</p>"
  )
  datasetGroupArn: option<arn>,
  @ocaml.doc("<p>The event type (for example, 'click' or 'like') that is used for training the
      model.</p>")
  eventType: option<eventType>,
  @ocaml.doc("<p>The ARN of the recipe used in the solution.</p>") recipeArn: option<arn>,
  @ocaml.doc("<p>When true, Amazon Personalize searches for the most optimal recipe according to the solution
      configuration. When false (the default), Amazon Personalize uses <code>recipeArn</code>.</p>")
  performAutoML: option<performAutoML>,
  @ocaml.doc("<p>Whether to perform hyperparameter optimization (HPO) on the chosen recipe. The default is
        <code>false</code>.</p>")
  performHPO: option<performHPO>,
  @ocaml.doc("<p>The ARN of the solution.</p>") solutionArn: option<arn>,
  @ocaml.doc("<p>The ARN of the solution version.</p>") solutionVersionArn: option<arn>,
}
@ocaml.doc("<p>An object that provides information about a solution. A solution is a trained model
      that can be deployed as a campaign.</p>")
type solution = {
  @ocaml.doc(
    "<p>Describes the latest version of the solution, including the status and the ARN.</p>"
  )
  latestSolutionVersion: option<solutionVersionSummary>,
  @ocaml.doc("<p>The date and time (in Unix time) that the solution was last updated.</p>")
  lastUpdatedDateTime: option<date>,
  @ocaml.doc("<p>The creation date and time (in Unix time) of the solution.</p>")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The status of the solution.</p>
         <p>A solution can be in one of the following states:</p>
         <ul>
            <li>
               <p>CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED</p>
            </li>
            <li>
               <p>DELETE PENDING > DELETE IN_PROGRESS</p>
            </li>
         </ul>")
  status: option<status>,
  @ocaml.doc("<p>When <code>performAutoML</code> is true, specifies the best recipe found.</p>")
  autoMLResult: option<autoMLResult>,
  @ocaml.doc("<p>Describes the configuration properties for the solution.</p>")
  solutionConfig: option<solutionConfig>,
  @ocaml.doc("<p>The event type (for example, 'click' or 'like') that is used for training the model. 
      If no <code>eventType</code> is provided, Amazon Personalize uses all interactions for training with
      equal weight regardless of type.</p>")
  eventType: option<eventType>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the dataset group that provides the training data.</p>"
  )
  datasetGroupArn: option<arn>,
  @ocaml.doc("<p>The ARN of the recipe used to create the solution.</p>") recipeArn: option<arn>,
  @ocaml.doc("<p>When true, Amazon Personalize performs a search for the best USER_PERSONALIZATION recipe from
      the list specified in the solution configuration (<code>recipeArn</code> must not be specified).
      When false (the default), Amazon Personalize uses <code>recipeArn</code> for training.</p>")
  performAutoML: option<performAutoML>,
  @ocaml.doc("<p>Whether to perform hyperparameter optimization (HPO) on the chosen recipe. The
      default is <code>false</code>.</p>")
  performHPO: option<performHPO>,
  @ocaml.doc("<p>The ARN of the solution.</p>") solutionArn: option<arn>,
  @ocaml.doc("<p>The name of the solution.</p>") name: option<name>,
}
@ocaml.doc("<p>Amazon Personalize is a machine learning service that makes it easy to add individualized
      recommendations to customers.</p>")
module StopSolutionVersionCreation = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the solution version you want to stop creating.</p>"
    )
    solutionVersionArn: arn,
  }

  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "StopSolutionVersionCreationCommand"
  let make = (~solutionVersionArn, ()) => new({solutionVersionArn: solutionVersionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSolution = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the solution to delete.</p>") solutionArn: arn}

  @module("@aws-sdk/client-personalize") @new external new: request => t = "DeleteSolutionCommand"
  let make = (~solutionArn, ()) => new({solutionArn: solutionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSchema = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the schema to delete.</p>") schemaArn: arn,
  }

  @module("@aws-sdk/client-personalize") @new external new: request => t = "DeleteSchemaCommand"
  let make = (~schemaArn, ()) => new({schemaArn: schemaArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFilter = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the filter to delete.</p>") filterArn: arn}

  @module("@aws-sdk/client-personalize") @new external new: request => t = "DeleteFilterCommand"
  let make = (~filterArn, ()) => new({filterArn: filterArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEventTracker = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the event tracker to delete.</p>")
    eventTrackerArn: arn,
  }

  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "DeleteEventTrackerCommand"
  let make = (~eventTrackerArn, ()) => new({eventTrackerArn: eventTrackerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDatasetGroup = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the dataset group to delete.</p>") datasetGroupArn: arn}

  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "DeleteDatasetGroupCommand"
  let make = (~datasetGroupArn, ()) => new({datasetGroupArn: datasetGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDataset = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset to delete.</p>") datasetArn: arn,
  }

  @module("@aws-sdk/client-personalize") @new external new: request => t = "DeleteDatasetCommand"
  let make = (~datasetArn, ()) => new({datasetArn: datasetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCampaign = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the campaign to delete.</p>") campaignArn: arn,
  }

  @module("@aws-sdk/client-personalize") @new external new: request => t = "DeleteCampaignCommand"
  let make = (~campaignArn, ()) => new({campaignArn: campaignArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateSolutionVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The scope of training to be performed when creating the solution version. The
        <code>FULL</code> option trains the solution version based on the entirety of the input
      solution's training data, while the <code>UPDATE</code> option processes only the data that
      has changed in comparison to the input solution. Choose <code>UPDATE</code> when you want to
      incrementally update your solution version instead of creating an entirely new one.</p>
         <important>
            <p>The <code>UPDATE</code> option can only be used when you already have an active solution
        version created from the input solution using the <code>FULL</code> option and the input
        solution was trained with the 
        <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html\">User-Personalization</a>
        recipe or the 
        <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-hrnn-coldstart.html\">HRNN-Coldstart</a> recipe.</p>
         </important>")
    trainingMode: option<trainingMode>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the solution containing the training configuration
      information.</p>")
    solutionArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the new solution version.</p>") solutionVersionArn: option<arn>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "CreateSolutionVersionCommand"
  let make = (~solutionArn, ~trainingMode=?, ()) =>
    new({trainingMode: trainingMode, solutionArn: solutionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSchema = {
  type t
  type request = {
    @ocaml.doc("<p>A schema in Avro JSON format.</p>") schema: avroSchema,
    @ocaml.doc("<p>The name for the schema.</p>") name: name,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the created schema.</p>")
    schemaArn: option<arn>,
  }
  @module("@aws-sdk/client-personalize") @new external new: request => t = "CreateSchemaCommand"
  let make = (~schema, ~name, ()) => new({schema: schema, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFilter = {
  type t
  type request = {
    @ocaml.doc("<p>The filter expression defines which items are included or excluded from recommendations. Filter expression must follow specific format rules. 
            For information about filter expression structure and syntax, see
             <a>filter-expressions</a>.</p>")
    filterExpression: filterExpression,
    @ocaml.doc("<p>The ARN of the dataset group that the filter will belong to.</p>")
    datasetGroupArn: arn,
    @ocaml.doc("<p>The name of the filter to create.</p>") name: name,
  }
  type response = {@ocaml.doc("<p>The ARN of the new filter.</p>") filterArn: option<arn>}
  @module("@aws-sdk/client-personalize") @new external new: request => t = "CreateFilterCommand"
  let make = (~filterExpression, ~datasetGroupArn, ~name, ()) =>
    new({filterExpression: filterExpression, datasetGroupArn: datasetGroupArn, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEventTracker = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the dataset group that receives the event data.</p>"
    )
    datasetGroupArn: arn,
    @ocaml.doc("<p>The name for the event tracker.</p>") name: name,
  }
  type response = {
    @ocaml.doc("<p>The ID of the event tracker. Include this ID in requests to the
      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html\">PutEvents</a> API.</p>")
    trackingId: option<trackingId>,
    @ocaml.doc("<p>The ARN of the event tracker.</p>") eventTrackerArn: option<arn>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "CreateEventTrackerCommand"
  let make = (~datasetGroupArn, ~name, ()) => new({datasetGroupArn: datasetGroupArn, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDatasetGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a KMS key used to encrypt the datasets.</p>")
    kmsKeyArn: option<kmsKeyArn>,
    @ocaml.doc("<p>The ARN of the IAM role that has permissions to access the KMS key. Supplying an IAM
      role is only valid when also specifying a KMS key.</p>")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The name for the new dataset group.</p>") name: name,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the new dataset group.</p>")
    datasetGroupArn: option<arn>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "CreateDatasetGroupCommand"
  let make = (~name, ~kmsKeyArn=?, ~roleArn=?, ()) =>
    new({kmsKeyArn: kmsKeyArn, roleArn: roleArn, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataset = {
  type t
  type request = {
    @ocaml.doc("<p>The type of dataset.</p>
         <p>One of the following (case insensitive) values:</p>
         <ul>
            <li>
               <p>Interactions</p>
            </li>
            <li>
               <p>Items</p>
            </li>
            <li>
               <p>Users</p>
            </li>
         </ul>")
    datasetType: datasetType,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset group to add the dataset to.</p>")
    datasetGroupArn: arn,
    @ocaml.doc("<p>The ARN of the schema to associate with the dataset. The schema defines the dataset
      fields.</p>")
    schemaArn: arn,
    @ocaml.doc("<p>The name for the dataset.</p>") name: name,
  }
  type response = {@ocaml.doc("<p>The ARN of the dataset.</p>") datasetArn: option<arn>}
  @module("@aws-sdk/client-personalize") @new external new: request => t = "CreateDatasetCommand"
  let make = (~datasetType, ~datasetGroupArn, ~schemaArn, ~name, ()) =>
    new({
      datasetType: datasetType,
      datasetGroupArn: datasetGroupArn,
      schemaArn: schemaArn,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSolutionMetrics = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the solution version for which to get metrics.</p>"
    )
    solutionVersionArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The metrics for the solution version.</p>") metrics: option<metrics>,
    @ocaml.doc("<p>The same solution version ARN as specified in the request.</p>")
    solutionVersionArn: option<arn>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "GetSolutionMetricsCommand"
  let make = (~solutionVersionArn, ()) => new({solutionVersionArn: solutionVersionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSchema = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the schema to retrieve.</p>") schemaArn: arn,
  }
  type response = {@ocaml.doc("<p>The requested schema.</p>") schema: option<datasetSchema>}
  @module("@aws-sdk/client-personalize") @new external new: request => t = "DescribeSchemaCommand"
  let make = (~schemaArn, ()) => new({schemaArn: schemaArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRecipe = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the recipe to describe.</p>") recipeArn: arn,
  }
  type response = {@ocaml.doc("<p>An object that describes the recipe.</p>") recipe: option<recipe>}
  @module("@aws-sdk/client-personalize") @new external new: request => t = "DescribeRecipeCommand"
  let make = (~recipeArn, ()) => new({recipeArn: recipeArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFilter = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the filter to describe.</p>") filterArn: arn}
  type response = {@ocaml.doc("<p>The filter's details.</p>") filter: option<filter>}
  @module("@aws-sdk/client-personalize") @new external new: request => t = "DescribeFilterCommand"
  let make = (~filterArn, ()) => new({filterArn: filterArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventTracker = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the event tracker to describe.</p>")
    eventTrackerArn: arn,
  }
  type response = {
    @ocaml.doc("<p>An object that describes the event tracker.</p>")
    eventTracker: option<eventTracker>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "DescribeEventTrackerCommand"
  let make = (~eventTrackerArn, ()) => new({eventTrackerArn: eventTrackerArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDatasetGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset group to describe.</p>")
    datasetGroupArn: arn,
  }
  type response = {
    @ocaml.doc("<p>A listing of the dataset group's properties.</p>")
    datasetGroup: option<datasetGroup>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "DescribeDatasetGroupCommand"
  let make = (~datasetGroupArn, ()) => new({datasetGroupArn: datasetGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDataset = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset to describe.</p>") datasetArn: arn,
  }
  type response = {
    @ocaml.doc("<p>A listing of the dataset's properties.</p>") dataset: option<dataset>,
  }
  @module("@aws-sdk/client-personalize") @new external new: request => t = "DescribeDatasetCommand"
  let make = (~datasetArn, ()) => new({datasetArn: datasetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDatasetImportJob = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ARN of the IAM role that has permissions to read from the Amazon S3 data source.</p>"
    )
    roleArn: roleArn,
    @ocaml.doc("<p>The Amazon S3 bucket that contains the training data to import.</p>")
    dataSource: dataSource,
    @ocaml.doc("<p>The ARN of the dataset that receives the imported data.</p>") datasetArn: arn,
    @ocaml.doc("<p>The name for the dataset import job.</p>") jobName: name,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the dataset import job.</p>") datasetImportJobArn: option<arn>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "CreateDatasetImportJobCommand"
  let make = (~roleArn, ~dataSource, ~datasetArn, ~jobName, ()) =>
    new({roleArn: roleArn, dataSource: dataSource, datasetArn: datasetArn, jobName: jobName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCampaign = {
  type t
  type request = {
    @ocaml.doc("<p>The configuration details of a campaign.</p>")
    campaignConfig: option<campaignConfig>,
    @ocaml.doc("<p>Specifies the requested minimum provisioned transactions (recommendations) per second that
      Amazon Personalize will support.</p>")
    minProvisionedTPS: option<transactionsPerSecond>,
    @ocaml.doc("<p>The ARN of a new solution version to deploy.</p>")
    solutionVersionArn: option<arn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the campaign.</p>") campaignArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The same campaign ARN as given in the request.</p>") campaignArn: option<arn>,
  }
  @module("@aws-sdk/client-personalize") @new external new: request => t = "UpdateCampaignCommand"
  let make = (~campaignArn, ~campaignConfig=?, ~minProvisionedTPS=?, ~solutionVersionArn=?, ()) =>
    new({
      campaignConfig: campaignConfig,
      minProvisionedTPS: minProvisionedTPS,
      solutionVersionArn: solutionVersionArn,
      campaignArn: campaignArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSolutions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of solutions to return.</p>") maxResults: option<maxResults>,
    @ocaml.doc("<p>A token returned from the previous call to <code>ListSolutions</code> for getting
      the next set of solutions (if they exist).</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset group.</p>")
    datasetGroupArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>A token for getting the next set of solutions (if they exist).</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of the current solutions.</p>") solutions: option<solutions>,
  }
  @module("@aws-sdk/client-personalize") @new external new: request => t = "ListSolutionsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~datasetGroupArn=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, datasetGroupArn: datasetGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSolutionVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of solution versions to return.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A token returned from the previous call to <code>ListSolutionVersions</code> for getting
      the next set of solution versions (if they exist).</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the solution.</p>") solutionArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>A token for getting the next set of solution versions (if they exist).</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of solution versions describing the version properties.</p>")
    solutionVersions: option<solutionVersions>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "ListSolutionVersionsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~solutionArn=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, solutionArn: solutionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSchemas = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of schemas to return.</p>") maxResults: option<maxResults>,
    @ocaml.doc("<p>A token returned from the previous call to <code>ListSchemas</code> for getting
      the next set of schemas (if they exist).</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>A token used to get the next set of schemas (if they exist).</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of schemas.</p>") schemas: option<schemas>,
  }
  @module("@aws-sdk/client-personalize") @new external new: request => t = "ListSchemasCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRecipes = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of recipes to return.</p>") maxResults: option<maxResults>,
    @ocaml.doc("<p>A token returned from the previous call to <code>ListRecipes</code> for getting
      the next set of recipes (if they exist).</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The default is <code>SERVICE</code>.</p>")
    recipeProvider: option<recipeProvider>,
  }
  type response = {
    @ocaml.doc("<p>A token for getting the next set of recipes.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of available recipes.</p>") recipes: option<recipes>,
  }
  @module("@aws-sdk/client-personalize") @new external new: request => t = "ListRecipesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~recipeProvider=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, recipeProvider: recipeProvider})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFilters = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of filters to return.</p>") maxResults: option<maxResults>,
    @ocaml.doc("<p>A token returned from the previous call to <code>ListFilters</code> for getting the
            next set of filters (if they exist).</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARN of the dataset group that contains the filters.</p>")
    datasetGroupArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>A token for getting the next set of filters (if they exist).</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of returned filters.</p>") @as("Filters") filters: option<filters>,
  }
  @module("@aws-sdk/client-personalize") @new external new: request => t = "ListFiltersCommand"
  let make = (~maxResults=?, ~nextToken=?, ~datasetGroupArn=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, datasetGroupArn: datasetGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEventTrackers = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of event trackers to return.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A token returned from the previous call to <code>ListEventTrackers</code> for getting
      the next set of event trackers (if they exist).</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARN of a dataset group used to filter the response.</p>")
    datasetGroupArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>A token for getting the next set of event trackers (if they exist).</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of event trackers.</p>") eventTrackers: option<eventTrackers>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "ListEventTrackersCommand"
  let make = (~maxResults=?, ~nextToken=?, ~datasetGroupArn=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, datasetGroupArn: datasetGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDatasets = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of datasets to return.</p>") maxResults: option<maxResults>,
    @ocaml.doc("<p>A token returned from the previous call to <code>ListDatasetImportJobs</code> for getting
      the next set of dataset import jobs (if they exist).</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset group that contains the datasets to
      list.</p>")
    datasetGroupArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>A token for getting the next set of datasets (if they exist).</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of <code>Dataset</code> objects. Each object provides metadata
      information.</p>")
    datasets: option<datasets>,
  }
  @module("@aws-sdk/client-personalize") @new external new: request => t = "ListDatasetsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~datasetGroupArn=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, datasetGroupArn: datasetGroupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDatasetImportJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of dataset import jobs to return.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A token returned from the previous call to <code>ListDatasetImportJobs</code> for getting
      the next set of dataset import jobs (if they exist).</p>")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the dataset to list the dataset import jobs for.</p>"
    )
    datasetArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>A token for getting the next set of dataset import jobs (if they exist).</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of dataset import jobs.</p>")
    datasetImportJobs: option<datasetImportJobs>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "ListDatasetImportJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~datasetArn=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, datasetArn: datasetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDatasetGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of dataset groups to return.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A token returned from the previous call to <code>ListDatasetGroups</code> for getting the
      next set of dataset groups (if they exist).</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>A token for getting the next set of dataset groups (if they exist).</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of your dataset groups.</p>") datasetGroups: option<datasetGroups>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "ListDatasetGroupsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDatasetExportJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of dataset export jobs to return.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A token returned from the previous call to <code>ListDatasetExportJobs</code> for getting
      the next set of dataset export jobs (if they exist).</p>")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the dataset to list the dataset export jobs for.</p>"
    )
    datasetArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>A token for getting the next set of dataset export jobs (if they exist).</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of dataset export jobs.</p>")
    datasetExportJobs: option<datasetExportJobs>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "ListDatasetExportJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~datasetArn=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, datasetArn: datasetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCampaigns = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of campaigns to return.</p>") maxResults: option<maxResults>,
    @ocaml.doc("<p>A token returned from the previous call to <code>ListCampaigns</code> for getting
      the next set of campaigns (if they exist).</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the solution to list the campaigns for. When
        a solution is not specified, all the campaigns associated with the account are listed.</p>")
    solutionArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>A token for getting the next set of campaigns (if they exist).</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of the campaigns.</p>") campaigns: option<campaigns>,
  }
  @module("@aws-sdk/client-personalize") @new external new: request => t = "ListCampaignsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~solutionArn=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, solutionArn: solutionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBatchInferenceJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of batch inference job results to return in each page. The default
      value is 100.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token to request the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the solution version from which the batch inference jobs
      were created.</p>")
    solutionVersionArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to retrieve the next page of results. The value is <code>null</code> when
      there are no more results to return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list containing information on each job that is returned.</p>")
    batchInferenceJobs: option<batchInferenceJobs>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "ListBatchInferenceJobsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~solutionVersionArn=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, solutionVersionArn: solutionVersionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFeatureTransformation = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the feature transformation to describe.</p>")
    featureTransformationArn: arn,
  }
  type response = {
    @ocaml.doc("<p>A listing of the FeatureTransformation properties.</p>")
    featureTransformation: option<featureTransformation>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "DescribeFeatureTransformationCommand"
  let make = (~featureTransformationArn, ()) =>
    new({featureTransformationArn: featureTransformationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDatasetImportJob = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset import job to describe.</p>")
    datasetImportJobArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Information about the dataset import job, including the status.</p>
         <p>The status is one of the following values:</p>
         <ul>
            <li>
               <p>CREATE PENDING</p>
            </li>
            <li>
               <p>CREATE IN_PROGRESS</p>
            </li>
            <li>
               <p>ACTIVE</p>
            </li>
            <li>
               <p>CREATE FAILED</p>
            </li>
         </ul>")
    datasetImportJob: option<datasetImportJob>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "DescribeDatasetImportJobCommand"
  let make = (~datasetImportJobArn, ()) => new({datasetImportJobArn: datasetImportJobArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDatasetExportJob = {
  type t
  type request = {
    @ocaml.doc("<p>The path to the Amazon S3 bucket where the job's output is stored.</p>")
    jobOutput: datasetExportJobOutput,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management service role that has permissions to add data to your
      output Amazon S3 bucket.</p>")
    roleArn: roleArn,
    @ocaml.doc("<p>The data to export, based on how you imported the data. You can choose to export only <code>BULK</code> data that you imported using a dataset import job, 
      only <code>PUT</code> data that you imported incrementally (using the console, PutEvents, PutUsers and PutItems operations), or <code>ALL</code> 
      for both types. The default value is <code>PUT</code>.
    </p>")
    ingestionMode: option<ingestionMode>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the dataset that contains the data to export.</p>"
    )
    datasetArn: arn,
    @ocaml.doc("<p>The name for the dataset export job.</p>") jobName: name,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset export job.</p>")
    datasetExportJobArn: option<arn>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "CreateDatasetExportJobCommand"
  let make = (~jobOutput, ~roleArn, ~datasetArn, ~jobName, ~ingestionMode=?, ()) =>
    new({
      jobOutput: jobOutput,
      roleArn: roleArn,
      ingestionMode: ingestionMode,
      datasetArn: datasetArn,
      jobName: jobName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCampaign = {
  type t
  type request = {
    @ocaml.doc("<p>The configuration details of a campaign.</p>")
    campaignConfig: option<campaignConfig>,
    @ocaml.doc("<p>Specifies the requested minimum provisioned transactions (recommendations) per second that
      Amazon Personalize will support.</p>")
    minProvisionedTPS: transactionsPerSecond,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the solution version to deploy.</p>")
    solutionVersionArn: arn,
    @ocaml.doc(
      "<p>A name for the new campaign. The campaign name must be unique within your account.</p>"
    )
    name: name,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the campaign.</p>") campaignArn: option<arn>,
  }
  @module("@aws-sdk/client-personalize") @new external new: request => t = "CreateCampaignCommand"
  let make = (~minProvisionedTPS, ~solutionVersionArn, ~name, ~campaignConfig=?, ()) =>
    new({
      campaignConfig: campaignConfig,
      minProvisionedTPS: minProvisionedTPS,
      solutionVersionArn: solutionVersionArn,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBatchInferenceJob = {
  type t
  type request = {
    @ocaml.doc("<p>The configuration details of a batch inference job.</p>")
    batchInferenceJobConfig: option<batchInferenceJobConfig>,
    @ocaml.doc("<p>The ARN of the Amazon Identity and Access Management role that has permissions to read and write to your input and output
      Amazon S3 buckets respectively.</p>")
    roleArn: roleArn,
    @ocaml.doc("<p>The path to the Amazon S3 bucket where the job's output will be stored.</p>")
    jobOutput: batchInferenceJobOutput,
    @ocaml.doc("<p>The Amazon S3 path that leads to the input file to base your recommendations on. The input
      material must be in JSON format.</p>")
    jobInput: batchInferenceJobInput,
    @ocaml.doc("<p>The number of recommendations to retreive.</p>")
    numResults: option<numBatchResults>,
    @ocaml.doc("<p>The ARN of the filter to apply to the batch inference job. For more information on using
      filters, see
      <a href=\"https://docs.aws.amazon.com/personalize/latest/dg/filter-batch.html\">Filtering Batch Recommendations</a>..</p>")
    filterArn: option<arn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the solution version that will be used to generate the
      batch inference recommendations.</p>")
    solutionVersionArn: arn,
    @ocaml.doc("<p>The name of the batch inference job to create.</p>") jobName: name,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the batch inference job.</p>") batchInferenceJobArn: option<arn>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "CreateBatchInferenceJobCommand"
  let make = (
    ~roleArn,
    ~jobOutput,
    ~jobInput,
    ~solutionVersionArn,
    ~jobName,
    ~batchInferenceJobConfig=?,
    ~numResults=?,
    ~filterArn=?,
    (),
  ) =>
    new({
      batchInferenceJobConfig: batchInferenceJobConfig,
      roleArn: roleArn,
      jobOutput: jobOutput,
      jobInput: jobInput,
      numResults: numResults,
      filterArn: filterArn,
      solutionVersionArn: solutionVersionArn,
      jobName: jobName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDatasetExportJob = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dataset export job to describe.</p>")
    datasetExportJobArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Information about the dataset export job, including the status.</p>
         <p>The status is one of the following values:</p>
         <ul>
            <li>
               <p>CREATE PENDING</p>
            </li>
            <li>
               <p>CREATE IN_PROGRESS</p>
            </li>
            <li>
               <p>ACTIVE</p>
            </li>
            <li>
               <p>CREATE FAILED</p>
            </li>
         </ul>")
    datasetExportJob: option<datasetExportJob>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "DescribeDatasetExportJobCommand"
  let make = (~datasetExportJobArn, ()) => new({datasetExportJobArn: datasetExportJobArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBatchInferenceJob = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the batch inference job to describe.</p>") batchInferenceJobArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Information on the specified batch inference job.</p>")
    batchInferenceJob: option<batchInferenceJob>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "DescribeBatchInferenceJobCommand"
  let make = (~batchInferenceJobArn, ()) => new({batchInferenceJobArn: batchInferenceJobArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCampaign = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the campaign.</p>") campaignArn: arn,
  }
  type response = {@ocaml.doc("<p>The properties of the campaign.</p>") campaign: option<campaign>}
  @module("@aws-sdk/client-personalize") @new external new: request => t = "DescribeCampaignCommand"
  let make = (~campaignArn, ()) => new({campaignArn: campaignArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAlgorithm = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the algorithm to describe.</p>")
    algorithmArn: arn,
  }
  type response = {
    @ocaml.doc("<p>A listing of the properties of the algorithm.</p>") algorithm: option<algorithm>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "DescribeAlgorithmCommand"
  let make = (~algorithmArn, ()) => new({algorithmArn: algorithmArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSolution = {
  type t
  type request = {
    @ocaml.doc("<p>The configuration to use with the solution. When <code>performAutoML</code> is set to
      true, Amazon Personalize only evaluates the <code>autoMLConfig</code> section
      of the solution configuration.</p>
         <note>
            <p>Amazon Personalize doesn't support configuring the <code>hpoObjective</code> 
        at this time.</p>
         </note>")
    solutionConfig: option<solutionConfig>,
    @ocaml.doc("<p>When your have multiple event types (using an <code>EVENT_TYPE</code> schema field),
      this parameter specifies which event type (for example, 'click' or 'like') is used for
      training the model.</p>
         <p>If you do not provide an <code>eventType</code>, Amazon Personalize will use all interactions for training with
       equal weight regardless of type.</p>")
    eventType: option<eventType>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the dataset group that provides the training data.</p>"
    )
    datasetGroupArn: arn,
    @ocaml.doc("<p>The ARN of the recipe to use for model training. Only specified when
      <code>performAutoML</code> is false.</p>")
    recipeArn: option<arn>,
    @ocaml.doc("<p>Whether to perform automated machine learning (AutoML). The default is <code>false</code>.
      For this case, you must specify <code>recipeArn</code>.</p>
         <p>When set to <code>true</code>, Amazon Personalize analyzes your training data and selects
      the optimal USER_PERSONALIZATION recipe and hyperparameters. In this case, you must omit
      <code>recipeArn</code>. Amazon Personalize determines the optimal recipe by running tests with
      different values for the hyperparameters.
      AutoML lengthens the training process as compared to selecting a specific recipe.</p>")
    performAutoML: option<performAutoML>,
    @ocaml.doc("<p>Whether to perform hyperparameter optimization (HPO) on the specified or selected recipe.
      The default is <code>false</code>.</p>
         <p>When performing AutoML, this parameter is always <code>true</code> and you
      should not set it to <code>false</code>.</p>")
    performHPO: option<boolean_>,
    @ocaml.doc("<p>The name for the solution.</p>") name: name,
  }
  type response = {@ocaml.doc("<p>The ARN of the solution.</p>") solutionArn: option<arn>}
  @module("@aws-sdk/client-personalize") @new external new: request => t = "CreateSolutionCommand"
  let make = (
    ~datasetGroupArn,
    ~name,
    ~solutionConfig=?,
    ~eventType=?,
    ~recipeArn=?,
    ~performAutoML=?,
    ~performHPO=?,
    (),
  ) =>
    new({
      solutionConfig: solutionConfig,
      eventType: eventType,
      datasetGroupArn: datasetGroupArn,
      recipeArn: recipeArn,
      performAutoML: performAutoML,
      performHPO: performHPO,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSolutionVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the solution version.</p>")
    solutionVersionArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The solution version.</p>") solutionVersion: option<solutionVersion>,
  }
  @module("@aws-sdk/client-personalize") @new
  external new: request => t = "DescribeSolutionVersionCommand"
  let make = (~solutionVersionArn, ()) => new({solutionVersionArn: solutionVersionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSolution = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the solution to describe.</p>")
    solutionArn: arn,
  }
  type response = {
    @ocaml.doc("<p>An object that describes the solution.</p>") solution: option<solution>,
  }
  @module("@aws-sdk/client-personalize") @new external new: request => t = "DescribeSolutionCommand"
  let make = (~solutionArn, ()) => new({solutionArn: solutionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
