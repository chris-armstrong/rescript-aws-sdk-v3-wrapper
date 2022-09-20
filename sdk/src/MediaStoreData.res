type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-mediastore") @new
external createClient: unit => awsServiceClient = "MediaStoreDataClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type statusCode = int
type uploadAvailability = [@as("STREAMING") #STREAMING | @as("STANDARD") #STANDARD]
type timeStamp = Js.Date.t
type stringPrimitive = string
type storageClass = [@as("TEMPORAL") #TEMPORAL]
type sha256Hash = string
type rangePattern = string
type payloadBlob = NodeJs.Buffer.t
type pathNaming = string
type paginationToken = string
type nonNegativeLong = float
type listPathNaming = string
type listLimit = int
type itemType = [@as("FOLDER") #FOLDER | @as("OBJECT") #OBJECT]
type itemName = string
type errorMessage = string
type etag = string
type contentType = string
type contentRangePattern = string
@ocaml.doc("<p>A metadata entry for a folder or object.</p>")
type item = {
  @ocaml.doc("<p>The length of the item in bytes.</p>") @as("ContentLength")
  contentLength: option<nonNegativeLong>,
  @ocaml.doc("<p>The content type of the item.</p>") @as("ContentType")
  contentType: option<contentType>,
  @ocaml.doc("<p>The date and time that the item was last modified.</p>") @as("LastModified")
  lastModified: option<timeStamp>,
  @ocaml.doc("<p>The ETag that represents a unique instance of the item.</p>") @as("ETag")
  etag: option<etag>,
  @ocaml.doc("<p>The item type (folder or object).</p>") @as("Type") type_: option<itemType>,
  @ocaml.doc("<p>The name of the item.</p>") @as("Name") name: option<itemName>,
}
type itemList = array<item>
@ocaml.doc("<p>An AWS Elemental MediaStore asset is an object, similar to an object in the Amazon S3
         service. Objects are the fundamental entities that are stored in AWS Elemental
         MediaStore.</p>")
module PutObject = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates the availability of an object while it is still uploading. If the value is set to <code>streaming</code>, the object is available for
            downloading after some initial buffering but before the object is uploaded completely. If the value is set to <code>standard</code>, the object is
            available for downloading only when it is uploaded completely. The default value for this header is <code>standard</code>.</p>
        <p>To use this header, you must also set the HTTP <code>Transfer-Encoding</code> header to <code>chunked</code>.</p>")
    @as("UploadAvailability")
    uploadAvailability: option<uploadAvailability>,
    @ocaml.doc("<p>Indicates the storage class of a <code>Put</code> request. Defaults to
         high-performance temporal storage class, and objects are persisted into durable storage
         shortly after being received.</p>")
    @as("StorageClass")
    storageClass: option<storageClass>,
    @ocaml.doc("<p>An optional <code>CacheControl</code> header that allows the caller to control the
         object's cache behavior. Headers can be passed in as specified in the HTTP at <a href=\"https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9\">https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9</a>.</p>
         <p>Headers with a custom user-defined value are also accepted.</p>")
    @as("CacheControl")
    cacheControl: option<stringPrimitive>,
    @ocaml.doc("<p>The content type of the object.</p>") @as("ContentType")
    contentType: option<contentType>,
    @ocaml.doc("<p>The path (including the file name) where the object is stored in the container.
         Format: <folder name>/<folder name>/<file name></p>
         <p>For example, to upload the file <code>mlaw.avi</code> to the folder path
            <code>premium\\canada</code> in the container <code>movies</code>, enter the path
            <code>premium/canada/mlaw.avi</code>.</p>
         <p>Do not include the container name in this path.</p>
         <p>If the path includes any folders that don't exist yet, the service creates them. For
         example, suppose you have an existing <code>premium/usa</code> subfolder. If you specify
            <code>premium/canada</code>, the service creates a <code>canada</code> subfolder in the
            <code>premium</code> folder. You then have two subfolders, <code>usa</code> and
            <code>canada</code>, in the <code>premium</code> folder. </p>
         <p>There is no correlation between the path to the source and the path (folders) in the
         container in AWS Elemental MediaStore.</p>
         <p>For more information about folders and how they exist in a container, see the <a href=\"http://docs.aws.amazon.com/mediastore/latest/ug/\">AWS Elemental MediaStore User
            Guide</a>.</p>
         <p>The file name is the name that is assigned to the file that you upload. The file can
         have the same name inside and outside of AWS Elemental MediaStore, or it can have the same
         name. The file name can include or omit an extension. </p>")
    @as("Path")
    path: pathNaming,
    @ocaml.doc("<p>The bytes to be stored. </p>") @as("Body") body: payloadBlob,
  }
  type response = {
    @ocaml.doc("<p>The storage class where the object was persisted. The class should be
         “Temporal”.</p>")
    @as("StorageClass")
    storageClass: option<storageClass>,
    @ocaml.doc("<p>Unique identifier of the object in the container.</p>") @as("ETag")
    etag: option<etag>,
    @ocaml.doc("<p>The SHA256 digest of the object that is persisted.</p>") @as("ContentSHA256")
    contentSHA256: option<sha256Hash>,
  }
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "PutObjectCommand"
  let make = (
    ~path,
    ~body,
    ~uploadAvailability=?,
    ~storageClass=?,
    ~cacheControl=?,
    ~contentType=?,
    (),
  ) =>
    new({
      uploadAvailability: uploadAvailability,
      storageClass: storageClass,
      cacheControl: cacheControl,
      contentType: contentType,
      path: path,
      body: body,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetObject = {
  type t
  type request = {
    @ocaml.doc("<p>The range bytes of an object to retrieve. For more information about the
          <code>Range</code> header, see <a href=\"http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35\">http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35</a>. AWS Elemental MediaStore ignores this header for partially uploaded objects that have streaming upload availability.</p>")
    @as("Range")
    range: option<rangePattern>,
    @ocaml.doc("<p>The path (including the file name) where the object is stored in the container.
         Format: <folder name>/<folder name>/<file name></p>
         <p>For example, to upload the file <code>mlaw.avi</code> to the folder path
            <code>premium\\canada</code> in the container <code>movies</code>, enter the path
            <code>premium/canada/mlaw.avi</code>.</p>
         <p>Do not include the container name in this path.</p>
         <p>If the path includes any folders that don't exist yet, the service creates them. For
         example, suppose you have an existing <code>premium/usa</code> subfolder. If you specify
            <code>premium/canada</code>, the service creates a <code>canada</code> subfolder in the
            <code>premium</code> folder. You then have two subfolders, <code>usa</code> and
            <code>canada</code>, in the <code>premium</code> folder. </p>
         <p>There is no correlation between the path to the source and the path (folders) in the
         container in AWS Elemental MediaStore.</p>
         <p>For more information about folders and how they exist in a container, see the <a href=\"http://docs.aws.amazon.com/mediastore/latest/ug/\">AWS Elemental MediaStore User
            Guide</a>.</p>
         <p>The file name is the name that is assigned to the file that you upload. The file can
         have the same name inside and outside of AWS Elemental MediaStore, or it can have the same
         name. The file name can include or omit an extension. </p>")
    @as("Path")
    path: pathNaming,
  }
  type response = {
    @ocaml.doc("<p>The HTML status code of the request. Status codes ranging from 200 to 299 indicate
         success. All other status codes indicate the type of error that occurred.</p>")
    @as("StatusCode")
    statusCode: statusCode,
    @ocaml.doc("<p>The date and time that the object was last modified.</p>") @as("LastModified")
    lastModified: option<timeStamp>,
    @ocaml.doc("<p>The ETag that represents a unique instance of the object.</p>") @as("ETag")
    etag: option<etag>,
    @ocaml.doc("<p>The content type of the object.</p>") @as("ContentType")
    contentType: option<contentType>,
    @ocaml.doc("<p>The length of the object in bytes.</p>") @as("ContentLength")
    contentLength: option<nonNegativeLong>,
    @ocaml.doc("<p>The range of bytes to retrieve.</p>") @as("ContentRange")
    contentRange: option<contentRangePattern>,
    @ocaml.doc("<p>An optional <code>CacheControl</code> header that allows the caller to control the
         object's cache behavior. Headers can be passed in as specified in the HTTP spec at <a href=\"https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9\">https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9</a>.</p>
         <p>Headers with a custom user-defined value are also accepted.</p>")
    @as("CacheControl")
    cacheControl: option<stringPrimitive>,
    @ocaml.doc("<p>The bytes of the object. </p>") @as("Body") body: option<payloadBlob>,
  }
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "GetObjectCommand"
  let make = (~path, ~range=?, ()) => new({range: range, path: path})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeObject = {
  type t
  type request = {
    @ocaml.doc("<p>The path (including the file name) where the object is stored in the container.
         Format: <folder name>/<folder name>/<file name></p>")
    @as("Path")
    path: pathNaming,
  }
  type response = {
    @ocaml.doc("<p>The date and time that the object was last modified.</p>") @as("LastModified")
    lastModified: option<timeStamp>,
    @ocaml.doc("<p>An optional <code>CacheControl</code> header that allows the caller to control the
         object's cache behavior. Headers can be passed in as specified in the HTTP at <a href=\"https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9\">https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9</a>.</p>
         <p>Headers with a custom user-defined value are also accepted.</p>")
    @as("CacheControl")
    cacheControl: option<stringPrimitive>,
    @ocaml.doc("<p>The length of the object in bytes.</p>") @as("ContentLength")
    contentLength: option<nonNegativeLong>,
    @ocaml.doc("<p>The content type of the object.</p>") @as("ContentType")
    contentType: option<contentType>,
    @ocaml.doc("<p>The ETag that represents a unique instance of the object.</p>") @as("ETag")
    etag: option<etag>,
  }
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "DescribeObjectCommand"
  let make = (~path, ()) => new({path: path})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteObject = {
  type t
  type request = {
    @ocaml.doc("<p>The path (including the file name) where the object is stored in the container.
         Format: <folder name>/<folder name>/<file name></p>")
    @as("Path")
    path: pathNaming,
  }
  type response = {.}
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "DeleteObjectCommand"
  let make = (~path, ()) => new({path: path})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListItems = {
  type t
  type request = {
    @ocaml.doc("<p>The token that identifies which batch of results that you want to see. For example,
         you submit a <code>ListItems</code> request with <code>MaxResults</code> set at 500. The
         service returns the first batch of results (up to 500) and a <code>NextToken</code> value.
         To see the next batch of results, you can submit the <code>ListItems</code> request a
         second time and specify the <code>NextToken</code> value.</p>
         <p>Tokens expire after 15 minutes.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of results to return per API request. For example, you submit a
            <code>ListItems</code> request with <code>MaxResults</code> set at 500. Although 2,000
         items match your request, the service returns no more than the first 500 items. (The
         service also returns a <code>NextToken</code> value that you can use to fetch the next
         batch of results.) The service might return fewer results than the <code>MaxResults</code>
         value.</p>
         <p>If <code>MaxResults</code> is not included in the request, the service defaults to
         pagination with a maximum of 1,000 results per page.</p>")
    @as("MaxResults")
    maxResults: option<listLimit>,
    @ocaml.doc("<p>The path in the container from which to retrieve items. Format: <folder
         name>/<folder name>/<file name></p>")
    @as("Path")
    path: option<listPathNaming>,
  }
  type response = {
    @ocaml.doc("<p>The token that can be used in a request to view the next set of results. For example,
         you submit a <code>ListItems</code> request that matches 2,000 items with
            <code>MaxResults</code> set at 500. The service returns the first batch of results (up
         to 500) and a <code>NextToken</code> value that can be used to fetch the next batch of
         results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The metadata entries for the folders and objects at the requested path.</p>")
    @as("Items")
    items: option<itemList>,
  }
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "ListItemsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~path=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, path: path})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
