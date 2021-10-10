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
@ocaml.doc("<p>Specifies a request to start a transaction.</p>") type startTransactionRequest = unit
type sessionToken = string
type readIOs = float
type processingTimeMilliseconds = float
type pageToken = string
type ledgerName = string
type ionText = string
type ionBinary = NodeJs.Buffer.t
type errorMessage = string
type errorCode = string
@ocaml.doc("<p>Specifies a request to end the session.</p>") type endSessionRequest = unit
type commitDigest = NodeJs.Buffer.t
@ocaml.doc("<p>Contains the details of the transaction to abort.</p>")
type abortTransactionRequest = unit
@ocaml.doc("<p>A structure that can contain a value in multiple encoding formats.</p>")
type valueHolder = {
  @ocaml.doc(
    "<p>An Amazon Ion plaintext value contained in a <code>ValueHolder</code> structure.</p>"
  )
  @as("IonText")
  ionText: option<ionText>,
  @ocaml.doc("<p>An Amazon Ion binary value contained in a <code>ValueHolder</code> structure.</p>")
  @as("IonBinary")
  ionBinary: option<ionBinary>,
}
@ocaml.doc("<p>Contains server-side performance information for a command. Amazon QLDB captures timing
         information between the times when it receives the request and when it sends the
         corresponding response.</p>")
type timingInformation = {
  @ocaml.doc("<p>The amount of time that QLDB spent on processing the command, measured in
         milliseconds.</p>")
  @as("ProcessingTimeMilliseconds")
  processingTimeMilliseconds: option<processingTimeMilliseconds>,
}
@ocaml.doc("<p>Specifies a request to start a new session.</p>")
type startSessionRequest = {
  @ocaml.doc("<p>The name of the ledger to start a new session against.</p>") @as("LedgerName")
  ledgerName: ledgerName,
}
@ocaml.doc("<p>Contains I/O usage metrics for a command that was invoked.</p>")
type iousage = {
  @ocaml.doc("<p>The number of write I/O requests that the command made.</p>") @as("WriteIOs")
  writeIOs: option<writeIOs>,
  @ocaml.doc("<p>The number of read I/O requests that the command made.</p>") @as("ReadIOs")
  readIOs: option<readIOs>,
}
@ocaml.doc("<p>Specifies the details of the page to be fetched.</p>")
type fetchPageRequest = {
  @ocaml.doc("<p>Specifies the next page token of the page to be fetched.</p>") @as("NextPageToken")
  nextPageToken: pageToken,
  @ocaml.doc("<p>Specifies the transaction ID of the page to be fetched.</p>") @as("TransactionId")
  transactionId: transactionId,
}
@ocaml.doc("<p>Contains the details of the transaction to commit.</p>")
type commitTransactionRequest = {
  @ocaml.doc("<p>Specifies the commit digest for the transaction to commit. For every active transaction,
         the commit digest must be passed. QLDB validates <code>CommitDigest</code> and rejects
         the commit with an error if the digest computed on the client does not match the digest
         computed by QLDB.</p>
         <p>The purpose of the <code>CommitDigest</code> parameter is to ensure that QLDB commits
         a transaction if and only if the server has processed the exact set of statements sent by
         the client, in the same order that client sent them, and with no duplicates.</p>")
  @as("CommitDigest")
  commitDigest: commitDigest,
  @ocaml.doc("<p>Specifies the transaction ID of the transaction to commit.</p>")
  @as("TransactionId")
  transactionId: transactionId,
}
type valueHolders = array<valueHolder>
type statementParameters = array<valueHolder>
@ocaml.doc("<p>Contains the details of the started transaction.</p>")
type startTransactionResult = {
  @ocaml.doc("<p>Contains server-side performance information for the command.</p>")
  @as("TimingInformation")
  timingInformation: option<timingInformation>,
  @ocaml.doc("<p>The transaction ID of the started transaction.</p>") @as("TransactionId")
  transactionId: option<transactionId>,
}
@ocaml.doc("<p>Contains the details of the started session.</p>")
type startSessionResult = {
  @ocaml.doc("<p>Contains server-side performance information for the command.</p>")
  @as("TimingInformation")
  timingInformation: option<timingInformation>,
  @ocaml.doc("<p>Session token of the started session. This <code>SessionToken</code> is required for
         every subsequent command that is issued during the current session.</p>")
  @as("SessionToken")
  sessionToken: option<sessionToken>,
}
@ocaml.doc("<p>Contains the details of the ended session.</p>")
type endSessionResult = {
  @ocaml.doc("<p>Contains server-side performance information for the command.</p>")
  @as("TimingInformation")
  timingInformation: option<timingInformation>,
}
@ocaml.doc("<p>Contains the details of the committed transaction.</p>")
type commitTransactionResult = {
  @ocaml.doc("<p>Contains metrics about the number of I/O requests that were consumed.</p>")
  @as("ConsumedIOs")
  consumedIOs: option<iousage>,
  @ocaml.doc("<p>Contains server-side performance information for the command.</p>")
  @as("TimingInformation")
  timingInformation: option<timingInformation>,
  @ocaml.doc("<p>The commit digest of the committed transaction.</p>") @as("CommitDigest")
  commitDigest: option<commitDigest>,
  @ocaml.doc("<p>The transaction ID of the committed transaction.</p>") @as("TransactionId")
  transactionId: option<transactionId>,
}
@ocaml.doc("<p>Contains the details of the aborted transaction.</p>")
type abortTransactionResult = {
  @ocaml.doc("<p>Contains server-side performance information for the command.</p>")
  @as("TimingInformation")
  timingInformation: option<timingInformation>,
}
@ocaml.doc("<p>Contains details of the fetched page.</p>")
type page = {
  @ocaml.doc("<p>The token of the next page.</p>") @as("NextPageToken")
  nextPageToken: option<pageToken>,
  @ocaml.doc("<p>A structure that contains values in multiple encoding formats.</p>") @as("Values")
  values: option<valueHolders>,
}
@ocaml.doc("<p>Specifies a request to execute a statement.</p>")
type executeStatementRequest = {
  @ocaml.doc("<p>Specifies the parameters for the parameterized statement in the request.</p>")
  @as("Parameters")
  parameters: option<statementParameters>,
  @ocaml.doc("<p>Specifies the statement of the request.</p>") @as("Statement")
  statement: statement,
  @ocaml.doc("<p>Specifies the transaction ID of the request.</p>") @as("TransactionId")
  transactionId: transactionId,
}
@ocaml.doc("<p>Contains the page that was fetched.</p>")
type fetchPageResult = {
  @ocaml.doc("<p>Contains metrics about the number of I/O requests that were consumed.</p>")
  @as("ConsumedIOs")
  consumedIOs: option<iousage>,
  @ocaml.doc("<p>Contains server-side performance information for the command.</p>")
  @as("TimingInformation")
  timingInformation: option<timingInformation>,
  @ocaml.doc("<p>Contains details of the fetched page.</p>") @as("Page") page: option<page>,
}
@ocaml.doc("<p>Contains the details of the executed statement.</p>")
type executeStatementResult = {
  @ocaml.doc("<p>Contains metrics about the number of I/O requests that were consumed.</p>")
  @as("ConsumedIOs")
  consumedIOs: option<iousage>,
  @ocaml.doc("<p>Contains server-side performance information for the command.</p>")
  @as("TimingInformation")
  timingInformation: option<timingInformation>,
  @ocaml.doc("<p>Contains the details of the first fetched page.</p>") @as("FirstPage")
  firstPage: option<page>,
}
@ocaml.doc("<p>The transactional data APIs for Amazon QLDB</p>
         <note>
            <p>Instead of interacting directly with this API, we recommend using the QLDB driver
            or the QLDB shell to execute data transactions on a ledger.</p>
            <ul>
               <li>
                  <p>If you are working with an AWS SDK, use the QLDB driver. The driver provides
                  a high-level abstraction layer above this <i>QLDB Session</i> data
                  plane and manages <code>SendCommand</code> API calls for you. For information and
                  a list of supported programming languages, see <a href=\"https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html\">Getting started
                     with the driver</a> in the <i>Amazon QLDB Developer
                  Guide</i>.</p>
               </li>
               <li>
                  <p>If you are working with the AWS Command Line Interface (AWS CLI), use the
                  QLDB shell. The shell is a command line interface that uses the QLDB driver to
                  interact with a ledger. For information, see <a href=\"https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html\">Accessing Amazon QLDB using the
                     QLDB shell</a>.</p>
               </li>
            </ul>
         </note>")
module SendCommand = {
  type t
  type request = {
    @ocaml.doc("<p>Command to fetch a page.</p>") @as("FetchPage")
    fetchPage: option<fetchPageRequest>,
    @ocaml.doc("<p>Command to execute a statement in the specified transaction.</p>")
    @as("ExecuteStatement")
    executeStatement: option<executeStatementRequest>,
    @ocaml.doc("<p>Command to abort the current transaction.</p>") @as("AbortTransaction")
    abortTransaction: option<abortTransactionRequest>,
    @ocaml.doc("<p>Command to commit the specified transaction.</p>") @as("CommitTransaction")
    commitTransaction: option<commitTransactionRequest>,
    @ocaml.doc("<p>Command to end the current session.</p>") @as("EndSession")
    endSession: option<endSessionRequest>,
    @ocaml.doc("<p>Command to start a new transaction.</p>") @as("StartTransaction")
    startTransaction: option<startTransactionRequest>,
    @ocaml.doc("<p>Command to start a new session. A session token is obtained as part of the
         response.</p>")
    @as("StartSession")
    startSession: option<startSessionRequest>,
    @ocaml.doc("<p>Specifies the session token for the current command. A session token is constant
         throughout the life of the session.</p>
         <p>To obtain a session token, run the <code>StartSession</code> command. This
            <code>SessionToken</code> is required for every subsequent command that is issued during
         the current session.</p>")
    @as("SessionToken")
    sessionToken: option<sessionToken>,
  }
  type response = {
    @ocaml.doc("<p>Contains the details of the fetched page.</p>") @as("FetchPage")
    fetchPage: option<fetchPageResult>,
    @ocaml.doc("<p>Contains the details of the executed statement.</p>") @as("ExecuteStatement")
    executeStatement: option<executeStatementResult>,
    @ocaml.doc("<p>Contains the details of the aborted transaction.</p>") @as("AbortTransaction")
    abortTransaction: option<abortTransactionResult>,
    @ocaml.doc("<p>Contains the details of the committed transaction.</p>") @as("CommitTransaction")
    commitTransaction: option<commitTransactionResult>,
    @ocaml.doc("<p>Contains the details of the ended session.</p>") @as("EndSession")
    endSession: option<endSessionResult>,
    @ocaml.doc("<p>Contains the details of the started transaction.</p>") @as("StartTransaction")
    startTransaction: option<startTransactionResult>,
    @ocaml.doc("<p>Contains the details of the started session that includes a session token. This
            <code>SessionToken</code> is required for every subsequent command that is issued during
         the current session.</p>")
    @as("StartSession")
    startSession: option<startSessionResult>,
  }
  @module("@aws-sdk/client-qldb") @new external new: request => t = "SendCommandCommand"
  let make = (
    ~fetchPage=?,
    ~executeStatement=?,
    ~abortTransaction=?,
    ~commitTransaction=?,
    ~endSession=?,
    ~startTransaction=?,
    ~startSession=?,
    ~sessionToken=?,
    (),
  ) =>
    new({
      fetchPage: fetchPage,
      executeStatement: executeStatement,
      abortTransaction: abortTransaction,
      commitTransaction: commitTransaction,
      endSession: endSession,
      startTransaction: startTransaction,
      startSession: startSession,
      sessionToken: sessionToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
