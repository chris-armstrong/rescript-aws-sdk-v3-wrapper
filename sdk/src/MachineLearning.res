type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-machinelearning") @new
external createClient: unit => awsServiceClient = "MachineLearningClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type floatLabel = float
type vipURL = string
@ocaml.doc(
  "<p>Specifies whether a describe operation should return exhaustive or abbreviated information.</p>"
)
type verbose = bool
@ocaml.doc(
  "<p>The value of a variable. Currently it's used to specify values of the target value, weights, and tag variables and for filtering variable values.</p>"
)
type variableValue = string
@ocaml.doc(
  "<p>The name of a variable. Currently it's used to specify the name of the target value, label, weight, and tags.</p>"
)
type variableName = string
type taggableResourceType = [
  | @as("MLModel") #MLModel
  | @as("Evaluation") #Evaluation
  | @as("DataSource") #DataSource
  | @as("BatchPrediction") #BatchPrediction
]
type tagValue = string
type tagKey = string
@ocaml.doc("<p>String type.</p>") type stringType = string
@ocaml.doc("<p>The sort order specified in a listing condition. Possible values include the following:</p>
        <ul>
            <li>
               <p>
                  <code>asc</code> - Present the information in ascending order (from A-Z).</p>
            </li>
            <li>
               <p>
                  <code>dsc</code> - Present the information in descending order (from Z-A).</p>
            </li>
         </ul>")
type sortOrder = [@as("dsc") #Dsc | @as("asc") #Asc]
type scoreValue = float
type scoreThreshold = float
@ocaml.doc("<p>A reference to a file or bucket on Amazon Simple Storage Service (Amazon S3).</p>")
type s3Url = string
@ocaml.doc(
  "<p>The Amazon Resource Name (ARN) of an <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html#roles-about-termsandconcepts\">AWS IAM Role</a>, such as the following: arn:aws:iam::account:role/rolename. </p>"
)
type roleARN = string
@ocaml.doc("<p> Describes the SQL query to execute on the Amazon Redshift database. The SQL query should be valid for an Amazon Redshift <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/r_SELECT_synopsis.html\">SELECT</a>. 
        </p>")
type redshiftSelectSqlQuery = string
@ocaml.doc("<p>A username to be used by Amazon Machine Learning (Amazon ML)to connect to a database on an Amazon Redshift cluster.
          The username should have sufficient permissions to execute the <code>RedshiftSelectSqlQuery</code> query. The username should be valid for an Amazon Redshift <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html\">USER</a>.</p>")
type redshiftDatabaseUsername = string
@ocaml.doc("<p>A password to be used by Amazon ML to connect to a database on an Amazon Redshift cluster.
          The password should have sufficient permissions to execute a <code>RedshiftSelectSqlQuery</code> query. The password should be valid for an Amazon Redshift <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html\">USER</a>.</p>")
type redshiftDatabasePassword = string
@ocaml.doc("<p>The name of a database hosted on an Amazon Redshift cluster.</p>")
type redshiftDatabaseName = string
@ocaml.doc("<p>The ID of an Amazon Redshift cluster.</p>") type redshiftClusterIdentifier = string
type recipe = string
type realtimeEndpointStatus = [
  | @as("FAILED") #FAILED
  | @as("UPDATING") #UPDATING
  | @as("READY") #READY
  | @as("NONE") #NONE
]
@ocaml.doc(
  "<p>The SQL query to be executed against the Amazon RDS database. The SQL query should be valid for the Amazon RDS type being used.</p>"
)
type rdsselectSqlQuery = string
@ocaml.doc("Identifier of RDS DB Instances.") type rdsinstanceIdentifier = string
@ocaml.doc("<p>The username to be used by Amazon ML to connect to database on an Amazon RDS instance.
            The username should have sufficient permissions to execute an <code>RDSSelectSqlQuery</code> query.</p>")
type rdsdatabaseUsername = string
@ocaml.doc("<p>The password to be used by Amazon ML to connect to a database on an RDS DB instance.
            The password should have sufficient permissions to execute the <code>RDSSelectQuery</code> query.</p>")
type rdsdatabasePassword = string
@ocaml.doc("<p>The name of a database hosted on an RDS DB instance.</p>")
type rdsdatabaseName = string
type presignedS3Url = string
type performanceMetricsPropertyValue = string
type performanceMetricsPropertyKey = string
type pageLimit = int
@ocaml.doc("<p>Description of the most recent details about an object.</p>") type message = string
type mlmodelType = [
  | @as("MULTICLASS") #MULTICLASS
  | @as("BINARY") #BINARY
  | @as("REGRESSION") #REGRESSION
]
type mlmodelName = string
type mlmodelFilterVariable = [
  | @as("TrainingDataURI") #TrainingDataURI
  | @as("Algorithm") #Algorithm
  | @as("MLModelType") #MLModelType
  | @as("RealtimeEndpointStatus") #RealtimeEndpointStatus
  | @as("TrainingDataSourceId") #TrainingDataSourceId
  | @as("IAMUser") #IAMUser
  | @as("Name") #Name
  | @as("Status") #Status
  | @as("LastUpdatedAt") #LastUpdatedAt
  | @as("CreatedAt") #CreatedAt
]
@ocaml.doc("<p>Long integer type that is a 64-bit signed number.</p>") type longType = float
type label = string
@ocaml.doc("<p>Integer type that is a 32-bit signed number.</p>") type integerType = int
@ocaml.doc("<p>A list of the variables to use in searching or filtering <code>Evaluation</code>.</p>
        <ul>
            <li>
               <p>
                  <code>CreatedAt</code> - Sets the search criteria to <code>Evaluation</code> creation date.</p>
            </li>
            <li>
               <p>
                  <code>Status</code> - Sets the search criteria to <code>Evaluation</code> status.</p>
            </li>
            <li>
               <p>
                  <code>Name</code> - Sets the search criteria to the contents of <code>Evaluation</code> 
                  <b> </b> 
                  <code>Name</code>.</p>
            </li>
            <li>
               <p>
                  <code>IAMUser</code> - Sets the search criteria to the user account that invoked an evaluation.</p>
            </li>
            <li>
               <p>
                  <code>MLModelId</code> - Sets the search criteria to the <code>Predictor</code> that was evaluated.</p>
            </li>
            <li>
               <p>
                  <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in evaluation.</p>
            </li>
            <li>
               <p>
                  <code>DataUri</code> - Sets the search criteria to the data file(s) used in evaluation. The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</p>
            </li>
         </ul>")
type evaluationFilterVariable = [
  | @as("DataURI") #DataURI
  | @as("DataSourceId") #DataSourceId
  | @as("MLModelId") #MLModelId
  | @as("IAMUser") #IAMUser
  | @as("Name") #Name
  | @as("Status") #Status
  | @as("LastUpdatedAt") #LastUpdatedAt
  | @as("CreatedAt") #CreatedAt
]
type errorMessage = string
type errorCode = int
@ocaml.doc("<p>A timestamp represented in epoch time.</p>") type epochTime = Js.Date.t
@ocaml.doc("<p>Object status with the following possible values:</p>
        <ul>
            <li>
               <p>
                  <code>PENDING</code>
               </p>
            </li>
            <li>
               <p>
                  <code>INPROGRESS</code>
               </p>
            </li>
            <li>
               <p>
                  <code>FAILED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>COMPLETED</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DELETED</code>
               </p>
            </li>
         </ul>")
type entityStatus = [
  | @as("DELETED") #DELETED
  | @as("COMPLETED") #COMPLETED
  | @as("FAILED") #FAILED
  | @as("INPROGRESS") #INPROGRESS
  | @as("PENDING") #PENDING
]
@ocaml.doc("<p>A user-supplied name or description of the Amazon ML resource.</p>")
type entityName = string
type entityId = string
type edpsubnetId = string
type edpserviceRole = string
type edpsecurityGroupId = string
type edpresourceRole = string
type edppipelineId = string
type detailsValue = string
@ocaml.doc("<p>Contains the key values of <code>DetailsMap</code>:</p>
        <ul>
            <li>
               <p>
                  <code>PredictiveModelType</code> - Indicates the type of the <code>MLModel</code>.</p>
            </li>
            <li>
               <p>
                  <code>Algorithm</code> - Indicates the algorithm that was used for the <code>MLModel</code>.</p>
            </li>
         </ul>")
type detailsAttributes = [
  | @as("Algorithm") #Algorithm
  | @as("PredictiveModelType") #PredictiveModelType
]
@ocaml.doc("<p>A list of the variables to use in searching or filtering <code>DataSource</code>.</p>    
        <ul>
            <li>
               <p>
                  <code>CreatedAt</code> - Sets the search criteria to <code>DataSource</code> creation date.</p>
            </li>
            <li>
               <p>
                  <code>Status</code> - Sets the search criteria to <code>DataSource</code> status.</p>
            </li>
            <li>
               <p>
                  <code>Name</code> - Sets the search criteria to the contents of <code>DataSource</code> 
                  <code>Name</code>.</p>
            </li>
            <li>
               <p>
                  <code>DataUri</code> - Sets the search criteria to the URI of data files used to create the <code>DataSource</code>. The URI can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</p>
            </li>
            <li>
               <p>
                  <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>DataSource</code> creation.</p>
            </li>
         </ul>
        
        <p>
            <b>Note:</b> 
            The variable names should match the variable names in the <code>DataSource</code>.</p>")
type dataSourceFilterVariable = [
  | @as("IAMUser") #IAMUser
  | @as("DataLocationS3") #DataLocationS3
  | @as("Name") #Name
  | @as("Status") #Status
  | @as("LastUpdatedAt") #LastUpdatedAt
  | @as("CreatedAt") #CreatedAt
]
@ocaml.doc("<p>The schema of a <code>DataSource</code>. The <code>DataSchema</code> 
           defines the structure of the observation data in the data file(s) 
           referenced in the <code>DataSource</code>. The DataSource schema 
           is expressed in JSON format.</p>
         <p>
            <code>DataSchema</code> is not required if you specify a <code>DataSchemaUri</code>
         </p> 

         <p>{ \"version\": \"1.0\", \"recordAnnotationFieldName\": \"F1\", \"recordWeightFieldName\": \"F2\", \"targetFieldName\": \"F3\", \"dataFormat\": \"CSV\", \"dataFileContainsHeader\": true, \"variables\": [ { \"fieldName\": \"F1\", \"fieldType\": \"TEXT\" }, { \"fieldName\": \"F2\", \"fieldType\": \"NUMERIC\" }, { \"fieldName\": \"F3\", \"fieldType\": \"CATEGORICAL\" }, { \"fieldName\": \"F4\", \"fieldType\": \"NUMERIC\" }, { \"fieldName\": \"F5\", \"fieldType\": \"CATEGORICAL\" }, { \"fieldName\": \"F6\", \"fieldType\": \"TEXT\" }, { \"fieldName\": \"F7\", \"fieldType\": \"WEIGHTED_INT_SEQUENCE\" }, { \"fieldName\": \"F8\", \"fieldType\": \"WEIGHTED_STRING_SEQUENCE\" } ], \"excludedVariableNames\": [ \"F6\" ] }</p>")
type dataSchema = string
type dataRearrangement = string
type computeStatistics = bool
@ocaml.doc("<p>The value specified in a filtering condition. The <code>ComparatorValue</code> becomes the reference value when matching or evaluating 
            data values in filtering and searching functions.</p>")
type comparatorValue = string
@ocaml.doc("<p>A list of the variables to use in searching or filtering <code>BatchPrediction</code>.</p>
        <ul>
            <li>
               <p>
                  <code>CreatedAt</code> - Sets the search criteria to <code>BatchPrediction</code> creation date.</p>
            </li>
            <li>
               <p>
                  <code>Status</code> - Sets the search criteria to <code>BatchPrediction</code> status.</p>
            </li>
            <li>
               <p>
                  <code>Name</code> - Sets the search criteria to the contents of <code>BatchPrediction</code> 
                  <code>Name</code>.</p>
            </li>
            <li>
               <p>
                  <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>BatchPrediction</code> creation.</p>
            </li>
            <li>
               <p>
                  <code>MLModelId</code> - Sets the search criteria to the <code>MLModel</code> used in the <code>BatchPrediction</code>.</p>
            </li>
            <li>
               <p>
                  <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in the <code>BatchPrediction</code>.</p>
            </li>
            <li>
               <p>
                  <code>DataURI</code> - Sets the search criteria to the data file(s) used in the <code>BatchPrediction</code>. The URL can 
                identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</p>
            </li>
         </ul>")
type batchPredictionFilterVariable = [
  | @as("DataURI") #DataURI
  | @as("DataSourceId") #DataSourceId
  | @as("MLModelId") #MLModelId
  | @as("IAMUser") #IAMUser
  | @as("Name") #Name
  | @as("Status") #Status
  | @as("LastUpdatedAt") #LastUpdatedAt
  | @as("CreatedAt") #CreatedAt
]
@ocaml.doc(
  "<p>An Amazon Web Service (AWS) user account identifier. The account identifier can be an AWS root account or an AWS Identity and Access Management (IAM) user.</p>"
)
type awsUserArn = string
@ocaml.doc("<p>The function used to train an <code>MLModel</code>. Training choices supported by Amazon ML include the following:</p>
        <ul>
            <li>
               <p>
                  <code>SGD</code> - Stochastic Gradient Descent.</p>
            </li>
            <li>
               <p>
                  <code>RandomForest</code> - Random forest of decision trees.</p>
            </li>
         </ul>")
type algorithm = [@as("sgd") #Sgd]
type trainingParameters = Js.Dict.t<stringType>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A custom key-value pair associated with an ML object, such as an ML model.</p>")
type tag = {
  @ocaml.doc(
    "<p>An optional string, typically used to describe or define the tag. Valid characters include Unicode letters, digits, white space, _, ., /, =, +, -, %, and @.</p>"
  )
  @as("Value")
  value: option<tagValue>,
  @ocaml.doc(
    "<p>A unique identifier for the tag. Valid characters include Unicode letters, digits, white space, _, ., /, =, +, -, %, and @.</p>"
  )
  @as("Key")
  key: option<tagKey>,
}
@ocaml.doc("<p>Provides the raw classification score corresponding to each label.</p>")
type scoreValuePerLabelMap = Js.Dict.t<scoreValue>
@ocaml.doc("<p> Describes the data specification of a <code>DataSource</code>.</p>")
type s3DataSpec = {
  @ocaml.doc("<p>Describes the schema location in Amazon S3. You must provide either the 
           <code>DataSchema</code> or the <code>DataSchemaLocationS3</code>.</p>")
  @as("DataSchemaLocationS3")
  dataSchemaLocationS3: option<s3Url>,
  @ocaml.doc("<p> A JSON string that represents the schema for an Amazon S3 
            <code>DataSource</code>. The <code>DataSchema</code>
            defines the structure of the observation data in the data file(s) 
            referenced in the <code>DataSource</code>.</p>
        <p>You must provide either the <code>DataSchema</code> or the <code>DataSchemaLocationS3</code>.</p>
        <p>Define your <code>DataSchema</code> as a series of key-value pairs. <code>attributes</code> 
            and <code>excludedVariableNames</code> have an array of key-value pairs
            for their value. Use the following format to define your <code>DataSchema</code>.</p>
        <p>{ \"version\": \"1.0\",</p>
         <p>\"recordAnnotationFieldName\": \"F1\",</p>
         <p>\"recordWeightFieldName\": \"F2\",</p>
         <p>\"targetFieldName\": \"F3\",</p>
         <p>\"dataFormat\": \"CSV\",</p>
         <p>\"dataFileContainsHeader\": true,</p>
         <p>\"attributes\": [</p>
         <p>{ \"fieldName\": \"F1\", \"fieldType\": \"TEXT\" }, { \"fieldName\": \"F2\", \"fieldType\": \"NUMERIC\" }, { \"fieldName\": \"F3\", \"fieldType\": \"CATEGORICAL\" }, { \"fieldName\": \"F4\", \"fieldType\": \"NUMERIC\" }, { \"fieldName\": \"F5\", \"fieldType\": \"CATEGORICAL\" }, { \"fieldName\": \"F6\", \"fieldType\": \"TEXT\" }, { \"fieldName\": \"F7\", \"fieldType\": \"WEIGHTED_INT_SEQUENCE\" }, { \"fieldName\": \"F8\", \"fieldType\": \"WEIGHTED_STRING_SEQUENCE\" } ],</p>
         <p>\"excludedVariableNames\": [ \"F6\" ] }</p>")
  @as("DataSchema")
  dataSchema: option<dataSchema>,
  @ocaml.doc("<p>A JSON string that represents the splitting and rearrangement 
    processing to be applied to a <code>DataSource</code>. If the <code>DataRearrangement</code> 
    parameter is not provided, all of the input data is used to create the <code>Datasource</code>.</p>

         <p>There are multiple parameters that control what data is used to create a datasource:</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>percentBegin</code>
                  </b>
               </p>
               <p>Use <code>percentBegin</code> to indicate the beginning of the range of the data used to 
        create the Datasource.
        If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes 
        all of the data when creating the datasource.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>percentEnd</code>
                  </b>
               </p>
               <p>Use <code>percentEnd</code> to indicate the end of the range of the data used to create the 
        Datasource. If you do not
        include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML 
        includes all of the data when creating the datasource.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>complement</code>
                  </b>
               </p>
               <p>The <code>complement</code> parameter instructs Amazon ML to use the data that is
    not included in the range of <code>percentBegin</code> to <code>percentEnd</code> to create a
    datasource. The <code>complement</code> parameter is useful if you need to create 
    complementary datasources for training and evaluation.
    To create a complementary datasource, use the same
    values for <code>percentBegin</code> and <code>percentEnd</code>, along with the
    <code>complement</code> parameter.</p>

               <p>For example, the following two datasources do not share any data, and can be used to train and evaluate a model. The first datasource has 25 percent of the data, and the second one has 75 percent of the data.</p>
               <p>Datasource for evaluation: <code>{\"splitting\":{\"percentBegin\":0, \"percentEnd\":25}}</code>
               </p>
               <p>Datasource for training: <code>{\"splitting\":{\"percentBegin\":0, \"percentEnd\":25, \"complement\":\"true\"}}</code>
               </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>strategy</code>
                  </b>
               </p>
               <p>To change how Amazon ML splits the data for a datasource, use the <code>strategy</code> parameter.</p>
               <p>The default value for the <code>strategy</code> parameter
    is <code>sequential</code>, meaning that Amazon ML takes all of the data records between the <code>percentBegin</code>
    and <code>percentEnd</code> parameters for the datasource, in the order that the records appear in the input data.</p>

               <p>The following two <code>DataRearrangement</code> lines are examples of sequentially ordered
    training and evaluation datasources:</p>
               <p>Datasource for evaluation: <code>{\"splitting\":{\"percentBegin\":70, \"percentEnd\":100, \"strategy\":\"sequential\"}}</code>
               </p>
               <p>Datasource for training: <code>{\"splitting\":{\"percentBegin\":70, \"percentEnd\":100, \"strategy\":\"sequential\", \"complement\":\"true\"}}</code>
               </p>

               <p>To randomly split the input data into the proportions indicated by the percentBegin and percentEnd 
        parameters, set the <code>strategy</code> parameter to
    <code>random</code> and provide a string that is used as the seed value for the random data splitting (for 
    example, you can use the S3 path to your data as the random seed string). 
    If you choose the random split strategy,
    Amazon ML assigns each row of data a pseudo-random number between 0 and 100, and then selects the rows that have an assigned
    number between <code>percentBegin</code> and <code>percentEnd</code>. Pseudo-random numbers are assigned 
    using both the input seed string value and the byte offset as a seed, so changing the data results in a 
    different split. Any existing ordering is preserved.
    The random splitting strategy ensures that variables in the training and evaluation data are distributed similarly. 
    It is useful in the cases where the input data may have an implicit sort order, which would otherwise result in 
    training and evaluation datasources containing non-similar data records.</p>
               <p>The following two <code>DataRearrangement</code> lines are examples of non-sequentially ordered
    training and evaluation datasources:</p>
               <p>Datasource for evaluation: <code>{\"splitting\":{\"percentBegin\":70, \"percentEnd\":100, \"strategy\":\"random\", \"randomSeed\"=\"s3://my_s3_path/bucket/file.csv\"}}</code>
               </p>
               <p>Datasource for training: <code>{\"splitting\":{\"percentBegin\":70, \"percentEnd\":100, \"strategy\":\"random\", \"randomSeed\"=\"s3://my_s3_path/bucket/file.csv\", \"complement\":\"true\"}}</code>
               </p>
            </li>
         </ul>")
  @as("DataRearrangement")
  dataRearrangement: option<dataRearrangement>,
  @ocaml.doc("<p>The location of the data file(s) used by a <code>DataSource</code>. The URI specifies a data file or 
            an Amazon Simple Storage Service (Amazon S3) directory or bucket containing data files.</p>")
  @as("DataLocationS3")
  dataLocationS3: s3Url,
}
@ocaml.doc(
  "<p>Describes the database credentials for connecting to a database on an Amazon Redshift cluster.</p>"
)
type redshiftDatabaseCredentials = {
  @as("Password") password: redshiftDatabasePassword,
  @as("Username") username: redshiftDatabaseUsername,
}
@ocaml.doc(
  "<p>Describes the database details required to connect to an Amazon Redshift database.</p>"
)
type redshiftDatabase = {
  @as("ClusterIdentifier") clusterIdentifier: redshiftClusterIdentifier,
  @as("DatabaseName") databaseName: redshiftDatabaseName,
}
@ocaml.doc("<p>A map of variable name-value pairs that represent an observation.</p>")
type record = Js.Dict.t<variableValue>
@ocaml.doc("<p> Describes the real-time endpoint information for an <code>MLModel</code>.</p>")
type realtimeEndpointInfo = {
  @ocaml.doc("<p> The current status of the real-time endpoint for the <code>MLModel</code>. This element can have one of the following values: </p>
        <ul>
            <li>
               <p>
                  <code>NONE</code>  - Endpoint does not exist or was previously deleted.</p>
            </li>
            <li>
               <p>
                  <code>READY</code> - Endpoint is ready to be used for real-time predictions.</p>
            </li>
            <li>
               <p>
                  <code>UPDATING</code> - Updating/creating the endpoint. </p>
            </li>
         </ul>")
  @as("EndpointStatus")
  endpointStatus: option<realtimeEndpointStatus>,
  @ocaml.doc("<p>The URI that specifies where to send real-time prediction requests for the <code>MLModel</code>.</p>
        <p>
            <b>Note:</b> The application must wait until the real-time endpoint is ready before using this URI.</p>")
  @as("EndpointUrl")
  endpointUrl: option<vipURL>,
  @ocaml.doc(
    "<p>The time that the request to create the real-time endpoint for the <code>MLModel</code> was received. The time is expressed in epoch time.</p>"
  )
  @as("CreatedAt")
  createdAt: option<epochTime>,
  @ocaml.doc(
    "<p> The maximum processing rate for the real-time endpoint for <code>MLModel</code>, measured in incoming requests per second.</p>"
  )
  @as("PeakRequestsPerSecond")
  peakRequestsPerSecond: option<integerType>,
}
@ocaml.doc("<p>The database credentials to connect to a database on an RDS DB instance.</p>")
type rdsdatabaseCredentials = {
  @as("Password") password: rdsdatabasePassword,
  @as("Username") username: rdsdatabaseUsername,
}
@ocaml.doc("<p>The database details of an Amazon RDS database.</p>")
type rdsdatabase = {
  @as("DatabaseName") databaseName: rdsdatabaseName,
  @ocaml.doc("<p>The ID of an RDS DB instance.</p>") @as("InstanceIdentifier")
  instanceIdentifier: rdsinstanceIdentifier,
}
type performanceMetricsProperties = Js.Dict.t<performanceMetricsPropertyValue>
type edpsecurityGroupIds = array<edpsecurityGroupId>
@ocaml.doc("<p>Provides any additional details regarding the prediction.</p>")
type detailsMap = Js.Dict.t<detailsValue>
@ocaml.doc("<p> Represents the output of a <code>GetBatchPrediction</code> operation.</p>
        <p> The content consists of the detailed metadata, the status, and the data file information of a
            <code>Batch Prediction</code>.</p>")
type batchPrediction = {
  @as("InvalidRecordCount") invalidRecordCount: option<longType>,
  @as("TotalRecordCount") totalRecordCount: option<longType>,
  @as("StartedAt") startedAt: option<epochTime>,
  @as("FinishedAt") finishedAt: option<epochTime>,
  @as("ComputeTime") computeTime: option<longType>,
  @ocaml.doc(
    "<p>A description of the most recent details about processing the batch prediction request.</p>"
  )
  @as("Message")
  message: option<message>,
  @ocaml.doc(
    "<p>The location of an Amazon S3 bucket or directory to receive the operation results. The following substrings are not allowed in the <code>s3 key</code> portion of the <code>outputURI</code> field: ':', '//', '/./', '/../'.</p>"
  )
  @as("OutputUri")
  outputUri: option<s3Url>,
  @ocaml.doc("<p>The status of the <code>BatchPrediction</code>. This element can have one of the following values:</p>
        <ul>
            <li>
               <p>
                  <code>PENDING</code> - Amazon Machine Learning (Amazon ML) submitted a request to generate predictions for a batch of observations.</p>
            </li>
            <li>
               <p>
                  <code>INPROGRESS</code> - The process is underway.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - The request to perform a batch prediction did not run to completion. It is not usable.</p>
            </li>
            <li>
               <p>
                  <code>COMPLETED</code> - The batch prediction process completed successfully.</p>
            </li>
            <li>
               <p>
                  <code>DELETED</code> - The <code>BatchPrediction</code> is marked as deleted. It is not usable.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<entityStatus>,
  @ocaml.doc("<p>A user-supplied name or description of the <code>BatchPrediction</code>.</p>")
  @as("Name")
  name: option<entityName>,
  @ocaml.doc(
    "<p>The time of the most recent edit to the <code>BatchPrediction</code>. The time is expressed in epoch time.</p>"
  )
  @as("LastUpdatedAt")
  lastUpdatedAt: option<epochTime>,
  @ocaml.doc(
    "<p>The time that the <code>BatchPrediction</code> was created. The time is expressed in epoch time.</p>"
  )
  @as("CreatedAt")
  createdAt: option<epochTime>,
  @ocaml.doc(
    "<p>The AWS user account that invoked the <code>BatchPrediction</code>. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>"
  )
  @as("CreatedByIamUser")
  createdByIamUser: option<awsUserArn>,
  @ocaml.doc(
    "<p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>"
  )
  @as("InputDataLocationS3")
  inputDataLocationS3: option<s3Url>,
  @ocaml.doc(
    "<p>The ID of the <code>DataSource</code> that points to the group of observations to predict.</p>"
  )
  @as("BatchPredictionDataSourceId")
  batchPredictionDataSourceId: option<entityId>,
  @ocaml.doc(
    "<p>The ID of the <code>MLModel</code> that generated predictions for the <code>BatchPrediction</code> request.</p>"
  )
  @as("MLModelId")
  mlmodelId: option<entityId>,
  @ocaml.doc("<p>The ID assigned to the <code>BatchPrediction</code> at creation. This value should be identical to the value of the <code>BatchPredictionID</code> 
            in the request.
        </p>")
  @as("BatchPredictionId")
  batchPredictionId: option<entityId>,
}
type tagList_ = array<tag>
@ocaml.doc("<p>Describes the <code>DataSource</code> details specific to Amazon Redshift.</p>")
type redshiftMetadata = {
  @ocaml.doc(
    "<p> The SQL query that is specified during <a>CreateDataSourceFromRedshift</a>. Returns only if <code>Verbose</code> is true in GetDataSourceInput. </p>"
  )
  @as("SelectSqlQuery")
  selectSqlQuery: option<redshiftSelectSqlQuery>,
  @as("DatabaseUserName") databaseUserName: option<redshiftDatabaseUsername>,
  @as("RedshiftDatabase") redshiftDatabase: option<redshiftDatabase>,
}
@ocaml.doc("<p>Describes the data specification of an Amazon Redshift <code>DataSource</code>.</p>")
type redshiftDataSpec = {
  @ocaml.doc("<p>Describes the schema location for an Amazon Redshift <code>DataSource</code>.</p>")
  @as("DataSchemaUri")
  dataSchemaUri: option<s3Url>,
  @ocaml.doc("<p>A JSON string that represents the schema for an Amazon Redshift 
            <code>DataSource</code>. The <code>DataSchema</code>
            defines the structure of the observation data in the data file(s)
            referenced in the <code>DataSource</code>.</p>
        <p>A <code>DataSchema</code> is not required if you specify a 
            <code>DataSchemaUri</code>.</p>
        <p>Define your <code>DataSchema</code> as a series of key-value pairs. <code>attributes</code>
            and <code>excludedVariableNames</code> have an array of key-value pairs
            for their value. Use the following format to define your <code>DataSchema</code>.</p>
        <p>{ \"version\": \"1.0\",</p>
         <p>\"recordAnnotationFieldName\": \"F1\",</p>
         <p>\"recordWeightFieldName\": \"F2\",</p>
         <p>\"targetFieldName\": \"F3\",</p>
         <p>\"dataFormat\": \"CSV\",</p>
         <p>\"dataFileContainsHeader\": true,</p>
         <p>\"attributes\": [</p>
         <p>{ \"fieldName\": \"F1\", \"fieldType\": \"TEXT\" }, { \"fieldName\": \"F2\", \"fieldType\": \"NUMERIC\" }, { \"fieldName\": \"F3\", \"fieldType\": \"CATEGORICAL\" }, { \"fieldName\": \"F4\", \"fieldType\": \"NUMERIC\" }, { \"fieldName\": \"F5\", \"fieldType\": \"CATEGORICAL\" }, { \"fieldName\": \"F6\", \"fieldType\": \"TEXT\" }, { \"fieldName\": \"F7\", \"fieldType\": \"WEIGHTED_INT_SEQUENCE\" }, { \"fieldName\": \"F8\", \"fieldType\": \"WEIGHTED_STRING_SEQUENCE\" } ],</p>
         <p>\"excludedVariableNames\": [ \"F6\" ] }</p>")
  @as("DataSchema")
  dataSchema: option<dataSchema>,
  @ocaml.doc("<p>A JSON string that represents the splitting and rearrangement 
    processing to be applied to a <code>DataSource</code>. If the <code>DataRearrangement</code> 
    parameter is not provided, all of the input data is used to create the <code>Datasource</code>.</p>

         <p>There are multiple parameters that control what data is used to create a datasource:</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>percentBegin</code>
                  </b>
               </p>
               <p>Use <code>percentBegin</code> to indicate the beginning of the range of the data used to 
        create the Datasource.
        If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes 
        all of the data when creating the datasource.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>percentEnd</code>
                  </b>
               </p>
               <p>Use <code>percentEnd</code> to indicate the end of the range of the data used to create the 
        Datasource. If you do not
        include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML 
        includes all of the data when creating the datasource.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>complement</code>
                  </b>
               </p>
               <p>The <code>complement</code> parameter instructs Amazon ML to use the data that is
    not included in the range of <code>percentBegin</code> to <code>percentEnd</code> to create a
    datasource. The <code>complement</code> parameter is useful if you need to create 
    complementary datasources for training and evaluation.
    To create a complementary datasource, use the same
    values for <code>percentBegin</code> and <code>percentEnd</code>, along with the
    <code>complement</code> parameter.</p>

               <p>For example, the following two datasources do not share any data, and can be used to train and evaluate a model. The first datasource has 25 percent of the data, and the second one has 75 percent of the data.</p>
               <p>Datasource for evaluation: <code>{\"splitting\":{\"percentBegin\":0, \"percentEnd\":25}}</code>
               </p>
               <p>Datasource for training: <code>{\"splitting\":{\"percentBegin\":0, \"percentEnd\":25, \"complement\":\"true\"}}</code>
               </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>strategy</code>
                  </b>
               </p>
               <p>To change how Amazon ML splits the data for a datasource, use the <code>strategy</code> parameter.</p>
               <p>The default value for the <code>strategy</code> parameter
    is <code>sequential</code>, meaning that Amazon ML takes all of the data records between the <code>percentBegin</code>
    and <code>percentEnd</code> parameters for the datasource, in the order that the records appear in the input data.</p>

               <p>The following two <code>DataRearrangement</code> lines are examples of sequentially ordered
    training and evaluation datasources:</p>
               <p>Datasource for evaluation: <code>{\"splitting\":{\"percentBegin\":70, \"percentEnd\":100, \"strategy\":\"sequential\"}}</code>
               </p>
               <p>Datasource for training: <code>{\"splitting\":{\"percentBegin\":70, \"percentEnd\":100, \"strategy\":\"sequential\", \"complement\":\"true\"}}</code>
               </p>

               <p>To randomly split the input data into the proportions indicated by the percentBegin and percentEnd 
        parameters, set the <code>strategy</code> parameter to
    <code>random</code> and provide a string that is used as the seed value for the random data splitting (for 
    example, you can use the S3 path to your data as the random seed string). 
    If you choose the random split strategy,
    Amazon ML assigns each row of data a pseudo-random number between 0 and 100, and then selects the rows that have an assigned
    number between <code>percentBegin</code> and <code>percentEnd</code>. Pseudo-random numbers are assigned 
    using both the input seed string value and the byte offset as a seed, so changing the data results in a 
    different split. Any existing ordering is preserved.
    The random splitting strategy ensures that variables in the training and evaluation data are distributed similarly. 
    It is useful in the cases where the input data may have an implicit sort order, which would otherwise result in 
    training and evaluation datasources containing non-similar data records.</p>
               <p>The following two <code>DataRearrangement</code> lines are examples of non-sequentially ordered
    training and evaluation datasources:</p>
               <p>Datasource for evaluation: <code>{\"splitting\":{\"percentBegin\":70, \"percentEnd\":100, \"strategy\":\"random\", \"randomSeed\"=\"s3://my_s3_path/bucket/file.csv\"}}</code>
               </p>
               <p>Datasource for training: <code>{\"splitting\":{\"percentBegin\":70, \"percentEnd\":100, \"strategy\":\"random\", \"randomSeed\"=\"s3://my_s3_path/bucket/file.csv\", \"complement\":\"true\"}}</code>
               </p>
            </li>
         </ul>")
  @as("DataRearrangement")
  dataRearrangement: option<dataRearrangement>,
  @ocaml.doc(
    "<p>Describes an Amazon S3 location to store the result set of the <code>SelectSqlQuery</code> query.</p>"
  )
  @as("S3StagingLocation")
  s3StagingLocation: s3Url,
  @ocaml.doc(
    "<p>Describes AWS Identity and Access Management (IAM) credentials that are used connect to the Amazon Redshift database.</p>"
  )
  @as("DatabaseCredentials")
  databaseCredentials: redshiftDatabaseCredentials,
  @ocaml.doc(
    "<p>Describes the SQL Query to execute on an Amazon Redshift database for an Amazon Redshift <code>DataSource</code>.</p>"
  )
  @as("SelectSqlQuery")
  selectSqlQuery: redshiftSelectSqlQuery,
  @ocaml.doc(
    "<p>Describes the <code>DatabaseName</code> and <code>ClusterIdentifier</code> for an Amazon Redshift <code>DataSource</code>.</p>"
  )
  @as("DatabaseInformation")
  databaseInformation: redshiftDatabase,
}
@ocaml.doc("<p>The datasource details that are specific to Amazon RDS.</p>")
type rdsmetadata = {
  @ocaml.doc(
    "<p>The ID of the Data Pipeline instance that is used to carry to copy data from Amazon RDS to Amazon S3. You can use the ID to find details about the instance in the Data Pipeline console.</p>"
  )
  @as("DataPipelineId")
  dataPipelineId: option<edppipelineId>,
  @ocaml.doc(
    "<p>The role (DataPipelineDefaultRole) assumed by the Data Pipeline service to monitor the progress of the copy task from Amazon RDS to Amazon S3. For more information, see <a href=\"https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html\">Role templates</a> for data pipelines.</p>"
  )
  @as("ServiceRole")
  serviceRole: option<edpserviceRole>,
  @ocaml.doc(
    "<p>The role (DataPipelineDefaultResourceRole) assumed by an Amazon EC2 instance to carry out the copy task from Amazon RDS to Amazon S3. For more information, see <a href=\"https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html\">Role templates</a> for data pipelines.</p>"
  )
  @as("ResourceRole")
  resourceRole: option<edpresourceRole>,
  @ocaml.doc(
    "<p>The SQL query that is supplied during <a>CreateDataSourceFromRDS</a>. Returns only if <code>Verbose</code> is true in <code>GetDataSourceInput</code>. </p>"
  )
  @as("SelectSqlQuery")
  selectSqlQuery: option<rdsselectSqlQuery>,
  @as("DatabaseUserName") databaseUserName: option<rdsdatabaseUsername>,
  @ocaml.doc("<p>The database details required to connect to an Amazon RDS.</p>") @as("Database")
  database: option<rdsdatabase>,
}
@ocaml.doc(
  "<p>The data specification of an Amazon Relational Database Service (Amazon RDS) <code>DataSource</code>.</p>"
)
type rdsdataSpec = {
  @ocaml.doc(
    "<p>The security group IDs to be used to access a VPC-based RDS DB instance. Ensure that there are appropriate ingress rules set up to allow access to the RDS DB instance. This attribute is used by Data Pipeline to carry out the copy operation from Amazon RDS to an Amazon S3 task.</p>"
  )
  @as("SecurityGroupIds")
  securityGroupIds: edpsecurityGroupIds,
  @ocaml.doc(
    "<p>The subnet ID to be used to access a VPC-based RDS DB instance. This attribute is used by Data Pipeline to carry out the copy task from Amazon RDS to Amazon S3.</p>"
  )
  @as("SubnetId")
  subnetId: edpsubnetId,
  @ocaml.doc(
    "<p>The role (DataPipelineDefaultRole) assumed by AWS Data Pipeline service to monitor the progress of the copy task from Amazon RDS to Amazon S3. For more information, see <a href=\"https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html\">Role templates</a> for data pipelines.</p>"
  )
  @as("ServiceRole")
  serviceRole: edpserviceRole,
  @ocaml.doc(
    "<p>The role (DataPipelineDefaultResourceRole) assumed by an Amazon Elastic Compute Cloud (Amazon EC2) instance to carry out the copy operation from Amazon RDS to an Amazon S3 task. For more information, see <a href=\"https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html\">Role templates</a> for data pipelines.</p>"
  )
  @as("ResourceRole")
  resourceRole: edpresourceRole,
  @ocaml.doc("<p>The Amazon S3 location of the <code>DataSchema</code>. </p>") @as("DataSchemaUri")
  dataSchemaUri: option<s3Url>,
  @ocaml.doc("<p>A JSON string that represents the schema for an Amazon RDS
            <code>DataSource</code>. The <code>DataSchema</code>
            defines the structure of the observation data in the data file(s)
            referenced in the <code>DataSource</code>.</p>
        <p>A <code>DataSchema</code> is not required if you specify a 
            <code>DataSchemaUri</code>
         </p>
        <p>Define your <code>DataSchema</code> as a series of key-value pairs. <code>attributes</code>
            and <code>excludedVariableNames</code> have an array of key-value pairs
            for their value. Use the following format to define your <code>DataSchema</code>.</p>
        <p>{ \"version\": \"1.0\",</p>
         <p>\"recordAnnotationFieldName\": \"F1\",</p>
         <p>\"recordWeightFieldName\": \"F2\",</p>
         <p>\"targetFieldName\": \"F3\",</p>
         <p>\"dataFormat\": \"CSV\",</p>
         <p>\"dataFileContainsHeader\": true,</p>
         <p>\"attributes\": [</p>
         <p>{ \"fieldName\": \"F1\", \"fieldType\": \"TEXT\" }, { \"fieldName\": \"F2\", \"fieldType\": \"NUMERIC\" }, { \"fieldName\": \"F3\", \"fieldType\": \"CATEGORICAL\" }, { \"fieldName\": \"F4\", \"fieldType\": \"NUMERIC\" }, { \"fieldName\": \"F5\", \"fieldType\": \"CATEGORICAL\" }, { \"fieldName\": \"F6\", \"fieldType\": \"TEXT\" }, { \"fieldName\": \"F7\", \"fieldType\": \"WEIGHTED_INT_SEQUENCE\" }, { \"fieldName\": \"F8\", \"fieldType\": \"WEIGHTED_STRING_SEQUENCE\" } ],</p>
         <p>\"excludedVariableNames\": [ \"F6\" ] }</p>")
  @as("DataSchema")
  dataSchema: option<dataSchema>,
  @ocaml.doc("<p>A JSON string that represents the splitting and rearrangement 
    processing to be applied to a <code>DataSource</code>. If the <code>DataRearrangement</code> 
    parameter is not provided, all of the input data is used to create the <code>Datasource</code>.</p>

         <p>There are multiple parameters that control what data is used to create a datasource:</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>percentBegin</code>
                  </b>
               </p>
               <p>Use <code>percentBegin</code> to indicate the beginning of the range of the data used to 
        create the Datasource.
        If you do not include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML includes 
        all of the data when creating the datasource.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>percentEnd</code>
                  </b>
               </p>
               <p>Use <code>percentEnd</code> to indicate the end of the range of the data used to create the 
        Datasource. If you do not
        include <code>percentBegin</code> and <code>percentEnd</code>, Amazon ML 
        includes all of the data when creating the datasource.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>complement</code>
                  </b>
               </p>
               <p>The <code>complement</code> parameter instructs Amazon ML to use the data that is
    not included in the range of <code>percentBegin</code> to <code>percentEnd</code> to create a
    datasource. The <code>complement</code> parameter is useful if you need to create 
    complementary datasources for training and evaluation.
    To create a complementary datasource, use the same
    values for <code>percentBegin</code> and <code>percentEnd</code>, along with the
    <code>complement</code> parameter.</p>

               <p>For example, the following two datasources do not share any data, and can be used to train and evaluate a model. The first datasource has 25 percent of the data, and the second one has 75 percent of the data.</p>
               <p>Datasource for evaluation: <code>{\"splitting\":{\"percentBegin\":0, \"percentEnd\":25}}</code>
               </p>
               <p>Datasource for training: <code>{\"splitting\":{\"percentBegin\":0, \"percentEnd\":25, \"complement\":\"true\"}}</code>
               </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>strategy</code>
                  </b>
               </p>
               <p>To change how Amazon ML splits the data for a datasource, use the <code>strategy</code> parameter.</p>
               <p>The default value for the <code>strategy</code> parameter
    is <code>sequential</code>, meaning that Amazon ML takes all of the data records between the <code>percentBegin</code>
    and <code>percentEnd</code> parameters for the datasource, in the order that the records appear in the input data.</p>

               <p>The following two <code>DataRearrangement</code> lines are examples of sequentially ordered
    training and evaluation datasources:</p>
               <p>Datasource for evaluation: <code>{\"splitting\":{\"percentBegin\":70, \"percentEnd\":100, \"strategy\":\"sequential\"}}</code>
               </p>
               <p>Datasource for training: <code>{\"splitting\":{\"percentBegin\":70, \"percentEnd\":100, \"strategy\":\"sequential\", \"complement\":\"true\"}}</code>
               </p>

               <p>To randomly split the input data into the proportions indicated by the percentBegin and percentEnd 
        parameters, set the <code>strategy</code> parameter to
    <code>random</code> and provide a string that is used as the seed value for the random data splitting (for 
    example, you can use the S3 path to your data as the random seed string). 
    If you choose the random split strategy,
    Amazon ML assigns each row of data a pseudo-random number between 0 and 100, and then selects the rows that have an assigned
    number between <code>percentBegin</code> and <code>percentEnd</code>. Pseudo-random numbers are assigned 
    using both the input seed string value and the byte offset as a seed, so changing the data results in a 
    different split. Any existing ordering is preserved.
    The random splitting strategy ensures that variables in the training and evaluation data are distributed similarly. 
    It is useful in the cases where the input data may have an implicit sort order, which would otherwise result in 
    training and evaluation datasources containing non-similar data records.</p>
               <p>The following two <code>DataRearrangement</code> lines are examples of non-sequentially ordered
    training and evaluation datasources:</p>
               <p>Datasource for evaluation: <code>{\"splitting\":{\"percentBegin\":70, \"percentEnd\":100, \"strategy\":\"random\", \"randomSeed\"=\"s3://my_s3_path/bucket/file.csv\"}}</code>
               </p>
               <p>Datasource for training: <code>{\"splitting\":{\"percentBegin\":70, \"percentEnd\":100, \"strategy\":\"random\", \"randomSeed\"=\"s3://my_s3_path/bucket/file.csv\", \"complement\":\"true\"}}</code>
               </p>
            </li>
         </ul>")
  @as("DataRearrangement")
  dataRearrangement: option<dataRearrangement>,
  @ocaml.doc(
    "<p>The Amazon S3 location for staging Amazon RDS data. The data retrieved from Amazon RDS using <code>SelectSqlQuery</code> is stored in this location.</p>"
  )
  @as("S3StagingLocation")
  s3StagingLocation: s3Url,
  @ocaml.doc(
    "<p>The AWS Identity and Access Management (IAM) credentials that are used connect to the Amazon RDS database.</p>"
  )
  @as("DatabaseCredentials")
  databaseCredentials: rdsdatabaseCredentials,
  @ocaml.doc(
    "<p>The query that is used to retrieve the observation data for the <code>DataSource</code>.</p>"
  )
  @as("SelectSqlQuery")
  selectSqlQuery: rdsselectSqlQuery,
  @ocaml.doc(
    "<p>Describes the <code>DatabaseName</code> and <code>InstanceIdentifier</code> of an Amazon RDS database.</p>"
  )
  @as("DatabaseInformation")
  databaseInformation: rdsdatabase,
}
@ocaml.doc("<p>The output from a <code>Predict</code> operation: </p>
		
		       <ul>
            <li> 
				           <p>
				              <code>Details</code> - Contains the following attributes:
				  <code>DetailsAttributes.PREDICTIVE_MODEL_TYPE - REGRESSION | BINARY | MULTICLASS</code>
				              <code>DetailsAttributes.ALGORITHM - SGD</code>
				           </p>
			         </li>
            <li> 
				           <p>
				              <code>PredictedLabel</code> - Present for either a <code>BINARY</code> or <code>MULTICLASS</code> 
                  <code>MLModel</code> request.
				</p>
			         </li>
            <li> 
				           <p>
				              <code>PredictedScores</code> - Contains the raw classification score corresponding to each label.
				</p>				
			         </li>
            <li> 
				           <p>
				              <code>PredictedValue</code> - Present for a <code>REGRESSION</code> 
                  <code>MLModel</code> request.
				</p>				
			         </li>
         </ul>")
type prediction = {
  details: option<detailsMap>,
  predictedScores: option<scoreValuePerLabelMap>,
  @ocaml.doc("<p>The prediction value for <code>REGRESSION</code> 
            <code>MLModel</code>.</p>")
  predictedValue: option<floatLabel>,
  @ocaml.doc("<p>The prediction label for either a <code>BINARY</code> or <code>MULTICLASS</code> 
            <code>MLModel</code>.</p>")
  predictedLabel: option<label>,
}
@ocaml.doc("<p>Measurements of how well the <code>MLModel</code> performed on known observations. One of the following metrics is returned, based on the type of the <code>MLModel</code>: 
        </p>
        <ul>
            <li>
               <p>BinaryAUC: The binary <code>MLModel</code> uses the Area Under the Curve (AUC) technique to measure performance. </p>
            </li>
            <li>
               <p>RegressionRMSE: The regression <code>MLModel</code> uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.</p> 
            </li>
            <li>
               <p>MulticlassAvgFScore: The multiclass <code>MLModel</code> uses the F1 score technique to measure performance. </p>
            </li>
         </ul>
        <p>
            For more information about performance metrics, please see the <a href=\"https://docs.aws.amazon.com/machine-learning/latest/dg\">Amazon Machine Learning Developer Guide</a>.
        </p>")
type performanceMetrics = {@as("Properties") properties: option<performanceMetricsProperties>}
@ocaml.doc("<p> Represents the output of a <code>GetMLModel</code> operation. </p>
         <p>The content consists of the detailed metadata and the current status of the <code>MLModel</code>.</p>")
type mlmodel = {
  @as("StartedAt") startedAt: option<epochTime>,
  @as("FinishedAt") finishedAt: option<epochTime>,
  @as("ComputeTime") computeTime: option<longType>,
  @ocaml.doc(
    "<p>A description of the most recent details about accessing the <code>MLModel</code>.</p>"
  )
  @as("Message")
  message: option<message>,
  @ocaml.doc(
    "<p>The time of the most recent edit to the <code>ScoreThreshold</code>. The time is expressed in epoch time.</p>"
  )
  @as("ScoreThresholdLastUpdatedAt")
  scoreThresholdLastUpdatedAt: option<epochTime>,
  @as("ScoreThreshold") scoreThreshold: option<scoreThreshold>,
  @ocaml.doc("<p>Identifies the <code>MLModel</code> category. The following are the available types:</p>
        <ul>
            <li>
               <p>
                  <code>REGRESSION</code> - Produces a numeric result. For example, \"What price should a
                house be listed at?\"</p>
            </li>
            <li>
               <p>
                  <code>BINARY</code> - Produces one of two possible results. For example, \"Is this a
                child-friendly web site?\".</p>
            </li>
            <li>
               <p>
                  <code>MULTICLASS</code> - Produces one of several possible results. For example, \"Is
                this a HIGH-, LOW-, or MEDIUM-risk trade?\".</p>
            </li>
         </ul>")
  @as("MLModelType")
  mlmodelType: option<mlmodelType>,
  @ocaml.doc("<p>The algorithm used to train the <code>MLModel</code>. The following algorithm is supported:</p>
        <ul>
            <li>
               <p>
                  <code>SGD</code> -- Stochastic gradient descent. The goal of <code>SGD</code> is to minimize the gradient of the loss function. </p>
            </li>
         </ul>")
  @as("Algorithm")
  algorithm: option<algorithm>,
  @ocaml.doc(
    "<p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>"
  )
  @as("InputDataLocationS3")
  inputDataLocationS3: option<s3Url>,
  @ocaml.doc("<p>A list of the training parameters in the <code>MLModel</code>. The list is implemented as
            a map of key-value pairs.</p>
        <p>The following is the current set of training parameters:</p>
        <ul>
            <li>
               <p>
                  <code>sgd.maxMLModelSizeInBytes</code> - The maximum allowed size of the model. Depending on the
                    input data, the size of the model might affect its performance.</p> 
                <p> The value is an integer that ranges from <code>100000</code> to <code>2147483648</code>. The default value is <code>33554432</code>.</p>
            </li>
            <li>
               <p>
                  <code>sgd.maxPasses</code> - The number of times that the training process traverses the
                    observations to build the <code>MLModel</code>. The value is an integer that
                    ranges from <code>1</code> to <code>10000</code>. The default value is
                        <code>10</code>.</p>
            </li>
            <li>
               <p>
                  <code>sgd.shuffleType</code> - Whether Amazon ML shuffles the training data. Shuffling the data
                    improves a model's ability to find the optimal solution for a variety of data
                    types. The valid values are <code>auto</code> and <code>none</code>. The default
                    value is <code>none</code>.</p>
            </li>
            <li>
               <p>
                  <code>sgd.l1RegularizationAmount</code> - The coefficient regularization L1 norm, which controls
                    overfitting the data by penalizing large coefficients. This parameter tends to
                    drive coefficients to zero, resulting in sparse feature set. If you use this
                    parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p>
                <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>.
                    The default is to not use L1 normalization. This parameter can't be used when
                        <code>L2</code> is specified. Use this parameter sparingly.</p>
            </li>
            <li>
               <p>
                  <code>sgd.l2RegularizationAmount</code> - The coefficient regularization L2 norm, which controls
                    overfitting the data by penalizing large coefficients. This tends to drive
                    coefficients to small, nonzero values. If you use this parameter, start by
                    specifying a small value, such as <code>1.0E-08</code>.</p>
                <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>.
                    The default is to not use L2 normalization. This parameter can't be used when
                        <code>L1</code> is specified. Use this parameter sparingly.</p>
            </li>
         </ul>")
  @as("TrainingParameters")
  trainingParameters: option<trainingParameters>,
  @ocaml.doc("<p>The current endpoint of the <code>MLModel</code>.</p>") @as("EndpointInfo")
  endpointInfo: option<realtimeEndpointInfo>,
  @as("SizeInBytes") sizeInBytes: option<longType>,
  @ocaml.doc("<p>The current status of an <code>MLModel</code>. This element can have one of the following values: </p>
        <ul>
            <li>
               <p>
                  <code>PENDING</code>	- Amazon Machine Learning (Amazon ML) submitted a request to create an <code>MLModel</code>.</p>
            </li>
            <li>
               <p>
                  <code>INPROGRESS</code>	- The creation process is underway.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - The request to create an <code>MLModel</code> didn't run to
                completion. The model isn't usable.</p>
            </li>
            <li>
               <p>
                  <code>COMPLETED</code>	- The creation process completed successfully.</p>
            </li>
            <li>
               <p>
                  <code>DELETED</code> - The <code>MLModel</code> is marked as deleted. It isn't
                usable.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<entityStatus>,
  @ocaml.doc("<p>A user-supplied name or description of the <code>MLModel</code>.</p>") @as("Name")
  name: option<mlmodelName>,
  @ocaml.doc(
    "<p>The time of the most recent edit to the <code>MLModel</code>. The time is expressed in epoch time.</p>"
  )
  @as("LastUpdatedAt")
  lastUpdatedAt: option<epochTime>,
  @ocaml.doc(
    "<p>The time that the <code>MLModel</code> was created. The time is expressed in epoch time.</p>"
  )
  @as("CreatedAt")
  createdAt: option<epochTime>,
  @ocaml.doc(
    "<p>The AWS user account from which the <code>MLModel</code> was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>"
  )
  @as("CreatedByIamUser")
  createdByIamUser: option<awsUserArn>,
  @ocaml.doc(
    "<p>The ID of the training <code>DataSource</code>. The <code>CreateMLModel</code> operation uses the <code>TrainingDataSourceId</code>.</p>"
  )
  @as("TrainingDataSourceId")
  trainingDataSourceId: option<entityId>,
  @ocaml.doc("<p>The ID assigned to the <code>MLModel</code> at creation.</p>") @as("MLModelId")
  mlmodelId: option<entityId>,
}
type batchPredictions = array<batchPrediction>
type mlmodels = array<mlmodel>
@ocaml.doc("<p> Represents the output of <code>GetEvaluation</code> operation. </p>
         <p>The content consists of the detailed metadata and data file information and the current status of the 
            <code>Evaluation</code>.</p>")
type evaluation = {
  @as("StartedAt") startedAt: option<epochTime>,
  @as("FinishedAt") finishedAt: option<epochTime>,
  @as("ComputeTime") computeTime: option<longType>,
  @ocaml.doc(
    "<p>A description of the most recent details about evaluating the <code>MLModel</code>.</p>"
  )
  @as("Message")
  message: option<message>,
  @ocaml.doc("<p>Measurements of how well the <code>MLModel</code> performed, using observations referenced
        by the <code>DataSource</code>. One of the following metrics is returned, based on the type of the <code>MLModel</code>: 
        </p>
        <ul>
            <li>
               <p>BinaryAUC: A binary <code>MLModel</code> uses the Area Under the Curve (AUC) technique to measure performance. </p>
            </li>
            <li>
               <p>RegressionRMSE: A regression <code>MLModel</code> uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.</p> 
            </li>
            <li>
               <p>MulticlassAvgFScore: A multiclass <code>MLModel</code> uses the F1 score technique to measure performance. </p>
            </li>
         </ul>
        <p>
            For more information about performance metrics, please see the <a href=\"https://docs.aws.amazon.com/machine-learning/latest/dg\">Amazon Machine Learning Developer Guide</a>.
        </p>")
  @as("PerformanceMetrics")
  performanceMetrics: option<performanceMetrics>,
  @ocaml.doc("<p>The status of the evaluation. This element can have one of the following values:</p>
        <ul>
            <li>
               <p>
                  <code>PENDING</code> - Amazon Machine Learning (Amazon ML) submitted a request to evaluate an <code>MLModel</code>.</p>
            </li>
            <li>
               <p>
                  <code>INPROGRESS</code> - The evaluation is underway.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - The request to evaluate an <code>MLModel</code> did not run to completion. It is not usable.</p>
            </li>
            <li>
               <p>
                  <code>COMPLETED</code> - The evaluation process completed successfully.</p>
            </li>
            <li>
               <p>
                  <code>DELETED</code> - The <code>Evaluation</code> is marked as deleted. It is not usable.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<entityStatus>,
  @ocaml.doc("<p>A user-supplied name or description of the <code>Evaluation</code>. </p>")
  @as("Name")
  name: option<entityName>,
  @ocaml.doc(
    "<p>The time of the most recent edit to the <code>Evaluation</code>. The time is expressed in epoch time.</p>"
  )
  @as("LastUpdatedAt")
  lastUpdatedAt: option<epochTime>,
  @ocaml.doc(
    "<p>The time that the <code>Evaluation</code> was created. The time is expressed in epoch time.</p>"
  )
  @as("CreatedAt")
  createdAt: option<epochTime>,
  @ocaml.doc(
    "<p>The AWS user account that invoked the evaluation. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>"
  )
  @as("CreatedByIamUser")
  createdByIamUser: option<awsUserArn>,
  @ocaml.doc(
    "<p>The location and name of the data in Amazon Simple Storage Server (Amazon S3) that is used in the evaluation.</p>"
  )
  @as("InputDataLocationS3")
  inputDataLocationS3: option<s3Url>,
  @ocaml.doc(
    "<p>The ID of the <code>DataSource</code> that is used to evaluate the <code>MLModel</code>.</p>"
  )
  @as("EvaluationDataSourceId")
  evaluationDataSourceId: option<entityId>,
  @ocaml.doc("<p>The ID of the <code>MLModel</code> that is the focus of the evaluation.</p>")
  @as("MLModelId")
  mlmodelId: option<entityId>,
  @ocaml.doc("<p>The ID that is assigned to the <code>Evaluation</code> at creation.</p>")
  @as("EvaluationId")
  evaluationId: option<entityId>,
}
@ocaml.doc("<p> Represents the output of the <code>GetDataSource</code> operation. </p>
         <p>  The content consists of the detailed metadata and data file information and the current status of the <code>DataSource</code>. </p>")
type dataSource = {
  @as("StartedAt") startedAt: option<epochTime>,
  @as("FinishedAt") finishedAt: option<epochTime>,
  @as("ComputeTime") computeTime: option<longType>,
  @ocaml.doc("<p>
          The parameter is <code>true</code> if statistics need to be generated from the observation data.
      </p>")
  @as("ComputeStatistics")
  computeStatistics: option<computeStatistics>,
  @as("RoleARN") roleARN: option<roleARN>,
  @as("RDSMetadata") rdsmetadata: option<rdsmetadata>,
  @as("RedshiftMetadata") redshiftMetadata: option<redshiftMetadata>,
  @ocaml.doc(
    "<p>A description of the most recent details about creating the <code>DataSource</code>.</p>"
  )
  @as("Message")
  message: option<message>,
  @ocaml.doc("<p>The current status of the <code>DataSource</code>. This element can have one of the following values: </p>
         <ul>
            <li>
               <p>PENDING	- Amazon Machine Learning (Amazon ML) submitted a request to create a <code>DataSource</code>.</p>
            </li>
            <li>
               <p>INPROGRESS - The creation process is underway.</p>
            </li>
            <li>
               <p>FAILED - The request to create a <code>DataSource</code> did not run to completion. It is not usable.</p>
            </li>
            <li>
               <p>COMPLETED - The creation process completed successfully.</p>
            </li>
            <li>
               <p>DELETED	- The <code>DataSource</code> is marked as deleted. It is not usable.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<entityStatus>,
  @ocaml.doc("<p>A user-supplied name or description of the <code>DataSource</code>.</p>")
  @as("Name")
  name: option<entityName>,
  @ocaml.doc("<p>The number of data files referenced by the <code>DataSource</code>.</p>")
  @as("NumberOfFiles")
  numberOfFiles: option<longType>,
  @ocaml.doc(
    "<p>The total number of observations contained in the data files that the <code>DataSource</code> references.</p>"
  )
  @as("DataSizeInBytes")
  dataSizeInBytes: option<longType>,
  @ocaml.doc("<p>The time of the most recent edit to the 
      <code>BatchPrediction</code>. The time is expressed in epoch time.</p>")
  @as("LastUpdatedAt")
  lastUpdatedAt: option<epochTime>,
  @ocaml.doc(
    "<p>The time that the <code>DataSource</code> was created. The time is expressed in epoch time.</p>"
  )
  @as("CreatedAt")
  createdAt: option<epochTime>,
  @ocaml.doc(
    "<p>The AWS user account from which the <code>DataSource</code> was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>"
  )
  @as("CreatedByIamUser")
  createdByIamUser: option<awsUserArn>,
  @ocaml.doc("<p>A JSON string that represents the splitting and rearrangement requirement used when this <code>DataSource</code>
        was created.</p>")
  @as("DataRearrangement")
  dataRearrangement: option<dataRearrangement>,
  @ocaml.doc(
    "<p>The location and name of the data in Amazon Simple Storage Service (Amazon S3) that is used by a <code>DataSource</code>.</p>"
  )
  @as("DataLocationS3")
  dataLocationS3: option<s3Url>,
  @ocaml.doc("<p>The ID that is assigned to the <code>DataSource</code> during creation.</p>")
  @as("DataSourceId")
  dataSourceId: option<entityId>,
}
type evaluations = array<evaluation>
type dataSources = array<dataSource>
@ocaml.doc("Definition of the public APIs
		exposed by Amazon Machine Learning")
module UpdateMLModel = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>ScoreThreshold</code> used in binary classification <code>MLModel</code> that marks the boundary between a positive prediction and a negative prediction.</p>
        <p>Output values greater than or equal to the <code>ScoreThreshold</code> receive a positive result from the <code>MLModel</code>, such as <code>true</code>. Output values less than the <code>ScoreThreshold</code> receive a negative response from the <code>MLModel</code>, such as <code>false</code>.</p>")
    @as("ScoreThreshold")
    scoreThreshold: option<scoreThreshold>,
    @ocaml.doc("<p>A user-supplied name or description of the <code>MLModel</code>.</p>")
    @as("MLModelName")
    mlmodelName: option<entityName>,
    @ocaml.doc("<p>The ID assigned to the <code>MLModel</code> during creation.</p>")
    @as("MLModelId")
    mlmodelId: entityId,
  }
  @ocaml.doc("<p>Represents the output of an <code>UpdateMLModel</code> operation.</p>
        <p>You can see the updated content by using the <code>GetMLModel</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>The ID assigned to the <code>MLModel</code> during creation.  This value should be identical to the value 
            of the <code>MLModelID</code> in the request.</p>")
    @as("MLModelId")
    mlmodelId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new: request => t = "UpdateMLModelCommand"
  let make = (~mlmodelId, ~scoreThreshold=?, ~mlmodelName=?, ()) =>
    new({scoreThreshold, mlmodelName, mlmodelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateEvaluation = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A new user-supplied name or description of the <code>Evaluation</code> that will replace the current content. </p>"
    )
    @as("EvaluationName")
    evaluationName: entityName,
    @ocaml.doc("<p>The ID assigned to the <code>Evaluation</code> during creation.</p>")
    @as("EvaluationId")
    evaluationId: entityId,
  }
  @ocaml.doc("<p>Represents the output of an <code>UpdateEvaluation</code> operation.</p>
        <p>You can see the updated content by using the <code>GetEvaluation</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>The ID assigned to the <code>Evaluation</code> during creation.  This value should be identical to the value 
            of the <code>Evaluation</code> in the request.</p>")
    @as("EvaluationId")
    evaluationId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new: request => t = "UpdateEvaluationCommand"
  let make = (~evaluationName, ~evaluationId, ()) => new({evaluationName, evaluationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateDataSource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A new user-supplied name or description of the <code>DataSource</code> that will replace the current description. </p>"
    )
    @as("DataSourceName")
    dataSourceName: entityName,
    @ocaml.doc("<p>The ID assigned to the <code>DataSource</code> during creation.</p>")
    @as("DataSourceId")
    dataSourceId: entityId,
  }
  @ocaml.doc("<p>Represents the output of an <code>UpdateDataSource</code> operation.</p>
        <p>You can see the updated content by using the <code>GetBatchPrediction</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>The ID assigned to the <code>DataSource</code> during creation.  This value should be identical to the value 
            of the <code>DataSourceID</code> in the request.</p>")
    @as("DataSourceId")
    dataSourceId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new: request => t = "UpdateDataSourceCommand"
  let make = (~dataSourceName, ~dataSourceId, ()) => new({dataSourceName, dataSourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateBatchPrediction = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A new user-supplied name or description of the <code>BatchPrediction</code>.</p>"
    )
    @as("BatchPredictionName")
    batchPredictionName: entityName,
    @ocaml.doc("<p>The ID assigned to the <code>BatchPrediction</code> during creation.</p>")
    @as("BatchPredictionId")
    batchPredictionId: entityId,
  }
  @ocaml.doc("<p>Represents the output of an <code>UpdateBatchPrediction</code> operation.</p>
        <p>You can see the updated content by using the <code>GetBatchPrediction</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>The ID assigned to the <code>BatchPrediction</code> during creation.  This value should be identical to the value 
            of the <code>BatchPredictionId</code> in the request.</p>")
    @as("BatchPredictionId")
    batchPredictionId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new: request => t = "UpdateBatchPredictionCommand"
  let make = (~batchPredictionName, ~batchPredictionId, ()) =>
    new({batchPredictionName, batchPredictionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetBatchPrediction = {
  type t
  type request = {
    @ocaml.doc("<p>An ID assigned to the <code>BatchPrediction</code> at creation.</p>")
    @as("BatchPredictionId")
    batchPredictionId: entityId,
  }
  @ocaml.doc(
    "<p>Represents the output of a <code>GetBatchPrediction</code> operation and describes a <code>BatchPrediction</code>.</p>"
  )
  type response = {
    @ocaml.doc(
      "<p>The number of invalid records that Amazon Machine Learning saw while processing the <code>BatchPrediction</code>.</p>"
    )
    @as("InvalidRecordCount")
    invalidRecordCount: option<longType>,
    @ocaml.doc(
      "<p>The number of total records that Amazon Machine Learning saw while processing the <code>BatchPrediction</code>.</p>"
    )
    @as("TotalRecordCount")
    totalRecordCount: option<longType>,
    @ocaml.doc(
      "<p>The epoch time when Amazon Machine Learning marked the <code>BatchPrediction</code> as <code>INPROGRESS</code>. <code>StartedAt</code> isn't available if the <code>BatchPrediction</code> is in the <code>PENDING</code> state.</p>"
    )
    @as("StartedAt")
    startedAt: option<epochTime>,
    @ocaml.doc(
      "<p>The epoch time when Amazon Machine Learning marked the <code>BatchPrediction</code> as <code>COMPLETED</code> or <code>FAILED</code>. <code>FinishedAt</code> is only available when the <code>BatchPrediction</code> is in the <code>COMPLETED</code> or <code>FAILED</code> state.</p>"
    )
    @as("FinishedAt")
    finishedAt: option<epochTime>,
    @ocaml.doc(
      "<p>The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the <code>BatchPrediction</code>, normalized and scaled on computation resources. <code>ComputeTime</code> is only available if the <code>BatchPrediction</code> is in the <code>COMPLETED</code> state.</p>"
    )
    @as("ComputeTime")
    computeTime: option<longType>,
    @ocaml.doc(
      "<p>A description of the most recent details about processing the batch prediction request.</p>"
    )
    @as("Message")
    message: option<message>,
    @ocaml.doc(
      "<p>A link to the file that contains logs of the <code>CreateBatchPrediction</code> operation.</p>"
    )
    @as("LogUri")
    logUri: option<presignedS3Url>,
    @ocaml.doc(
      "<p>The location of an Amazon S3 bucket or directory to receive the operation results.</p>"
    )
    @as("OutputUri")
    outputUri: option<s3Url>,
    @ocaml.doc("<p>The status of the <code>BatchPrediction</code>, which can be one of the following values:</p>
        <ul>
            <li>
               <p>
                  <code>PENDING</code> - Amazon Machine Learning (Amazon ML) submitted a request to generate batch predictions.</p>
            </li>
            <li>
               <p>
                  <code>INPROGRESS</code> - The batch predictions are in progress.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - The request to perform a batch prediction did not run to completion. It is not usable.</p>
            </li>
            <li>
               <p>
                  <code>COMPLETED</code> - The batch prediction process completed successfully.</p>
            </li>
            <li>
               <p>
                  <code>DELETED</code> - The <code>BatchPrediction</code> is marked as deleted. It is not usable.</p>
            </li>
         </ul>")
    @as("Status")
    status: option<entityStatus>,
    @ocaml.doc("<p>A user-supplied name or description of the <code>BatchPrediction</code>.</p>")
    @as("Name")
    name: option<entityName>,
    @ocaml.doc(
      "<p>The time of the most recent edit to <code>BatchPrediction</code>. The time is expressed in epoch time.</p>"
    )
    @as("LastUpdatedAt")
    lastUpdatedAt: option<epochTime>,
    @ocaml.doc(
      "<p>The time when the <code>BatchPrediction</code> was created. The time is expressed in epoch time.</p>"
    )
    @as("CreatedAt")
    createdAt: option<epochTime>,
    @ocaml.doc(
      "<p>The AWS user account that invoked the <code>BatchPrediction</code>. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>"
    )
    @as("CreatedByIamUser")
    createdByIamUser: option<awsUserArn>,
    @ocaml.doc(
      "<p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>"
    )
    @as("InputDataLocationS3")
    inputDataLocationS3: option<s3Url>,
    @ocaml.doc("<p>The ID of the <code>DataSource</code> that was used to create the <code>BatchPrediction</code>.
        </p>")
    @as("BatchPredictionDataSourceId")
    batchPredictionDataSourceId: option<entityId>,
    @ocaml.doc(
      "<p>The ID of the <code>MLModel</code> that generated predictions for the <code>BatchPrediction</code> request.</p>"
    )
    @as("MLModelId")
    mlmodelId: option<entityId>,
    @ocaml.doc("<p>An ID assigned to the <code>BatchPrediction</code> at creation. This value should be identical to the value of the <code>BatchPredictionID</code> 
            in the request.</p>")
    @as("BatchPredictionId")
    batchPredictionId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new: request => t = "GetBatchPredictionCommand"
  let make = (~batchPredictionId, ()) => new({batchPredictionId: batchPredictionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteMLModel = {
  type t
  type request = {
    @ocaml.doc("<p>A user-supplied ID that uniquely identifies the <code>MLModel</code>.</p>")
    @as("MLModelId")
    mlmodelId: entityId,
  }
  @ocaml.doc("<p>Represents the output of a <code>DeleteMLModel</code> operation.</p>
        <p>You can use the <code>GetMLModel</code> operation and check the value of the <code>Status</code> parameter to see whether an 
            <code>MLModel</code> is marked as <code>DELETED</code>.</p>")
  type response = {
    @ocaml.doc(
      "<p>A user-supplied ID that uniquely identifies the <code>MLModel</code>. This value should be identical to the value of the <code>MLModelID</code> in the request.</p>"
    )
    @as("MLModelId")
    mlmodelId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new: request => t = "DeleteMLModelCommand"
  let make = (~mlmodelId, ()) => new({mlmodelId: mlmodelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteEvaluation = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A user-supplied ID that uniquely identifies the <code>Evaluation</code> to delete.</p>"
    )
    @as("EvaluationId")
    evaluationId: entityId,
  }
  @ocaml.doc("<p> Represents the output of a <code>DeleteEvaluation</code> operation. The output indicates that Amazon Machine Learning (Amazon ML) received the request.</p>
        <p>You can use the <code>GetEvaluation</code> operation and check the value of the <code>Status</code> parameter to see whether an 
            <code>Evaluation</code> is marked as <code>DELETED</code>.</p>")
  type response = {
    @ocaml.doc(
      "<p>A user-supplied ID that uniquely identifies the <code>Evaluation</code>. This value should be identical to the value of the <code>EvaluationId</code> in the request.</p>"
    )
    @as("EvaluationId")
    evaluationId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new: request => t = "DeleteEvaluationCommand"
  let make = (~evaluationId, ()) => new({evaluationId: evaluationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteDataSource = {
  type t
  type request = {
    @ocaml.doc("<p>A user-supplied ID that uniquely identifies the <code>DataSource</code>.</p>")
    @as("DataSourceId")
    dataSourceId: entityId,
  }
  @ocaml.doc("<p> Represents the output of a <code>DeleteDataSource</code> operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A user-supplied ID that uniquely identifies the <code>DataSource</code>. This value should be identical to the value of the <code>DataSourceID</code> in the request.</p>"
    )
    @as("DataSourceId")
    dataSourceId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new: request => t = "DeleteDataSourceCommand"
  let make = (~dataSourceId, ()) => new({dataSourceId: dataSourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteBatchPrediction = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A user-supplied ID that uniquely identifies the <code>BatchPrediction</code>.</p>"
    )
    @as("BatchPredictionId")
    batchPredictionId: entityId,
  }
  @ocaml.doc("<p> Represents the output of a <code>DeleteBatchPrediction</code> operation.</p>        
        <p>You can use the <code>GetBatchPrediction</code> operation and check the value of the <code>Status</code> parameter to see whether a 
            <code>BatchPrediction</code> is marked as <code>DELETED</code>.</p>")
  type response = {
    @ocaml.doc(
      "<p>A user-supplied ID that uniquely identifies the <code>BatchPrediction</code>. This value should be identical to the value of the <code>BatchPredictionID</code> in the request.</p>"
    )
    @as("BatchPredictionId")
    batchPredictionId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new: request => t = "DeleteBatchPredictionCommand"
  let make = (~batchPredictionId, ()) => new({batchPredictionId: batchPredictionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateEvaluation = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the <code>DataSource</code> for the evaluation. The schema of the <code>DataSource</code> 
            must match the schema used to create the <code>MLModel</code>.</p>")
    @as("EvaluationDataSourceId")
    evaluationDataSourceId: entityId,
    @ocaml.doc("<p>The ID of the <code>MLModel</code> to evaluate.</p> 
        <p>The schema used in creating the <code>MLModel</code> must match the schema of the <code>DataSource</code> used in the <code>Evaluation</code>.</p>")
    @as("MLModelId")
    mlmodelId: entityId,
    @ocaml.doc("<p>A user-supplied name or description of the <code>Evaluation</code>.</p>")
    @as("EvaluationName")
    evaluationName: option<entityName>,
    @ocaml.doc("<p>A user-supplied ID that uniquely identifies the <code>Evaluation</code>.</p>")
    @as("EvaluationId")
    evaluationId: entityId,
  }
  @ocaml.doc("<p> Represents the output of a <code>CreateEvaluation</code> operation, and is an acknowledgement that Amazon ML received the request.</p>
        <p>
            <code>CreateEvaluation</code> operation is asynchronous. You can poll for status updates
          by using the <code>GetEvcaluation</code> operation 
            and checking the <code>Status</code> parameter.
        </p>")
  type response = {
    @ocaml.doc("<p>The user-supplied ID that uniquely identifies the <code>Evaluation</code>. This value should be identical to the value of the 
            <code>EvaluationId</code> in the request.</p>")
    @as("EvaluationId")
    evaluationId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new: request => t = "CreateEvaluationCommand"
  let make = (~evaluationDataSourceId, ~mlmodelId, ~evaluationId, ~evaluationName=?, ()) =>
    new({evaluationDataSourceId, mlmodelId, evaluationName, evaluationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateBatchPrediction = {
  type t
  type request = {
    @ocaml.doc("<p>The location of an Amazon Simple Storage Service (Amazon S3) bucket or directory to store the batch prediction results. The following substrings are not allowed in the <code>s3 key</code> portion of the <code>outputURI</code> field: ':', '//', '/./', '/../'.</p> 
        <p>Amazon ML needs permissions to store and retrieve the logs on your behalf. For information about how to set permissions, see the <a href=\"https://docs.aws.amazon.com/machine-learning/latest/dg\">Amazon Machine Learning Developer Guide</a>.</p>")
    @as("OutputUri")
    outputUri: s3Url,
    @ocaml.doc(
      "<p>The ID of the <code>DataSource</code> that points to the group of observations to predict.</p>"
    )
    @as("BatchPredictionDataSourceId")
    batchPredictionDataSourceId: entityId,
    @ocaml.doc(
      "<p>The ID of the <code>MLModel</code> that will generate predictions for the group of observations. </p>"
    )
    @as("MLModelId")
    mlmodelId: entityId,
    @ocaml.doc(
      "<p>A user-supplied name or description of the <code>BatchPrediction</code>. <code>BatchPredictionName</code> can only use the UTF-8 character set.</p>"
    )
    @as("BatchPredictionName")
    batchPredictionName: option<entityName>,
    @ocaml.doc("<p>A user-supplied ID that uniquely identifies the
                <code>BatchPrediction</code>.</p>")
    @as("BatchPredictionId")
    batchPredictionId: entityId,
  }
  @ocaml.doc("<p> Represents the output of a <code>CreateBatchPrediction</code> operation, and is an acknowledgement that Amazon ML received the request.</p>
         <p>The <code>CreateBatchPrediction</code> operation is asynchronous. You can poll for status updates by using the <code>>GetBatchPrediction</code> 
            operation and checking the <code>Status</code> parameter of the result.
        </p>")
  type response = {
    @ocaml.doc("<p>A user-supplied ID that uniquely identifies the <code>BatchPrediction</code>. This value is identical to the value of the 
            <code>BatchPredictionId</code> in the request.</p>")
    @as("BatchPredictionId")
    batchPredictionId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new: request => t = "CreateBatchPredictionCommand"
  let make = (
    ~outputUri,
    ~batchPredictionDataSourceId,
    ~mlmodelId,
    ~batchPredictionId,
    ~batchPredictionName=?,
    (),
  ) =>
    new({outputUri, batchPredictionDataSourceId, mlmodelId, batchPredictionName, batchPredictionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetMLModel = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies whether the <code>GetMLModel</code> operation should return <code>Recipe</code>.</p>
        <p>If true, <code>Recipe</code> is returned.</p>
        <p>If false, <code>Recipe</code> is not returned.</p>")
    @as("Verbose")
    verbose: option<verbose>,
    @ocaml.doc("<p>The ID assigned to the <code>MLModel</code> at creation.</p>") @as("MLModelId")
    mlmodelId: entityId,
  }
  @ocaml.doc(
    "<p>Represents the output of a <code>GetMLModel</code> operation, and provides detailed information about a <code>MLModel</code>.</p>"
  )
  type response = {
    @ocaml.doc("<p>The schema used by all of the data files referenced by the <code>DataSource</code>.</p>
        <p>
            <b>Note:</b> This parameter is provided as part of the verbose format.</p>")
    @as("Schema")
    schema: option<dataSchema>,
    @ocaml.doc("<p>The recipe to use when training the <code>MLModel</code>. The <code>Recipe</code>
            provides detailed information about the observation data to use during training, and
            manipulations to perform on the observation data during training.</p>
        <p>
            <b>Note:</b> This parameter is provided as part of the verbose format.</p>")
    @as("Recipe")
    recipe: option<recipe>,
    @ocaml.doc(
      "<p>The epoch time when Amazon Machine Learning marked the <code>MLModel</code> as <code>INPROGRESS</code>. <code>StartedAt</code> isn't available if the <code>MLModel</code> is in the <code>PENDING</code> state.</p>"
    )
    @as("StartedAt")
    startedAt: option<epochTime>,
    @ocaml.doc(
      "<p>The epoch time when Amazon Machine Learning marked the <code>MLModel</code> as <code>COMPLETED</code> or <code>FAILED</code>. <code>FinishedAt</code> is only available when the <code>MLModel</code> is in the <code>COMPLETED</code> or <code>FAILED</code> state.</p>"
    )
    @as("FinishedAt")
    finishedAt: option<epochTime>,
    @ocaml.doc(
      "<p>The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the <code>MLModel</code>, normalized and scaled on computation resources. <code>ComputeTime</code> is only available if the <code>MLModel</code> is in the <code>COMPLETED</code> state.</p>"
    )
    @as("ComputeTime")
    computeTime: option<longType>,
    @ocaml.doc(
      "<p>A description of the most recent details about accessing the <code>MLModel</code>.</p>"
    )
    @as("Message")
    message: option<message>,
    @ocaml.doc(
      "<p>A link to the file that contains logs of the <code>CreateMLModel</code> operation.</p>"
    )
    @as("LogUri")
    logUri: option<presignedS3Url>,
    @ocaml.doc(
      "<p>The time of the most recent edit to the <code>ScoreThreshold</code>. The time is expressed in epoch time.</p>"
    )
    @as("ScoreThresholdLastUpdatedAt")
    scoreThresholdLastUpdatedAt: option<epochTime>,
    @ocaml.doc("<p>The scoring threshold is used in binary classification <code>MLModel</code>
            models. It marks the boundary between a positive prediction and a
            negative prediction.</p>
        <p>Output values greater than or equal to the threshold receive a positive result from the MLModel, such as 
            <code>true</code>. Output values less than the threshold receive a negative response from the MLModel, 
            such as <code>false</code>.</p>")
    @as("ScoreThreshold")
    scoreThreshold: option<scoreThreshold>,
    @ocaml.doc("<p>Identifies the <code>MLModel</code> category. The following are the available types: </p>
        <ul>
            <li>
               <p>REGRESSION -- Produces a numeric result. For example, \"What price should a house be listed at?\"</p>
            </li>
            <li>
               <p>BINARY -- Produces one of two possible results. For example, \"Is this an e-commerce website?\"</p>
            </li>
            <li>
               <p>MULTICLASS -- Produces one of several possible results. For example, \"Is this a HIGH, LOW or MEDIUM risk trade?\"</p>
            </li>
         </ul>")
    @as("MLModelType")
    mlmodelType: option<mlmodelType>,
    @ocaml.doc(
      "<p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>"
    )
    @as("InputDataLocationS3")
    inputDataLocationS3: option<s3Url>,
    @ocaml.doc("<p>A list of the training parameters in the <code>MLModel</code>. The list is implemented as
            a map of key-value pairs.</p>
        <p>The following is the current set of training parameters:</p>
        <ul>
            <li>
               <p>
                  <code>sgd.maxMLModelSizeInBytes</code> - The maximum allowed size of the model. Depending on the
                    input data, the size of the model might affect its performance.</p> 
                <p> The value is an integer that ranges from <code>100000</code> to <code>2147483648</code>. The default value is <code>33554432</code>.</p>
            </li>
            <li>
               <p>
                  <code>sgd.maxPasses</code> - The number of times that the training process traverses the
                    observations to build the <code>MLModel</code>. The value is an integer that
                    ranges from <code>1</code> to <code>10000</code>. The default value is
                        <code>10</code>.</p>
            </li>
            <li>
               <p>
                  <code>sgd.shuffleType</code> - Whether Amazon ML shuffles the training data. Shuffling data improves a
                    model's ability to find the optimal solution for a variety of data types. The
                    valid values are <code>auto</code> and <code>none</code>. The default value is
                        <code>none</code>. We strongly recommend that you shuffle your data.</p>
            </li>
            <li>
               <p>
                  <code>sgd.l1RegularizationAmount</code> - The coefficient regularization L1 norm. It controls
                    overfitting the data by penalizing large coefficients. This tends to drive
                    coefficients to zero, resulting in a sparse feature set. If you use this
                    parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p>
                <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>.
                    The default is to not use L1 normalization. This parameter can't be used when
                        <code>L2</code> is specified. Use this parameter sparingly.</p>
            </li>
            <li>
               <p>
                  <code>sgd.l2RegularizationAmount</code> - The coefficient regularization L2 norm. It controls
                    overfitting the data by penalizing large coefficients. This tends to drive
                    coefficients to small, nonzero values. If you use this parameter, start by
                    specifying a small value, such as <code>1.0E-08</code>.</p>
                <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>.
                    The default is to not use L2 normalization. This parameter can't be used when
                        <code>L1</code> is specified. Use this parameter sparingly.</p>
            </li>
         </ul>")
    @as("TrainingParameters")
    trainingParameters: option<trainingParameters>,
    @ocaml.doc("<p>The current endpoint of the <code>MLModel</code>
         </p>")
    @as("EndpointInfo")
    endpointInfo: option<realtimeEndpointInfo>,
    @as("SizeInBytes") sizeInBytes: option<longType>,
    @ocaml.doc("<p>The current status of the <code>MLModel</code>. This element can have one of the following values:</p>
        <ul>
            <li>
               <p>
                  <code>PENDING</code> - Amazon Machine Learning (Amazon ML) submitted a request to describe a <code>MLModel</code>.</p>
            </li>
            <li>
               <p>
                  <code>INPROGRESS</code> - The request is processing.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - The request did not run to completion. The ML model isn't
                usable.</p>
            </li>
            <li>
               <p>
                  <code>COMPLETED</code> - The request completed successfully.</p>
            </li>
            <li>
               <p>
                  <code>DELETED</code> - The <code>MLModel</code> is marked as deleted. It isn't
                usable.</p>
            </li>
         </ul>")
    @as("Status")
    status: option<entityStatus>,
    @ocaml.doc("<p>A user-supplied name or description of the <code>MLModel</code>.</p>")
    @as("Name")
    name: option<mlmodelName>,
    @ocaml.doc(
      "<p>The time of the most recent edit to the <code>MLModel</code>. The time is expressed in epoch time.</p>"
    )
    @as("LastUpdatedAt")
    lastUpdatedAt: option<epochTime>,
    @ocaml.doc(
      "<p>The time that the <code>MLModel</code> was created. The time is expressed in epoch time.</p>"
    )
    @as("CreatedAt")
    createdAt: option<epochTime>,
    @ocaml.doc(
      "<p>The AWS user account from which the <code>MLModel</code> was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>"
    )
    @as("CreatedByIamUser")
    createdByIamUser: option<awsUserArn>,
    @ocaml.doc("<p>The ID of the training <code>DataSource</code>.</p>") @as("TrainingDataSourceId")
    trainingDataSourceId: option<entityId>,
    @ocaml.doc("<p>The MLModel ID, 
            which is same as the <code>MLModelId</code> in the request.</p>")
    @as("MLModelId")
    mlmodelId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new external new: request => t = "GetMLModelCommand"
  let make = (~mlmodelId, ~verbose=?, ()) => new({verbose, mlmodelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteTags = {
  type t
  type request = {
    @ocaml.doc("<p>The type of the tagged ML object.</p>") @as("ResourceType")
    resourceType: taggableResourceType,
    @ocaml.doc("<p>The ID of the tagged ML object. For example, <code>exampleModelId</code>.</p>")
    @as("ResourceId")
    resourceId: entityId,
    @ocaml.doc("<p>One or more tags to delete.</p>") @as("TagKeys") tagKeys: tagKeyList,
  }
  @ocaml.doc("<p>Amazon ML returns the following elements.</p>")
  type response = {
    @ocaml.doc("<p>The type of the ML object from which tags were deleted.</p>") @as("ResourceType")
    resourceType: option<taggableResourceType>,
    @ocaml.doc("<p>The ID of the ML object from which tags were deleted.</p>") @as("ResourceId")
    resourceId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new external new: request => t = "DeleteTagsCommand"
  let make = (~resourceType, ~resourceId, ~tagKeys, ()) => new({resourceType, resourceId, tagKeys})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteRealtimeEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The ID assigned to the <code>MLModel</code> during creation.</p>")
    @as("MLModelId")
    mlmodelId: entityId,
  }
  @ocaml.doc("<p>Represents the output of an <code>DeleteRealtimeEndpoint</code> operation.</p>
        <p>The result contains the <code>MLModelId</code> and the endpoint information for the <code>MLModel</code>. </p>")
  type response = {
    @ocaml.doc("<p>The endpoint information of the <code>MLModel</code> 
         </p>")
    @as("RealtimeEndpointInfo")
    realtimeEndpointInfo: option<realtimeEndpointInfo>,
    @ocaml.doc("<p>A user-supplied ID that uniquely identifies the <code>MLModel</code>. This value should be identical to the value of the 
            <code>MLModelId</code> in the request.</p>")
    @as("MLModelId")
    mlmodelId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new: request => t = "DeleteRealtimeEndpointCommand"
  let make = (~mlmodelId, ()) => new({mlmodelId: mlmodelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateRealtimeEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The ID assigned to the <code>MLModel</code> during creation.</p>")
    @as("MLModelId")
    mlmodelId: entityId,
  }
  @ocaml.doc("<p>Represents the output of an <code>CreateRealtimeEndpoint</code> operation.</p>
        <p>The result contains the <code>MLModelId</code> and the endpoint information for the <code>MLModel</code>.</p>
        <p>
            <b>Note:</b> The endpoint information includes the URI of the <code>MLModel</code>; that is, the location to send online prediction requests for the specified <code>MLModel</code>.</p>")
  type response = {
    @ocaml.doc("<p>The endpoint information of the <code>MLModel</code> 
         </p>")
    @as("RealtimeEndpointInfo")
    realtimeEndpointInfo: option<realtimeEndpointInfo>,
    @ocaml.doc("<p>A user-supplied ID that uniquely identifies the <code>MLModel</code>. This value should be identical to the value of the 
            <code>MLModelId</code> in the request.</p>")
    @as("MLModelId")
    mlmodelId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new: request => t = "CreateRealtimeEndpointCommand"
  let make = (~mlmodelId, ()) => new({mlmodelId: mlmodelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateMLModel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Simple Storage Service (Amazon S3) location and file name that contains the <code>MLModel</code> recipe. You must specify either the recipe or its URI. If you don't specify a recipe or its URI, Amazon ML creates a default.</p>"
    )
    @as("RecipeUri")
    recipeUri: option<s3Url>,
    @ocaml.doc("<p>The data recipe for creating the <code>MLModel</code>. You must specify either the recipe
            or its URI. If you don't specify a recipe or its URI, Amazon ML creates a default.</p>")
    @as("Recipe")
    recipe: option<recipe>,
    @ocaml.doc("<p>The <code>DataSource</code> that points to the training data.</p>")
    @as("TrainingDataSourceId")
    trainingDataSourceId: entityId,
    @ocaml.doc("<p>A list of the training parameters in the <code>MLModel</code>. The list is implemented as
            a map of key-value pairs.</p>
        <p>The following is the current set of training parameters:</p>
        <ul>
            <li>
               <p>
                  <code>sgd.maxMLModelSizeInBytes</code> - The maximum allowed size of the model. Depending on the
                    input data, the size of the model might affect its performance.</p> 
                <p> The value is an integer that ranges from <code>100000</code> to <code>2147483648</code>. The default value is <code>33554432</code>.</p>
            </li>
            <li>
               <p>
                  <code>sgd.maxPasses</code> - The number of times that the training process traverses the
                    observations to build the <code>MLModel</code>. The value is an integer that
                    ranges from <code>1</code> to <code>10000</code>. The default value is
                        <code>10</code>.</p>
            </li>
            <li>
                <p>
                  <code>sgd.shuffleType</code> - Whether Amazon ML shuffles the training data. Shuffling
                    the data improves a model's ability to find the optimal solution for a variety
                    of data types. The valid values are <code>auto</code> and <code>none</code>. The
                    default value is <code>none</code>. We strongly recommend that you shuffle your data.</p>
            </li>
            <li>
               <p>
                  <code>sgd.l1RegularizationAmount</code> - The coefficient regularization L1 norm. It controls
                    overfitting the data by penalizing large coefficients. This tends to drive
                    coefficients to zero, resulting in a sparse feature set. If you use this
                    parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p>
                <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>.
                    The default is to not use L1 normalization. This parameter can't be used when
                        <code>L2</code> is specified. Use this parameter sparingly.</p>
            </li>
            <li>
               <p>
                  <code>sgd.l2RegularizationAmount</code> - The coefficient regularization L2 norm. It controls
                    overfitting the data by penalizing large coefficients. This tends to drive
                    coefficients to small, nonzero values. If you use this parameter, start by
                    specifying a small value, such as <code>1.0E-08</code>.</p>
                <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>.
                    The default is to not use L2 normalization. This parameter can't be used when
                        <code>L1</code> is specified. Use this parameter sparingly.</p>
            </li>
         </ul>")
    @as("Parameters")
    parameters: option<trainingParameters>,
    @ocaml.doc("<p>The category of supervised learning that this <code>MLModel</code> will address. Choose from the following types:</p>
         <ul>
            <li>
               <p>Choose <code>REGRESSION</code> if the <code>MLModel</code> will be used to predict a numeric value.</p>
            </li>
            <li>
               <p>Choose <code>BINARY</code> if the <code>MLModel</code> result has two possible values.</p>
            </li>
            <li>
               <p>Choose <code>MULTICLASS</code> if the <code>MLModel</code> result has a limited number of values.</p> 
            </li>
         </ul>
        <p> For more information, see the <a href=\"https://docs.aws.amazon.com/machine-learning/latest/dg\">Amazon Machine Learning Developer Guide</a>.</p>")
    @as("MLModelType")
    mlmodelType: mlmodelType,
    @ocaml.doc("<p>A user-supplied name or description of the <code>MLModel</code>.</p>")
    @as("MLModelName")
    mlmodelName: option<entityName>,
    @ocaml.doc("<p>A user-supplied ID that uniquely identifies the <code>MLModel</code>.</p>")
    @as("MLModelId")
    mlmodelId: entityId,
  }
  @ocaml.doc("<p> Represents the output of a <code>CreateMLModel</code> operation, and is an acknowledgement that Amazon ML received the request.</p>
        <p>The <code>CreateMLModel</code> operation is asynchronous. You can poll for status updates by using the 
            <code>GetMLModel</code> operation and checking the <code>Status</code> parameter.
        </p>")
  type response = {
    @ocaml.doc("<p>A user-supplied ID that uniquely identifies the <code>MLModel</code>. This value should be identical to the value of the 
            <code>MLModelId</code> in the request.
        </p>")
    @as("MLModelId")
    mlmodelId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new: request => t = "CreateMLModelCommand"
  let make = (
    ~trainingDataSourceId,
    ~mlmodelType,
    ~mlmodelId,
    ~recipeUri=?,
    ~recipe=?,
    ~parameters=?,
    ~mlmodelName=?,
    (),
  ) =>
    new({recipeUri, recipe, trainingDataSourceId, parameters, mlmodelType, mlmodelName, mlmodelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateDataSourceFromS3 = {
  type t
  type request = {
    @ocaml.doc("<p>The compute statistics for a <code>DataSource</code>. The statistics are generated from the observation data referenced by 
            a <code>DataSource</code>. Amazon ML uses the statistics internally during <code>MLModel</code> training.
            This parameter must be set to <code>true</code> if the <code></code>DataSource<code></code> needs to be used for <code>MLModel</code> training.</p>")
    @as("ComputeStatistics")
    computeStatistics: option<computeStatistics>,
    @ocaml.doc("<p>The data specification of a <code>DataSource</code>:</p>
        <ul>
            <li>
               <p>DataLocationS3 - The Amazon S3 location of the observation data.</p>
            </li>
            <li>
               <p>DataSchemaLocationS3 - The Amazon S3 location of the <code>DataSchema</code>.</p>
            </li>
            <li>
               <p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p>
            </li>
            <li>
               <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>Datasource</code>. </p>
               <p> Sample - 
            <code> \"{\\\"splitting\\\":{\\\"percentBegin\\\":10,\\\"percentEnd\\\":60}}\"</code>
               </p>
            </li>
         </ul>")
    @as("DataSpec")
    dataSpec: s3DataSpec,
    @ocaml.doc("<p>A user-supplied name or description of the <code>DataSource</code>. </p>")
    @as("DataSourceName")
    dataSourceName: option<entityName>,
    @ocaml.doc(
      "<p>A user-supplied identifier that uniquely identifies the <code>DataSource</code>. </p>"
    )
    @as("DataSourceId")
    dataSourceId: entityId,
  }
  @ocaml.doc("<p> Represents the output of a <code>CreateDataSourceFromS3</code> operation, and is an acknowledgement that Amazon ML received the request.</p>
        <p>The <code>CreateDataSourceFromS3</code> operation is asynchronous. You can poll for updates by using
            the <code>GetBatchPrediction</code> operation and checking the <code>Status</code> parameter. </p>")
  type response = {
    @ocaml.doc("<p>A user-supplied ID that uniquely identifies the <code>DataSource</code>. This value should be identical to the value of the 
            <code>DataSourceID</code> in the request.
        </p>")
    @as("DataSourceId")
    dataSourceId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new: request => t = "CreateDataSourceFromS3Command"
  let make = (~dataSpec, ~dataSourceId, ~computeStatistics=?, ~dataSourceName=?, ()) =>
    new({computeStatistics, dataSpec, dataSourceName, dataSourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module Predict = {
  type t
  type request = {
    @as("PredictEndpoint") predictEndpoint: vipURL,
    @as("Record") record: record,
    @ocaml.doc("<p>A unique identifier of the <code>MLModel</code>.</p>") @as("MLModelId")
    mlmodelId: entityId,
  }
  type response = {@as("Prediction") prediction: option<prediction>}
  @module("@aws-sdk/client-machinelearning") @new external new: request => t = "PredictCommand"
  let make = (~predictEndpoint, ~record, ~mlmodelId, ()) =>
    new({predictEndpoint, record, mlmodelId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetEvaluation = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the <code>Evaluation</code> to retrieve. The evaluation of each <code>MLModel</code> is recorded and cataloged. The ID provides the means to access the information. </p>"
    )
    @as("EvaluationId")
    evaluationId: entityId,
  }
  @ocaml.doc(
    "<p>Represents the output of a <code>GetEvaluation</code> operation and describes an <code>Evaluation</code>.</p>"
  )
  type response = {
    @ocaml.doc(
      "<p>The epoch time when Amazon Machine Learning marked the <code>Evaluation</code> as <code>INPROGRESS</code>. <code>StartedAt</code> isn't available if the <code>Evaluation</code> is in the <code>PENDING</code> state.</p>"
    )
    @as("StartedAt")
    startedAt: option<epochTime>,
    @ocaml.doc(
      "<p>The epoch time when Amazon Machine Learning marked the <code>Evaluation</code> as <code>COMPLETED</code> or <code>FAILED</code>. <code>FinishedAt</code> is only available when the <code>Evaluation</code> is in the <code>COMPLETED</code> or <code>FAILED</code> state.</p>"
    )
    @as("FinishedAt")
    finishedAt: option<epochTime>,
    @ocaml.doc(
      "<p>The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the <code>Evaluation</code>, normalized and scaled on computation resources. <code>ComputeTime</code> is only available if the <code>Evaluation</code> is in the <code>COMPLETED</code> state.</p>"
    )
    @as("ComputeTime")
    computeTime: option<longType>,
    @ocaml.doc(
      "<p>A description of the most recent details about evaluating the <code>MLModel</code>.</p>"
    )
    @as("Message")
    message: option<message>,
    @ocaml.doc(
      "<p>A link to the file that contains logs of the <code>CreateEvaluation</code> operation.</p>"
    )
    @as("LogUri")
    logUri: option<presignedS3Url>,
    @ocaml.doc("<p>Measurements of how well the <code>MLModel</code> performed using observations referenced by the <code>DataSource</code>. One of the following metric is returned based on the type of the <code>MLModel</code>: 
        </p>
        <ul>
            <li>
               <p>BinaryAUC: A binary <code>MLModel</code> uses the Area Under the Curve (AUC) technique to measure performance. </p>
            </li>
            <li>
               <p>RegressionRMSE: A regression <code>MLModel</code> uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.</p> 
            </li>
            <li>
               <p>MulticlassAvgFScore: A multiclass <code>MLModel</code> uses the F1 score technique to measure performance. </p>
            </li>
         </ul>
        <p>
                        For more information about performance metrics, please see the <a href=\"https://docs.aws.amazon.com/machine-learning/latest/dg\">Amazon Machine Learning Developer Guide</a>.
        </p>")
    @as("PerformanceMetrics")
    performanceMetrics: option<performanceMetrics>,
    @ocaml.doc("<p>The status of the evaluation. This element can have one of the following values:</p>
        <ul>
            <li>
               <p>
                  <code>PENDING</code> - Amazon Machine Language (Amazon ML) submitted a request to evaluate an <code>MLModel</code>.</p>
            </li>
            <li>
               <p>
                  <code>INPROGRESS</code> - The evaluation is underway.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - The request to evaluate an <code>MLModel</code> did not run to completion. It is not usable.</p>
            </li>
            <li>
               <p>
                  <code>COMPLETED</code> - The evaluation process completed successfully.</p>
            </li>
            <li>
               <p>
                  <code>DELETED</code> - The <code>Evaluation</code> is marked as deleted. It is not usable.</p>
            </li>
         </ul>")
    @as("Status")
    status: option<entityStatus>,
    @ocaml.doc("<p>A user-supplied name or description of the <code>Evaluation</code>. </p>")
    @as("Name")
    name: option<entityName>,
    @ocaml.doc(
      "<p>The time of the most recent edit to the <code>Evaluation</code>. The time is expressed in epoch time.</p>"
    )
    @as("LastUpdatedAt")
    lastUpdatedAt: option<epochTime>,
    @ocaml.doc(
      "<p>The time that the <code>Evaluation</code> was created. The time is expressed in epoch time.</p>"
    )
    @as("CreatedAt")
    createdAt: option<epochTime>,
    @ocaml.doc(
      "<p>The AWS user account that invoked the evaluation. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>"
    )
    @as("CreatedByIamUser")
    createdByIamUser: option<awsUserArn>,
    @ocaml.doc(
      "<p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>"
    )
    @as("InputDataLocationS3")
    inputDataLocationS3: option<s3Url>,
    @ocaml.doc("<p>The <code>DataSource</code> used for this evaluation.</p>")
    @as("EvaluationDataSourceId")
    evaluationDataSourceId: option<entityId>,
    @ocaml.doc("<p>The ID of the <code>MLModel</code> that was the focus of the evaluation.</p>")
    @as("MLModelId")
    mlmodelId: option<entityId>,
    @ocaml.doc(
      "<p>The evaluation ID which is same as the <code>EvaluationId</code> in the request.</p>"
    )
    @as("EvaluationId")
    evaluationId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new: request => t = "GetEvaluationCommand"
  let make = (~evaluationId, ()) => new({evaluationId: evaluationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDataSource = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies whether the <code>GetDataSource</code> operation should return <code>DataSourceSchema</code>.</p>
        <p>If true, <code>DataSourceSchema</code> is returned.</p>
        <p>If false, <code>DataSourceSchema</code> is not returned.</p>")
    @as("Verbose")
    verbose: option<verbose>,
    @ocaml.doc("<p>The ID assigned to the <code>DataSource</code> at creation.</p>")
    @as("DataSourceId")
    dataSourceId: entityId,
  }
  @ocaml.doc(
    "<p>Represents the output of a <code>GetDataSource</code> operation and describes a <code>DataSource</code>.</p>"
  )
  type response = {
    @ocaml.doc("<p>The schema used by all of the data files of this <code>DataSource</code>.</p>
        <p>
            <b>Note:</b> This parameter is provided as part of the verbose format.</p>")
    @as("DataSourceSchema")
    dataSourceSchema: option<dataSchema>,
    @ocaml.doc(
      "<p>The epoch time when Amazon Machine Learning marked the <code>DataSource</code> as <code>INPROGRESS</code>. <code>StartedAt</code> isn't available if the <code>DataSource</code> is in the <code>PENDING</code> state.</p>"
    )
    @as("StartedAt")
    startedAt: option<epochTime>,
    @ocaml.doc(
      "<p>The epoch time when Amazon Machine Learning marked the <code>DataSource</code> as <code>COMPLETED</code> or <code>FAILED</code>. <code>FinishedAt</code> is only available when the <code>DataSource</code> is in the <code>COMPLETED</code> or <code>FAILED</code> state.</p>"
    )
    @as("FinishedAt")
    finishedAt: option<epochTime>,
    @ocaml.doc(
      "<p>The approximate CPU time in milliseconds that Amazon Machine Learning spent processing the <code>DataSource</code>, normalized and scaled on computation resources. <code>ComputeTime</code> is only available if the <code>DataSource</code> is in the <code>COMPLETED</code> state and the <code>ComputeStatistics</code> is set to true.</p>"
    )
    @as("ComputeTime")
    computeTime: option<longType>,
    @ocaml.doc("<p>
            The parameter is <code>true</code> if statistics need to be generated from the observation data.
        </p>")
    @as("ComputeStatistics")
    computeStatistics: option<computeStatistics>,
    @as("RoleARN") roleARN: option<roleARN>,
    @as("RDSMetadata") rdsmetadata: option<rdsmetadata>,
    @as("RedshiftMetadata") redshiftMetadata: option<redshiftMetadata>,
    @ocaml.doc(
      "<p>The user-supplied description of the most recent details about creating the <code>DataSource</code>.</p>"
    )
    @as("Message")
    message: option<message>,
    @ocaml.doc(
      "<p>A link to the file containing logs of <code>CreateDataSourceFrom*</code> operations.</p>"
    )
    @as("LogUri")
    logUri: option<presignedS3Url>,
    @ocaml.doc("<p>The current status of the <code>DataSource</code>. This element can have one of the following values:</p>
        <ul>
            <li>
               <p>
                  <code>PENDING</code> - Amazon ML submitted a request to create a <code>DataSource</code>.</p>
            </li>
            <li>
               <p>
                  <code>INPROGRESS</code> - The creation process is underway.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - The request to create a <code>DataSource</code> did not run to completion. It is not usable.</p>
            </li>
            <li>
               <p>
                  <code>COMPLETED</code> - The creation process completed successfully.</p>
            </li>
            <li>
               <p>
                  <code>DELETED</code> - The <code>DataSource</code> is marked as deleted. It is not usable.</p>
            </li>
         </ul>")
    @as("Status")
    status: option<entityStatus>,
    @ocaml.doc("<p>A user-supplied name or description of the <code>DataSource</code>.</p>")
    @as("Name")
    name: option<entityName>,
    @ocaml.doc("<p>The number of data files referenced by the <code>DataSource</code>.</p>")
    @as("NumberOfFiles")
    numberOfFiles: option<longType>,
    @ocaml.doc("<p>The total size of observations in the data files.</p>") @as("DataSizeInBytes")
    dataSizeInBytes: option<longType>,
    @ocaml.doc(
      "<p>The time of the most recent edit to the <code>DataSource</code>. The time is expressed in epoch time.</p>"
    )
    @as("LastUpdatedAt")
    lastUpdatedAt: option<epochTime>,
    @ocaml.doc(
      "<p>The time that the <code>DataSource</code> was created. The time is expressed in epoch time.</p>"
    )
    @as("CreatedAt")
    createdAt: option<epochTime>,
    @ocaml.doc(
      "<p>The AWS user account from which the <code>DataSource</code> was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>"
    )
    @as("CreatedByIamUser")
    createdByIamUser: option<awsUserArn>,
    @ocaml.doc("<p>A JSON string that represents the splitting and rearrangement requirement used when this <code>DataSource</code>
            was created.</p>")
    @as("DataRearrangement")
    dataRearrangement: option<dataRearrangement>,
    @ocaml.doc(
      "<p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>"
    )
    @as("DataLocationS3")
    dataLocationS3: option<s3Url>,
    @ocaml.doc(
      "<p>The ID assigned to the <code>DataSource</code> at creation.  This value should be identical to the value of the <code>DataSourceId</code> in the request.</p>"
    )
    @as("DataSourceId")
    dataSourceId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new: request => t = "GetDataSourceCommand"
  let make = (~dataSourceId, ~verbose=?, ()) => new({verbose, dataSourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeTags = {
  type t
  type request = {
    @ocaml.doc("<p>The type of the ML object.</p>") @as("ResourceType")
    resourceType: taggableResourceType,
    @ocaml.doc("<p>The ID of the ML object. For example, <code>exampleModelId</code>. </p>")
    @as("ResourceId")
    resourceId: entityId,
  }
  @ocaml.doc("<p>Amazon ML returns the following elements.</p>")
  type response = {
    @ocaml.doc("<p>A list of tags associated with the ML object.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The type of the tagged ML object.</p>") @as("ResourceType")
    resourceType: option<taggableResourceType>,
    @ocaml.doc("<p>The ID of the tagged ML object.</p>") @as("ResourceId")
    resourceId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new external new: request => t = "DescribeTagsCommand"
  let make = (~resourceType, ~resourceId, ()) => new({resourceType, resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeBatchPredictions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The number of pages of information to include in the result. The range of acceptable values is <code>1</code> through <code>100</code>. The default value is <code>100</code>.</p>"
    )
    @as("Limit")
    limit: option<pageLimit>,
    @ocaml.doc("<p>An ID of the page in the paginated results.</p>") @as("NextToken")
    nextToken: option<stringType>,
    @ocaml.doc("<p>A two-value parameter that determines the sequence of the resulting list of <code>MLModel</code>s.</p>
        <ul>
            <li>
               <p>
                  <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</p>
            </li>
            <li>
               <p>
                  <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</p>
            </li>
         </ul>
        <p>Results are sorted by <code>FilterVariable</code>.</p>")
    @as("SortOrder")
    sortOrder: option<sortOrder>,
    @ocaml.doc("<p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> 
        <p>For example, a <code>Batch Prediction</code> operation could have the <code>Name</code> 
            <code>2014-09-09-HolidayGiftMailer</code>. To search for 
            this <code>BatchPrediction</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the 
            <code>Prefix</code>:
        </p>
        
        <ul>
            <li>
               <p>2014-09</p>
            </li>
            <li>
               <p>2014-09-09</p>
            </li>
            <li>
               <p>2014-09-09-Holiday</p>
            </li>
         </ul>")
    @as("Prefix")
    prefix: option<comparatorValue>,
    @ocaml.doc(
      "<p>The not equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>"
    )
    @as("NE")
    ne: option<comparatorValue>,
    @ocaml.doc(
      "<p>The less than or equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>"
    )
    @as("LE")
    le: option<comparatorValue>,
    @ocaml.doc("<p>The greater than or equal to operator. The <code>BatchPrediction</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>.
        </p>")
    @as("GE")
    ge: option<comparatorValue>,
    @ocaml.doc("<p>The less than operator. The <code>BatchPrediction</code> results will 
            have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>")
    @as("LT")
    lt: option<comparatorValue>,
    @ocaml.doc("<p>The greater than operator. The <code>BatchPrediction</code> results will 
            have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>")
    @as("GT")
    gt: option<comparatorValue>,
    @ocaml.doc("<p>The equal to operator. The <code>BatchPrediction</code> results will have 
            <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>")
    @as("EQ")
    eq: option<comparatorValue>,
    @ocaml.doc("<p>Use one of the following variables to filter a list of <code>BatchPrediction</code>:</p>
        <ul>
            <li>
               <p>
                  <code>CreatedAt</code> - Sets the search criteria to the <code>BatchPrediction</code> creation date.</p>
            </li>
            <li>
               <p>
                  <code>Status</code> - Sets the search criteria to the <code>BatchPrediction</code> status.</p>
            </li>
            <li>
               <p>
                  <code>Name</code> - Sets the search criteria to the contents of the <code>BatchPrediction</code>
                  <b> </b> 
                  <code>Name</code>.</p>
            </li>
            <li>
               <p>
                  <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>BatchPrediction</code> creation.</p>
            </li>
            <li>
               <p>
                  <code>MLModelId</code> - Sets the search criteria to the <code>MLModel</code> used in the <code>BatchPrediction</code>.</p>
            </li>
            <li>
               <p>
                  <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in the <code>BatchPrediction</code>.</p>
            </li>
            <li>
               <p>
                  <code>DataURI</code> - Sets the search criteria to the data file(s) used in the <code>BatchPrediction</code>. The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.</p>
            </li>
         </ul>")
    @as("FilterVariable")
    filterVariable: option<batchPredictionFilterVariable>,
  }
  @ocaml.doc(
    "<p>Represents the output of a <code>DescribeBatchPredictions</code> operation. The content is essentially a list of <code>BatchPrediction</code>s.</p>"
  )
  type response = {
    @ocaml.doc(
      "<p>The ID of the next page in the paginated results that indicates at least one more page follows.</p>"
    )
    @as("NextToken")
    nextToken: option<stringType>,
    @ocaml.doc("<p>A list of <code>BatchPrediction</code> objects that meet the search criteria.
        </p>")
    @as("Results")
    results: option<batchPredictions>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new: request => t = "DescribeBatchPredictionsCommand"
  let make = (
    ~limit=?,
    ~nextToken=?,
    ~sortOrder=?,
    ~prefix=?,
    ~ne=?,
    ~le=?,
    ~ge=?,
    ~lt=?,
    ~gt=?,
    ~eq=?,
    ~filterVariable=?,
    (),
  ) => new({limit, nextToken, sortOrder, prefix, ne, le, ge, lt, gt, eq, filterVariable})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateDataSourceFromRedshift = {
  type t
  type request = {
    @ocaml.doc("<p>The compute statistics for a <code>DataSource</code>. The statistics are generated from the observation data referenced by 
            a <code>DataSource</code>. Amazon ML uses the statistics internally during <code>MLModel</code> training.
           This parameter must be set to <code>true</code> if the <code>DataSource</code> needs to
          be used for <code>MLModel</code> training.</p>")
    @as("ComputeStatistics")
    computeStatistics: option<computeStatistics>,
    @ocaml.doc("<p>A fully specified role Amazon Resource Name (ARN). Amazon ML assumes the role on behalf of the user to create the following:</p>
        
           <ul>
            <li>
               <p>A security group to allow Amazon ML to execute the <code>SelectSqlQuery</code> query on an Amazon Redshift cluster</p>
            </li>
            <li>
               <p>An Amazon S3 bucket policy to grant Amazon ML read/write permissions on the <code>S3StagingLocation</code>
               </p>
            </li>
         </ul>")
    @as("RoleARN")
    roleARN: roleARN,
    @ocaml.doc("<p>The data specification of an Amazon Redshift <code>DataSource</code>:</p>
        <ul>
            <li>
               <p>DatabaseInformation -</p> 
               <ul>
                  <li>
                     <p>
                        <code>DatabaseName</code> - The name of the Amazon Redshift database.</p>
                  </li>
                  <li>
                     <p>
                        <code> ClusterIdentifier</code> - The unique ID for the Amazon Redshift cluster.</p>
                  </li>
               </ul>
            </li>
            <li>
               <p>DatabaseCredentials - The AWS Identity and Access Management (IAM) credentials that are used to connect to the Amazon Redshift database.</p>
            </li>
            <li>
               <p>SelectSqlQuery - The query that is used to retrieve the observation data for the 
			<code>Datasource</code>.</p>
            </li>
            <li>
               <p>S3StagingLocation - The Amazon Simple Storage Service (Amazon S3) location for staging Amazon
                    Redshift data. The data retrieved from Amazon Redshift using
                        the <code>SelectSqlQuery</code> query is stored in this location.</p>
            </li>
            <li>
               <p>DataSchemaUri - The Amazon S3 location of the <code>DataSchema</code>.</p>
            </li>
            <li>
               <p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p>
            </li>
            <li>
               <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>DataSource</code>.</p>
               <p> Sample - 
            <code> \"{\\\"splitting\\\":{\\\"percentBegin\\\":10,\\\"percentEnd\\\":60}}\"</code>
               </p>
            </li>
         </ul>")
    @as("DataSpec")
    dataSpec: redshiftDataSpec,
    @ocaml.doc("<p>A user-supplied name or description of the <code>DataSource</code>. </p>")
    @as("DataSourceName")
    dataSourceName: option<entityName>,
    @ocaml.doc("<p>A user-supplied ID that uniquely identifies the <code>DataSource</code>.</p>")
    @as("DataSourceId")
    dataSourceId: entityId,
  }
  @ocaml.doc("<p> Represents the output of a <code>CreateDataSourceFromRedshift</code> operation, and is an acknowledgement that Amazon ML received the request.</p>
         <p>The <code>CreateDataSourceFromRedshift</code> operation is asynchronous. You can poll for updates by using
        the <code>GetBatchPrediction</code> operation and checking the <code>Status</code> parameter. </p>")
  type response = {
    @ocaml.doc("<p>A user-supplied ID that uniquely identifies the datasource. This value should be identical to the value of the 
            <code>DataSourceID</code> in the request.
        </p>")
    @as("DataSourceId")
    dataSourceId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new: request => t = "CreateDataSourceFromRedshiftCommand"
  let make = (~roleARN, ~dataSpec, ~dataSourceId, ~computeStatistics=?, ~dataSourceName=?, ()) =>
    new({computeStatistics, roleARN, dataSpec, dataSourceName, dataSourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateDataSourceFromRDS = {
  type t
  type request = {
    @ocaml.doc("<p>The compute statistics for a <code>DataSource</code>. The statistics are generated from the observation data referenced by 
            a <code>DataSource</code>. Amazon ML uses the statistics internally during <code>MLModel</code> training.
            This parameter must be set to <code>true</code> if the <code></code>DataSource<code></code> needs to be used for <code>MLModel</code> training.
            </p>")
    @as("ComputeStatistics")
    computeStatistics: option<computeStatistics>,
    @ocaml.doc("<p>The role that Amazon ML assumes on behalf of the user to create and activate a data
          pipeline in the user's account and copy data using the <code>SelectSqlQuery</code> query from Amazon RDS to Amazon S3.</p>
        <p></p>")
    @as("RoleARN")
    roleARN: roleARN,
    @ocaml.doc("<p>The data specification of an Amazon RDS <code>DataSource</code>:</p>
        <ul>
            <li>
               <p>DatabaseInformation -</p>
                <ul>
                  <li>
                     <p>
                        <code>DatabaseName</code> - The name of the Amazon RDS database.</p>
                  </li>
                  <li>
                     <p>
                        <code>InstanceIdentifier </code> - A unique identifier for the Amazon RDS database instance.</p>
                  </li>
               </ul>
            </li>
            <li>
               <p>DatabaseCredentials - AWS Identity and Access Management (IAM) credentials that are used to connect to the Amazon RDS database.</p>
            </li>
            <li>
               <p>ResourceRole - A role (DataPipelineDefaultResourceRole) assumed by an EC2 instance to carry out the copy task from Amazon RDS to Amazon 
			Simple Storage Service (Amazon S3). For more information, see <a href=\"https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html\">Role templates</a> for data pipelines.</p>
            </li>
            <li>
               <p>ServiceRole - A role (DataPipelineDefaultRole) assumed by the AWS Data Pipeline service to monitor the progress of the copy task from Amazon RDS
			to Amazon S3. For more information, see <a href=\"https://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html\">Role templates</a> for data pipelines.</p>
            </li>
            <li>
               <p>SecurityInfo - The security information to use to access an RDS DB instance. You need to set up appropriate ingress rules for the security entity IDs provided to allow access to the Amazon RDS instance. Specify a [<code>SubnetId</code>, <code>SecurityGroupIds</code>] pair for a VPC-based RDS DB instance.</p>
            </li>
            <li>
               <p>SelectSqlQuery - A query that is used to retrieve the observation data for the <code>Datasource</code>.</p>
            </li>
            <li>
               <p>S3StagingLocation - The Amazon S3 location for staging Amazon RDS data. The data retrieved from Amazon RDS using <code>SelectSqlQuery</code> is stored in this location.</p>
            </li>
            <li>
               <p>DataSchemaUri - The Amazon S3 location of the <code>DataSchema</code>.</p>
            </li>
            <li>
               <p>DataSchema - A JSON string representing the schema. This is not required if <code>DataSchemaUri</code> is specified. </p>
            </li>
            <li>
               <p>DataRearrangement - A JSON string that represents the splitting and rearrangement requirements for the <code>Datasource</code>. </p>
               <p> Sample - 
            <code> \"{\\\"splitting\\\":{\\\"percentBegin\\\":10,\\\"percentEnd\\\":60}}\"</code>
               </p>
            </li>
         </ul>")
    @as("RDSData")
    rdsdata: rdsdataSpec,
    @ocaml.doc("<p>A user-supplied name or description of the <code>DataSource</code>.</p>")
    @as("DataSourceName")
    dataSourceName: option<entityName>,
    @ocaml.doc("<p>A user-supplied ID that uniquely identifies the <code>DataSource</code>. Typically, an Amazon Resource Number (ARN) 
            becomes the ID for a <code>DataSource</code>.</p>")
    @as("DataSourceId")
    dataSourceId: entityId,
  }
  @ocaml.doc("<p> Represents the output of a <code>CreateDataSourceFromRDS</code> operation, and is an acknowledgement that Amazon ML received the request.</p>
         <p>The <code>CreateDataSourceFromRDS</code>> operation is asynchronous. You can poll for updates by using
        the <code>GetBatchPrediction</code> operation and checking the <code>Status</code> parameter. You can 
            inspect the <code>Message</code> when <code>Status</code> shows up as <code>FAILED</code>. You can
            also check the progress of the copy operation by going to the <code>DataPipeline</code> console and looking up
            the pipeline using the <code>pipelineId </code> from the describe call.</p>")
  type response = {
    @ocaml.doc("<p>A user-supplied ID that uniquely identifies the datasource. This value should be identical to the value of the 
            <code>DataSourceID</code> in the request.
        </p>")
    @as("DataSourceId")
    dataSourceId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new: request => t = "CreateDataSourceFromRDSCommand"
  let make = (~roleARN, ~rdsdata, ~dataSourceId, ~computeStatistics=?, ~dataSourceName=?, ()) =>
    new({computeStatistics, roleARN, rdsdata, dataSourceName, dataSourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AddTags = {
  type t
  type request = {
    @ocaml.doc("<p>The type of the ML object to tag.</p>") @as("ResourceType")
    resourceType: taggableResourceType,
    @ocaml.doc("<p>The ID of the ML object to tag. For example, <code>exampleModelId</code>.</p>")
    @as("ResourceId")
    resourceId: entityId,
    @ocaml.doc(
      "<p>The key-value pairs to use to create tags. If you specify a key without specifying a value, Amazon ML creates a tag with the specified key and a value of null.</p>"
    )
    @as("Tags")
    tags: tagList_,
  }
  @ocaml.doc("<p>Amazon ML returns the following elements.</p>")
  type response = {
    @ocaml.doc("<p>The type of the ML object that was tagged.</p>") @as("ResourceType")
    resourceType: option<taggableResourceType>,
    @ocaml.doc("<p>The ID of the ML object that was tagged.</p>") @as("ResourceId")
    resourceId: option<entityId>,
  }
  @module("@aws-sdk/client-machinelearning") @new external new: request => t = "AddTagsCommand"
  let make = (~resourceType, ~resourceId, ~tags, ()) => new({resourceType, resourceId, tags})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeMLModels = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The number of pages of information to include in the result. The range of acceptable values is <code>1</code> through <code>100</code>. The default value is <code>100</code>.</p>"
    )
    @as("Limit")
    limit: option<pageLimit>,
    @ocaml.doc("<p>The ID of the page in the paginated results.</p>") @as("NextToken")
    nextToken: option<stringType>,
    @ocaml.doc("<p>A two-value parameter that determines the sequence of the resulting list of <code>MLModel</code>.</p>
        <ul>
            <li>
               <p>
                  <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</p>
            </li>
            <li>
               <p>
                  <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</p>
            </li>
         </ul>
        <p>Results are sorted by <code>FilterVariable</code>.</p>")
    @as("SortOrder")
    sortOrder: option<sortOrder>,
    @ocaml.doc("<p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> 
        <p>For example, an <code>MLModel</code> could have the <code>Name</code> 
            <code>2014-09-09-HolidayGiftMailer</code>. To search for 
            this <code>MLModel</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the 
            <code>Prefix</code>: 
        </p>
        
        <ul>
            <li>
               <p>2014-09</p>
            </li>
            <li>
               <p>2014-09-09</p>
            </li>
            <li>
               <p>2014-09-09-Holiday</p>
            </li>
         </ul>")
    @as("Prefix")
    prefix: option<comparatorValue>,
    @ocaml.doc(
      "<p>The not equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>"
    )
    @as("NE")
    ne: option<comparatorValue>,
    @ocaml.doc(
      "<p>The less than or equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>"
    )
    @as("LE")
    le: option<comparatorValue>,
    @ocaml.doc("<p>The greater than or equal to operator. The <code>MLModel</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>.
        </p>")
    @as("GE")
    ge: option<comparatorValue>,
    @ocaml.doc("<p>The less than operator. The <code>MLModel</code> results will 
            have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>")
    @as("LT")
    lt: option<comparatorValue>,
    @ocaml.doc("<p>The greater than operator. The <code>MLModel</code> results will 
            have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>")
    @as("GT")
    gt: option<comparatorValue>,
    @ocaml.doc("<p>The equal to operator. The <code>MLModel</code> results will have 
            <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>")
    @as("EQ")
    eq: option<comparatorValue>,
    @ocaml.doc("<p>Use one of the following variables to filter a list of <code>MLModel</code>:</p>
        <ul>
            <li>
               <p>
                  <code>CreatedAt</code> - Sets the search criteria to <code>MLModel</code> creation date.</p>
            </li>
            <li>
               <p>
                  <code>Status</code> - Sets the search criteria to <code>MLModel</code> status.</p>
            </li>
            <li>
               <p>
                  <code>Name</code> - Sets the search criteria to the contents of <code>MLModel</code>
                  <b> </b> 
                  <code>Name</code>.</p>
            </li>
            <li>
               <p>
                  <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>MLModel</code> creation.</p>
            </li>
            <li>
               <p>
                  <code>TrainingDataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used to train one or more <code>MLModel</code>.</p>
            </li>
            <li>
               <p>
                  <code>RealtimeEndpointStatus</code> - Sets the search criteria to the <code>MLModel</code> real-time endpoint status.</p>
            </li>
            <li>
               <p>
                  <code>MLModelType</code> - Sets the search criteria to <code>MLModel</code> type: binary, regression, or multi-class.</p>
            </li>
            <li>
               <p>
                  <code>Algorithm</code> - Sets the search criteria to the algorithm that the <code>MLModel</code> uses.</p>
            </li>
            <li>
               <p>
                  <code>TrainingDataURI</code> - Sets the search criteria to the data file(s) used in training a <code>MLModel</code>. The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</p>
            </li>
         </ul>")
    @as("FilterVariable")
    filterVariable: option<mlmodelFilterVariable>,
  }
  @ocaml.doc(
    "<p>Represents the output of a <code>DescribeMLModels</code> operation. The content is essentially a list of <code>MLModel</code>.</p>"
  )
  type response = {
    @ocaml.doc(
      "<p>The ID of the next page in the paginated results that indicates at least one more page follows.</p>"
    )
    @as("NextToken")
    nextToken: option<stringType>,
    @ocaml.doc("<p>A list of <code>MLModel</code> that meet the search criteria.</p>")
    @as("Results")
    results: option<mlmodels>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new: request => t = "DescribeMLModelsCommand"
  let make = (
    ~limit=?,
    ~nextToken=?,
    ~sortOrder=?,
    ~prefix=?,
    ~ne=?,
    ~le=?,
    ~ge=?,
    ~lt=?,
    ~gt=?,
    ~eq=?,
    ~filterVariable=?,
    (),
  ) => new({limit, nextToken, sortOrder, prefix, ne, le, ge, lt, gt, eq, filterVariable})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeEvaluations = {
  type t
  type request = {
    @ocaml.doc("<p> The maximum number of <code>Evaluation</code> to include in the result.</p>")
    @as("Limit")
    limit: option<pageLimit>,
    @ocaml.doc("<p>The ID of the page in the paginated results.</p>") @as("NextToken")
    nextToken: option<stringType>,
    @ocaml.doc("<p>A two-value parameter that determines the sequence of the resulting list of <code>Evaluation</code>.</p>
        <ul>
            <li>
               <p>
                  <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</p>
            </li>
            <li>
               <p>
                  <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</p>
            </li>
         </ul>
        <p>Results are sorted by <code>FilterVariable</code>.</p>")
    @as("SortOrder")
    sortOrder: option<sortOrder>,
    @ocaml.doc("<p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> 
        <p>For example, an <code>Evaluation</code> could have the <code>Name</code> 
            <code>2014-09-09-HolidayGiftMailer</code>. To search for 
            this <code>Evaluation</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the 
            <code>Prefix</code>: 
        </p>
        
        <ul>
            <li>
               <p>2014-09</p>
            </li>
            <li>
               <p>2014-09-09</p>
            </li>
            <li>
               <p>2014-09-09-Holiday</p>
            </li>
         </ul>")
    @as("Prefix")
    prefix: option<comparatorValue>,
    @ocaml.doc(
      "<p>The not equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>"
    )
    @as("NE")
    ne: option<comparatorValue>,
    @ocaml.doc(
      "<p>The less than or equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>"
    )
    @as("LE")
    le: option<comparatorValue>,
    @ocaml.doc("<p>The greater than or equal to operator. The <code>Evaluation</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>.
        </p>")
    @as("GE")
    ge: option<comparatorValue>,
    @ocaml.doc("<p>The less than operator. The <code>Evaluation</code> results will 
            have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>")
    @as("LT")
    lt: option<comparatorValue>,
    @ocaml.doc("<p>The greater than operator. The <code>Evaluation</code> results will 
            have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>")
    @as("GT")
    gt: option<comparatorValue>,
    @ocaml.doc("<p>The equal to operator. The <code>Evaluation</code> results will have 
            <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>")
    @as("EQ")
    eq: option<comparatorValue>,
    @ocaml.doc("<p>Use one of the following variable to filter a list of <code>Evaluation</code> objects:</p>   
        <ul>
            <li>
               <p>
                  <code>CreatedAt</code> - Sets the search criteria to the <code>Evaluation</code> creation date.</p>
            </li>
            <li>
               <p>
                  <code>Status</code> - Sets the search criteria to the <code>Evaluation</code> status.</p>
            </li>
            <li>
               <p>
                  <code>Name</code> - Sets the search criteria to the contents of <code>Evaluation</code> 
                  <b> </b> 
                  <code>Name</code>.</p>
            </li>
            <li>
               <p>
                  <code>IAMUser</code> - Sets the search criteria to the user account that invoked an <code>Evaluation</code>.</p>
            </li>
            <li>
               <p>
                  <code>MLModelId</code> - Sets the search criteria to the <code>MLModel</code> that was evaluated.</p>
            </li>
            <li>
               <p>
                  <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in <code>Evaluation</code>.</p>
            </li>
            <li>
               <p>
                  <code>DataUri</code> - Sets the search criteria to the data file(s) used in <code>Evaluation</code>. The URL can identify either a file or an Amazon Simple Storage Solution (Amazon S3) bucket or directory.</p>
            </li>
         </ul>")
    @as("FilterVariable")
    filterVariable: option<evaluationFilterVariable>,
  }
  @ocaml.doc(
    "<p>Represents the query results from a <code>DescribeEvaluations</code> operation. The content is essentially a list of <code>Evaluation</code>.</p>"
  )
  type response = {
    @ocaml.doc(
      "<p>The ID of the next page in the paginated results that indicates at least one more page follows.</p>"
    )
    @as("NextToken")
    nextToken: option<stringType>,
    @ocaml.doc("<p>A list of <code>Evaluation</code> that meet the search criteria.
        </p>")
    @as("Results")
    results: option<evaluations>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new: request => t = "DescribeEvaluationsCommand"
  let make = (
    ~limit=?,
    ~nextToken=?,
    ~sortOrder=?,
    ~prefix=?,
    ~ne=?,
    ~le=?,
    ~ge=?,
    ~lt=?,
    ~gt=?,
    ~eq=?,
    ~filterVariable=?,
    (),
  ) => new({limit, nextToken, sortOrder, prefix, ne, le, ge, lt, gt, eq, filterVariable})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeDataSources = {
  type t
  type request = {
    @ocaml.doc("<p> The maximum number of <code>DataSource</code> to include in the result.</p>")
    @as("Limit")
    limit: option<pageLimit>,
    @ocaml.doc("<p>The ID of the page in the paginated results.</p>") @as("NextToken")
    nextToken: option<stringType>,
    @ocaml.doc("<p>A two-value parameter that determines the sequence of the resulting list of <code>DataSource</code>.</p>
        <ul>
            <li>
               <p>
                  <code>asc</code> - Arranges the list in ascending order (A-Z, 0-9).</p>
            </li>
            <li>
               <p>
                  <code>dsc</code> - Arranges the list in descending order (Z-A, 9-0).</p>
            </li>
         </ul>
        <p>Results are sorted by <code>FilterVariable</code>.</p>")
    @as("SortOrder")
    sortOrder: option<sortOrder>,
    @ocaml.doc("<p>A string that is found at the beginning of a variable, such as <code>Name</code> or <code>Id</code>.</p> 
        <p>For example, a <code>DataSource</code> could have the <code>Name</code> 
            <code>2014-09-09-HolidayGiftMailer</code>. To search for 
            this <code>DataSource</code>, select <code>Name</code> for the <code>FilterVariable</code> and any of the following strings for the 
            <code>Prefix</code>: 
        </p>
        
        <ul>
            <li>
               <p>2014-09</p>
            </li>
            <li>
               <p>2014-09-09</p>
            </li>
            <li>
               <p>2014-09-09-Holiday</p>
            </li>
         </ul>")
    @as("Prefix")
    prefix: option<comparatorValue>,
    @ocaml.doc(
      "<p>The not equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values not equal to the value specified with <code>NE</code>.</p>"
    )
    @as("NE")
    ne: option<comparatorValue>,
    @ocaml.doc(
      "<p>The less than or equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values that are less than or equal to the value specified with <code>LE</code>.</p>"
    )
    @as("LE")
    le: option<comparatorValue>,
    @ocaml.doc("<p>The greater than or equal to operator. The <code>DataSource</code> results will have <code>FilterVariable</code> values that are greater than or equal to the value specified with <code>GE</code>.
        </p>")
    @as("GE")
    ge: option<comparatorValue>,
    @ocaml.doc("<p>The less than operator. The <code>DataSource</code> results will 
            have <code>FilterVariable</code> values that are less than the value specified with <code>LT</code>.</p>")
    @as("LT")
    lt: option<comparatorValue>,
    @ocaml.doc("<p>The greater than operator. The <code>DataSource</code> results will 
            have <code>FilterVariable</code> values that are greater than the value specified with <code>GT</code>.</p>")
    @as("GT")
    gt: option<comparatorValue>,
    @ocaml.doc("<p>The equal to operator. The <code>DataSource</code> results will have 
            <code>FilterVariable</code> values that exactly match the value specified with <code>EQ</code>.</p>")
    @as("EQ")
    eq: option<comparatorValue>,
    @ocaml.doc("<p>Use one of the following variables to filter a list of <code>DataSource</code>:</p>
        <ul>
            <li>
               <p>
                  <code>CreatedAt</code> - Sets the search criteria to <code>DataSource</code> creation dates.</p>
            </li>
            <li>
               <p>
                  <code>Status</code> - Sets the search criteria to <code>DataSource</code> statuses.</p>
            </li>
            <li>
               <p>
                  <code>Name</code> - Sets the search criteria to the contents of <code>DataSource</code> 
                  <code>Name</code>.</p>
            </li>
            <li>
               <p>
                  <code>DataUri</code> - Sets the search criteria to the URI of data files used to create the <code>DataSource</code>. The URI can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</p>
            </li>
            <li>
               <p>
                  <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>DataSource</code> creation.</p>
            </li>
         </ul>")
    @as("FilterVariable")
    filterVariable: option<dataSourceFilterVariable>,
  }
  @ocaml.doc(
    "<p>Represents the query results from a <a>DescribeDataSources</a> operation. The content is essentially a list of <code>DataSource</code>.</p>"
  )
  type response = {
    @ocaml.doc(
      "<p>An ID of the next page in the paginated results that indicates at least one more page follows.</p>"
    )
    @as("NextToken")
    nextToken: option<stringType>,
    @ocaml.doc("<p>A list of <code>DataSource</code> that meet the search criteria.
         </p>")
    @as("Results")
    results: option<dataSources>,
  }
  @module("@aws-sdk/client-machinelearning") @new
  external new: request => t = "DescribeDataSourcesCommand"
  let make = (
    ~limit=?,
    ~nextToken=?,
    ~sortOrder=?,
    ~prefix=?,
    ~ne=?,
    ~le=?,
    ~ge=?,
    ~lt=?,
    ~gt=?,
    ~eq=?,
    ~filterVariable=?,
    (),
  ) => new({limit, nextToken, sortOrder, prefix, ne, le, ge, lt, gt, eq, filterVariable})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
