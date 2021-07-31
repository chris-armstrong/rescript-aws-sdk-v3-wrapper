type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type writeIOs = float;
type transactionId = string
type statement = string
type startTransactionRequest = unit
type sessionToken = string
type readIOs = float;
type processingTimeMilliseconds = float;
type pageToken = string
type ledgerName = string
type ionText = string
type ionBinary = NodeJs.Buffer.t;
type errorMessage = string
type errorCode = string
type endSessionRequest = unit
type commitDigest = NodeJs.Buffer.t;
type abortTransactionRequest = unit
type valueHolder = {
@as("IonText") ionText: ionText,
@as("IonBinary") ionBinary: ionBinary
}
type timingInformation = {
@as("ProcessingTimeMilliseconds") processingTimeMilliseconds: processingTimeMilliseconds
}
type startSessionRequest = {
@as("LedgerName") ledgerName: option<ledgerName>
}
type iOUsage = {
@as("WriteIOs") writeIOs: writeIOs,
@as("ReadIOs") readIOs: readIOs
}
type fetchPageRequest = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("TransactionId") transactionId: option<transactionId>
}
type commitTransactionRequest = {
@as("CommitDigest") commitDigest: option<commitDigest>,
@as("TransactionId") transactionId: option<transactionId>
}
type valueHolders = array<valueHolder>
type statementParameters = array<valueHolder>
type startTransactionResult = {
@as("TimingInformation") timingInformation: timingInformation,
@as("TransactionId") transactionId: transactionId
}
type startSessionResult = {
@as("TimingInformation") timingInformation: timingInformation,
@as("SessionToken") sessionToken: sessionToken
}
type endSessionResult = {
@as("TimingInformation") timingInformation: timingInformation
}
type commitTransactionResult = {
@as("ConsumedIOs") consumedIOs: iOUsage,
@as("TimingInformation") timingInformation: timingInformation,
@as("CommitDigest") commitDigest: commitDigest,
@as("TransactionId") transactionId: transactionId
}
type abortTransactionResult = {
@as("TimingInformation") timingInformation: timingInformation
}
type page = {
@as("NextPageToken") nextPageToken: pageToken,
@as("Values") values: valueHolders
}
type executeStatementRequest = {
@as("Parameters") parameters: statementParameters,
@as("Statement") statement: option<statement>,
@as("TransactionId") transactionId: option<transactionId>
}
type fetchPageResult = {
@as("ConsumedIOs") consumedIOs: iOUsage,
@as("TimingInformation") timingInformation: timingInformation,
@as("Page") page: page
}
type executeStatementResult = {
@as("ConsumedIOs") consumedIOs: iOUsage,
@as("TimingInformation") timingInformation: timingInformation,
@as("FirstPage") firstPage: page
}
type clientType;
@module("@aws-sdk/client-qldb") @new external createClient: unit => clientType = "QLDBSessionClient";
module SendCommand = {
  type t;
  type request = {
@as("FetchPage") fetchPage: fetchPageRequest,
@as("ExecuteStatement") executeStatement: executeStatementRequest,
@as("AbortTransaction") abortTransaction: abortTransactionRequest,
@as("CommitTransaction") commitTransaction: commitTransactionRequest,
@as("EndSession") endSession: endSessionRequest,
@as("StartTransaction") startTransaction: startTransactionRequest,
@as("StartSession") startSession: startSessionRequest,
@as("SessionToken") sessionToken: sessionToken
}
  type response = {
@as("FetchPage") fetchPage: fetchPageResult,
@as("ExecuteStatement") executeStatement: executeStatementResult,
@as("AbortTransaction") abortTransaction: abortTransactionResult,
@as("CommitTransaction") commitTransaction: commitTransactionResult,
@as("EndSession") endSession: endSessionResult,
@as("StartTransaction") startTransaction: startTransactionResult,
@as("StartSession") startSession: startSessionResult
}
  @module("@aws-sdk/client-qldb") @new external new_: (Js.Promise.t<request>) => t = "SendCommandCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
