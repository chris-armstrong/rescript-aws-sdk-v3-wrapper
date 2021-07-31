type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type suggestionsSize = float;
type suggester = string
type amazonawsString = string
type stat = string
type start = float;
type sort = string
type size = float;
type return = string
type queryParser = [@as("dismax") #dismax | @as("lucene") #lucene | @as("structured") #structured | @as("simple") #simple]
type queryOptions = string
type query = string
type partial = bool;
type amazonawsLong = float;
type highlight = string
type filterQuery = string
type facet = string
type expr = string
type amazonawsDouble = float;
type deletes = float;
type cursor = string
type contentType = [@as("application/xml") #application_xml | @as("application/json") #application_json]
type blob = NodeJs.Buffer.t;
type adds = float;
type suggestionMatch = {
@as("id") id: amazonawsString,
@as("score") score: amazonawsLong,
@as("suggestion") suggestion: amazonawsString
}
type suggestStatus = {
@as("rid") rid: amazonawsString,
@as("timems") timems: amazonawsLong
}
type searchStatus = {
@as("rid") rid: amazonawsString,
@as("timems") timems: amazonawsLong
}
type highlights = Js.Dict.t< amazonawsString>
type fieldValue = array<amazonawsString>
type fieldStats = {
@as("stddev") stddev: amazonawsDouble,
@as("mean") mean: amazonawsString,
@as("sumOfSquares") sumOfSquares: amazonawsDouble,
@as("sum") sum: amazonawsDouble,
@as("missing") missing: amazonawsLong,
@as("count") count: amazonawsLong,
@as("max") max: amazonawsString,
@as("min") min: amazonawsString
}
type exprs = Js.Dict.t< amazonawsString>
type documentServiceWarning = {
@as("message") message: amazonawsString
}
type bucket = {
@as("count") count: amazonawsLong,
@as("value") value: amazonawsString
}
type suggestions = array<suggestionMatch>
type stats = Js.Dict.t< fieldStats>
type fields = Js.Dict.t< fieldValue>
type documentServiceWarnings = array<documentServiceWarning>
type bucketList = array<bucket>
type suggestModel = {
@as("suggestions") suggestions: suggestions,
@as("found") found: amazonawsLong,
@as("query") query: amazonawsString
}
type hit = {
@as("highlights") highlights: highlights,
@as("exprs") exprs: exprs,
@as("fields") fields: fields,
@as("id") id: amazonawsString
}
type bucketInfo = {
@as("buckets") buckets: bucketList
}
type hitList = array<hit>
type facets = Js.Dict.t< bucketInfo>
type hits = {
@as("hit") hit: hitList,
@as("cursor") cursor: amazonawsString,
@as("start") start: amazonawsLong,
@as("found") found: amazonawsLong
}
type clientType;
@module("@aws-sdk/client-cloudsearch") @new external createClient: unit => clientType = "CloudSearchDomainClient";
module UploadDocuments = {
  type t;
  type request = {
@as("contentType") contentType: option<contentType>,
@as("documents") documents: option<blob>
}
  type response = {
@as("warnings") warnings: documentServiceWarnings,
@as("deletes") deletes: deletes,
@as("adds") adds: adds,
@as("status") status: amazonawsString
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "UploadDocumentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module Suggest = {
  type t;
  type request = {
@as("size") size: suggestionsSize,
@as("suggester") suggester: option<suggester>,
@as("query") query: option<query>
}
  type response = {
@as("suggest") suggest: suggestModel,
@as("status") status: suggestStatus
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "SuggestCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module Search = {
  type t;
  type request = {
@as("stats") stats: stat,
@as("start") start: start,
@as("sort") sort: sort,
@as("size") size: size,
@as("return") return: return,
@as("queryParser") queryParser: queryParser,
@as("queryOptions") queryOptions: queryOptions,
@as("query") query: option<query>,
@as("partial") partial: partial,
@as("highlight") highlight: highlight,
@as("filterQuery") filterQuery: filterQuery,
@as("facet") facet: facet,
@as("expr") expr: expr,
@as("cursor") cursor: cursor
}
  type response = {
@as("stats") stats: stats,
@as("facets") facets: facets,
@as("hits") hits: hits,
@as("status") status: searchStatus
}
  @module("@aws-sdk/client-cloudsearch") @new external new_: (request) => t = "SearchCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
