// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Caml_option = require("rescript/lib/js/caml_option.js");
var Caml_exceptions = require("rescript/lib/js/caml_exceptions.js");

var DocumentAttributeValueUnspecified = /* @__PURE__ */Caml_exceptions.create("Kendra-AwsSdkV3.DocumentAttributeValue.DocumentAttributeValueUnspecified");

function classify(value) {
  var x = value.DateValue;
  if (x !== undefined) {
    return {
            TAG: /* DateValue */0,
            _0: Caml_option.valFromOption(x)
          };
  }
  var x$1 = value.LongValue;
  if (x$1 !== undefined) {
    return {
            TAG: /* LongValue */1,
            _0: x$1
          };
  }
  var x$2 = value.StringListValue;
  if (x$2 !== undefined) {
    return {
            TAG: /* StringListValue */2,
            _0: x$2
          };
  }
  var x$3 = value.StringValue;
  if (x$3 !== undefined) {
    return {
            TAG: /* StringValue */3,
            _0: x$3
          };
  }
  throw {
        RE_EXN_ID: DocumentAttributeValueUnspecified,
        Error: new Error()
      };
}

function make(value) {
  switch (value.TAG | 0) {
    case /* DateValue */0 :
        return {
                DateValue: Caml_option.some(value._0),
                LongValue: undefined,
                StringListValue: undefined,
                StringValue: undefined
              };
    case /* LongValue */1 :
        return {
                DateValue: undefined,
                LongValue: value._0,
                StringListValue: undefined,
                StringValue: undefined
              };
    case /* StringListValue */2 :
        return {
                DateValue: undefined,
                LongValue: undefined,
                StringListValue: value._0,
                StringValue: undefined
              };
    case /* StringValue */3 :
        return {
                DateValue: undefined,
                LongValue: undefined,
                StringListValue: undefined,
                StringValue: value._0
              };
    
  }
}

var DocumentAttributeValue = {
  DocumentAttributeValueUnspecified: DocumentAttributeValueUnspecified,
  classify: classify,
  make: make
};

var UpdateQuerySuggestionsConfig = {};

var StopDataSourceSyncJob = {};

var StartDataSourceSyncJob = {};

var DescribeQuerySuggestionsConfig = {};

var DeleteThesaurus = {};

var DeleteQuerySuggestionsBlockList = {};

var DeleteIndex = {};

var DeleteFaq = {};

var DeleteDataSource = {};

var ClearQuerySuggestions = {};

var UpdateThesaurus = {};

var UpdateQuerySuggestionsBlockList = {};

var UntagResource = {};

var DescribeThesaurus = {};

var DescribeQuerySuggestionsBlockList = {};

var DescribeFaq = {};

var TagResource = {};

var SubmitFeedback = {};

var ListThesauri = {};

var ListTagsForResource = {};

var ListQuerySuggestionsBlockLists = {};

var ListIndices = {};

var ListFaqs = {};

var ListDataSources = {};

var CreateThesaurus = {};

var CreateQuerySuggestionsBlockList = {};

var CreateFaq = {};

var BatchDeleteDocument = {};

var ListDataSourceSyncJobs = {};

var CreateIndex = {};

var UpdateIndex = {};

var DescribeIndex = {};

var GetQuerySuggestions = {};

var BatchPutDocument = {};

var UpdateDataSource = {};

var DescribeDataSource = {};

var CreateDataSource = {};

var Query = {};

exports.DocumentAttributeValue = DocumentAttributeValue;
exports.UpdateQuerySuggestionsConfig = UpdateQuerySuggestionsConfig;
exports.StopDataSourceSyncJob = StopDataSourceSyncJob;
exports.StartDataSourceSyncJob = StartDataSourceSyncJob;
exports.DescribeQuerySuggestionsConfig = DescribeQuerySuggestionsConfig;
exports.DeleteThesaurus = DeleteThesaurus;
exports.DeleteQuerySuggestionsBlockList = DeleteQuerySuggestionsBlockList;
exports.DeleteIndex = DeleteIndex;
exports.DeleteFaq = DeleteFaq;
exports.DeleteDataSource = DeleteDataSource;
exports.ClearQuerySuggestions = ClearQuerySuggestions;
exports.UpdateThesaurus = UpdateThesaurus;
exports.UpdateQuerySuggestionsBlockList = UpdateQuerySuggestionsBlockList;
exports.UntagResource = UntagResource;
exports.DescribeThesaurus = DescribeThesaurus;
exports.DescribeQuerySuggestionsBlockList = DescribeQuerySuggestionsBlockList;
exports.DescribeFaq = DescribeFaq;
exports.TagResource = TagResource;
exports.SubmitFeedback = SubmitFeedback;
exports.ListThesauri = ListThesauri;
exports.ListTagsForResource = ListTagsForResource;
exports.ListQuerySuggestionsBlockLists = ListQuerySuggestionsBlockLists;
exports.ListIndices = ListIndices;
exports.ListFaqs = ListFaqs;
exports.ListDataSources = ListDataSources;
exports.CreateThesaurus = CreateThesaurus;
exports.CreateQuerySuggestionsBlockList = CreateQuerySuggestionsBlockList;
exports.CreateFaq = CreateFaq;
exports.BatchDeleteDocument = BatchDeleteDocument;
exports.ListDataSourceSyncJobs = ListDataSourceSyncJobs;
exports.CreateIndex = CreateIndex;
exports.UpdateIndex = UpdateIndex;
exports.DescribeIndex = DescribeIndex;
exports.GetQuerySuggestions = GetQuerySuggestions;
exports.BatchPutDocument = BatchPutDocument;
exports.UpdateDataSource = UpdateDataSource;
exports.DescribeDataSource = DescribeDataSource;
exports.CreateDataSource = CreateDataSource;
exports.Query = Query;
/* No side effect */
