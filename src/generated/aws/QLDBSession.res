type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-qldb") @new
external createClient: unit => awsServiceClient = "QLDBSessionClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type writeIOs = float
type transactionId = string
type statement = string
type startTransactionRequest = unit
type sessionToken = string
type readIOs = float
type processingTimeMilliseconds = float
type pageToken = string
type ledgerName = string
type ionText = string
type ionBinary = NodeJs.Buffer.t
type errorMessage = string
type errorCode = string
type endSessionRequest = unit
type commitDigest = NodeJs.Buffer.t
type abortTransactionRequest = unit
type valueHolder = {
  @as("IonText") ionText: option<ionText>,
  @as("IonBinary") ionBinary: option<ionBinary>,
}
type timingInformation = {
  @as("ProcessingTimeMilliseconds") processingTimeMilliseconds: option<processingTimeMilliseconds>,
}
type startSessionRequest = {@as("LedgerName") ledgerName: ledgerName}
type iousage = {
  @as("WriteIOs") writeIOs: option<writeIOs>,
  @as("ReadIOs") readIOs: option<readIOs>,
}
type fetchPageRequest = {
  @as("NextPageToken") nextPageToken: pageToken,
  @as("TransactionId") transactionId: transactionId,
}
type commitTransactionRequest = {
  @as("CommitDigest") commitDigest: commitDigest,
  @as("TransactionId") transactionId: transactionId,
}
type valueHolders = array<valueHolder>
type statementParameters = array<valueHolder>
type startTransactionResult = {
  @as("TimingInformation") timingInformation: option<timingInformation>,
  @as("TransactionId") transactionId: option<transactionId>,
}
type startSessionResult = {
  @as("TimingInformation") timingInformation: option<timingInformation>,
  @as("SessionToken") sessionToken: option<sessionToken>,
}
type endSessionResult = {@as("TimingInformation") timingInformation: option<timingInformation>}
type commitTransactionResult = {
  @as("ConsumedIOs") consumedIOs: option<iousage>,
  @as("TimingInformation") timingInformation: option<timingInformation>,
  @as("CommitDigest") commitDigest: option<commitDigest>,
  @as("TransactionId") transactionId: option<transactionId>,
}
type abortTransactionResult = {
  @as("TimingInformation") timingInformation: option<timingInformation>,
}
type page = {
  @as("NextPageToken") nextPageToken: option<pageToken>,
  @as("Values") values: option<valueHolders>,
}
type executeStatementRequest = {
  @as("Parameters") parameters: option<statementParameters>,
  @as("Statement") statement: statement,
  @as("TransactionId") transactionId: transactionId,
}
type fetchPageResult = {
  @as("ConsumedIOs") consumedIOs: option<iousage>,
  @as("TimingInformation") timingInformation: option<timingInformation>,
  @as("Page") page: option<page>,
}
type executeStatementResult = {
  @as("ConsumedIOs") consumedIOs: option<iousage>,
  @as("TimingInformation") timingInformation: option<timingInformation>,
  @as("FirstPage") firstPage: option<page>,
}

module SendCommand = {
  type t
  type request = {
    @as("FetchPage") fetchPage: option<fetchPageRequest>,
    @as("ExecuteStatement") executeStatement: option<executeStatementRequest>,
    @as("AbortTransaction") abortTransaction: option<abortTransactionRequest>,
    @as("CommitTransaction") commitTransaction: option<commitTransactionRequest>,
    @as("EndSession") endSession: option<endSessionRequest>,
    @as("StartTransaction") startTransaction: option<startTransactionRequest>,
    @as("StartSession") startSession: option<startSessionRequest>,
    @as("SessionToken") sessionToken: option<sessionToken>,
  }
  type response = {
    @as("FetchPage") fetchPage: option<fetchPageResult>,
    @as("ExecuteStatement") executeStatement: option<executeStatementResult>,
    @as("AbortTransaction") abortTransaction: option<abortTransactionResult>,
    @as("CommitTransaction") commitTransaction: option<commitTransactionResult>,
    @as("EndSession") endSession: option<endSessionResult>,
    @as("StartTransaction") startTransaction: option<startTransactionResult>,
    @as("StartSession") startSession: option<startSessionResult>,
  }
  @module("@aws-sdk/client-qldb") @new external new: request => t = "SendCommandCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
