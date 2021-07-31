type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-cloudsearch") @new
external createClient: unit => awsServiceClient = "CloudSearchDomainClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type suggestionsSize = float
type suggester = string
type string_ = string
type stat = string
type start = float
type sort = string
type size = float
type return = string
type queryParser = [
  | @as("dismax") #Dismax
  | @as("lucene") #Lucene
  | @as("structured") #Structured
  | @as("simple") #Simple
]
type queryOptions = string
type query = string
type partial = bool
type long = float
type highlight = string
type filterQuery = string
type facet = string
type expr = string
type double = float
type deletes = float
type cursor = string
type contentType = [
  | @as("application/xml") #Application_Xml
  | @as("application/json") #Application_Json
]
type blob = NodeJs.Buffer.t
type adds = float
type suggestionMatch = {
  id: option<string_>,
  score: option<long>,
  suggestion: option<string_>,
}
type suggestStatus = {
  rid: option<string_>,
  timems: option<long>,
}
type searchStatus = {
  rid: option<string_>,
  timems: option<long>,
}
type highlights = Js.Dict.t<string_>
type fieldValue = array<string_>
type fieldStats = {
  stddev: option<double>,
  mean: option<string_>,
  sumOfSquares: option<double>,
  sum: option<double>,
  missing: option<long>,
  count: option<long>,
  max: option<string_>,
  min: option<string_>,
}
type exprs = Js.Dict.t<string_>
type documentServiceWarning = {message: option<string_>}
type bucket = {
  count: option<long>,
  value: option<string_>,
}
type suggestions = array<suggestionMatch>
type stats = Js.Dict.t<fieldStats>
type fields = Js.Dict.t<fieldValue>
type documentServiceWarnings = array<documentServiceWarning>
type bucketList = array<bucket>
type suggestModel = {
  suggestions: option<suggestions>,
  found: option<long>,
  query: option<string_>,
}
type hit = {
  highlights: option<highlights>,
  exprs: option<exprs>,
  fields: option<fields>,
  id: option<string_>,
}
type bucketInfo = {buckets: option<bucketList>}
type hitList = array<hit>
type facets = Js.Dict.t<bucketInfo>
type hits = {
  hit: option<hitList>,
  cursor: option<string_>,
  start: option<long>,
  found: option<long>,
}

module UploadDocuments = {
  type t
  type request = {
    contentType: contentType,
    documents: blob,
  }
  type response = {
    warnings: option<documentServiceWarnings>,
    deletes: option<deletes>,
    adds: option<adds>,
    status: option<string_>,
  }
  @module("@aws-sdk/client-cloudsearch") @new external new: request => t = "UploadDocumentsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Suggest = {
  type t
  type request = {
    size: option<suggestionsSize>,
    suggester: suggester,
    query: query,
  }
  type response = {
    suggest: option<suggestModel>,
    status: option<suggestStatus>,
  }
  @module("@aws-sdk/client-cloudsearch") @new external new: request => t = "SuggestCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Search = {
  type t
  type request = {
    stats: option<stat>,
    start: option<start>,
    sort: option<sort>,
    size: option<size>,
    return: option<return>,
    queryParser: option<queryParser>,
    queryOptions: option<queryOptions>,
    query: query,
    partial: option<partial>,
    highlight: option<highlight>,
    filterQuery: option<filterQuery>,
    facet: option<facet>,
    expr: option<expr>,
    cursor: option<cursor>,
  }
  type response = {
    stats: option<stats>,
    facets: option<facets>,
    hits: option<hits>,
    status: option<searchStatus>,
  }
  @module("@aws-sdk/client-cloudsearch") @new external new: request => t = "SearchCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
