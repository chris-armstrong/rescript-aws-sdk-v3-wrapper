type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type statusCode = int;
type uploadAvailability = [@as("STREAMING") #STREAMING | @as("STANDARD") #STANDARD]
type timeStamp = Js.Date.t;
type stringPrimitive = string
type storageClass = [@as("TEMPORAL") #TEMPORAL]
type sHA256Hash = string
type rangePattern = string
type payloadBlob = NodeJs.Buffer.t;
type pathNaming = string
type paginationToken = string
type nonNegativeLong = float;
type listPathNaming = string
type listLimit = int;
type itemType = [@as("FOLDER") #FOLDER | @as("OBJECT") #OBJECT]
type itemName = string
type errorMessage = string
type eTag = string
type contentType = string
type contentRangePattern = string
type item = {
@as("ContentLength") contentLength: nonNegativeLong,
@as("ContentType") contentType: contentType,
@as("LastModified") lastModified: timeStamp,
@as("ETag") eTag: eTag,
@as("Type") type_: itemType,
@as("Name") name: itemName
}
type itemList = array<item>
type clientType;
@module("@aws-sdk/client-mediastore") @new external createClient: unit => clientType = "MediaStoreDataClient";
module PutObject = {
  type t;
  type request = {
@as("UploadAvailability") uploadAvailability: uploadAvailability,
@as("StorageClass") storageClass: storageClass,
@as("CacheControl") cacheControl: stringPrimitive,
@as("ContentType") contentType: contentType,
@as("Path") path: option<pathNaming>,
@as("Body") body: option<payloadBlob>
}
  type response = {
@as("StorageClass") storageClass: storageClass,
@as("ETag") eTag: eTag,
@as("ContentSHA256") contentSHA256: sHA256Hash
}
  @module("@aws-sdk/client-mediastore") @new external new_: (Js.Promise.t<request>) => t = "PutObjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetObject = {
  type t;
  type request = {
@as("Range") range: rangePattern,
@as("Path") path: option<pathNaming>
}
  type response = {
@as("StatusCode") statusCode: option<statusCode>,
@as("LastModified") lastModified: timeStamp,
@as("ETag") eTag: eTag,
@as("ContentType") contentType: contentType,
@as("ContentLength") contentLength: nonNegativeLong,
@as("ContentRange") contentRange: contentRangePattern,
@as("CacheControl") cacheControl: stringPrimitive,
@as("Body") body: payloadBlob
}
  @module("@aws-sdk/client-mediastore") @new external new_: (Js.Promise.t<request>) => t = "GetObjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeObject = {
  type t;
  type request = {
@as("Path") path: option<pathNaming>
}
  type response = {
@as("LastModified") lastModified: timeStamp,
@as("CacheControl") cacheControl: stringPrimitive,
@as("ContentLength") contentLength: nonNegativeLong,
@as("ContentType") contentType: contentType,
@as("ETag") eTag: eTag
}
  @module("@aws-sdk/client-mediastore") @new external new_: (Js.Promise.t<request>) => t = "DescribeObjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteObject = {
  type t;
  type request = {
@as("Path") path: option<pathNaming>
}
  type response = unit
  @module("@aws-sdk/client-mediastore") @new external new_: (Js.Promise.t<request>) => t = "DeleteObjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListItems = {
  type t;
  type request = {
@as("NextToken") nextToken: paginationToken,
@as("MaxResults") maxResults: listLimit,
@as("Path") path: listPathNaming
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("Items") items: itemList
}
  @module("@aws-sdk/client-mediastore") @new external new_: (Js.Promise.t<request>) => t = "ListItemsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
