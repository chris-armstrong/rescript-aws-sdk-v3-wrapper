type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-identitystore") @new
external createClient: unit => awsServiceClient = "IdentitystoreClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type userName = string
type sensitiveStringType = string
type resourceType = [
  | @as("IDENTITY_STORE") #IDENTITY_STORE
  | @as("USER") #USER
  | @as("GROUP") #GROUP
]
type resourceId = string
type requestId = string
type nextToken = string
type message = string
type maxResults = int
type identityStoreId = string
type groupDisplayName = string
type attributePath = string
@ocaml.doc("<p>A user object, which contains a specified user’s metadata and attributes.</p>")
type user = {
  @ocaml.doc("<p>The identifier for a user in the identity store.</p>") @as("UserId")
  userId: resourceId,
  @ocaml.doc(
    "<p>Contains the user’s username value. The length limit is 128 characters. This value can consist of letters, accented characters, symbols, numbers and punctuation. The characters “<>;:%” are excluded. This value is specified at the time the user is created and stored as an attribute of the user object in the identity store.</p>"
  )
  @as("UserName")
  userName: userName,
}
@ocaml.doc("<p>A group object, which contains a specified group’s metadata and attributes.</p>")
type group = {
  @ocaml.doc(
    "<p>Contains the group’s display name value. The length limit is 1024 characters. This value can consist of letters, accented characters, symbols, numbers, punctuation, tab, new line, carriage return, space and non breaking space in this attribute. The characters “<>;:%” are excluded. This value is specified at the time the group is created and stored as an attribute of the group object in the identity store.</p>"
  )
  @as("DisplayName")
  displayName: groupDisplayName,
  @ocaml.doc("<p>The identifier for a group in the identity store.</p>") @as("GroupId")
  groupId: resourceId,
}
@ocaml.doc(
  "<p>A query filter used by <code>ListUsers</code> and <code>ListGroup</code>. This filter object provides the attribute name and attribute value to search users or groups.</p>"
)
type filter = {
  @ocaml.doc(
    "<p>Represents the data for an attribute. Each attribute value is described as a name-value pair. </p>"
  )
  @as("AttributeValue")
  attributeValue: sensitiveStringType,
  @ocaml.doc(
    "<p>The attribute path used to specify which attribute name to search. Length limit is 255 characters.  For example, <code>UserName</code> is a valid attribute path for the <code>ListUsers</code> API, and <code>DisplayName</code> is a valid attribute path for the <code>ListGroups</code> API.</p>"
  )
  @as("AttributePath")
  attributePath: attributePath,
}
type users = array<user>
type groups = array<group>
type filters = array<filter>

module DescribeUser = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for a user in the identity store.</p>") @as("UserId")
    userId: resourceId,
    @ocaml.doc(
      "<p>The globally unique identifier for the identity store, such as d-1234567890. In this example, d- is a fixed prefix, and 1234567890 is a randomly generated string which contains number and lower case letters. This value is generated at the time that a new identity store is created.</p>"
    )
    @as("IdentityStoreId")
    identityStoreId: identityStoreId,
  }
  type response = {
    @ocaml.doc("<p>The identifier for a user in the identity store.</p>") @as("UserId")
    userId: resourceId,
    @ocaml.doc(
      "<p>Contains the user’s username value. The length limit is 128 characters. This value can consist of letters, accented characters, symbols, numbers and punctuation. The characters “<>;:%” are excluded. This value is specified at the time the user is created and stored as an attribute of the user object in the identity store.</p>"
    )
    @as("UserName")
    userName: userName,
  }
  @module("@aws-sdk/client-identitystore") @new external new: request => t = "DescribeUserCommand"
  let make = (~userId, ~identityStoreId, ()) =>
    new({userId: userId, identityStoreId: identityStoreId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for a group in the identity store.</p>") @as("GroupId")
    groupId: resourceId,
    @ocaml.doc(
      "<p>The globally unique identifier for the identity store, such as d-1234567890. In this example, d- is a fixed prefix, and 1234567890 is a randomly generated string which contains number and lower case letters. This value is generated at the time that a new identity store is created.</p>"
    )
    @as("IdentityStoreId")
    identityStoreId: identityStoreId,
  }
  type response = {
    @ocaml.doc(
      "<p>Contains the group’s display name value. The length limit is 1024 characters. This value can consist of letters, accented characters, symbols, numbers, punctuation, tab, new line, carriage return, space and non breaking space in this attribute. The characters “<>;:%” are excluded. This value is specified at the time the group is created and stored as an attribute of the group object in the identity store.</p>"
    )
    @as("DisplayName")
    displayName: groupDisplayName,
    @ocaml.doc("<p>The identifier for a group in the identity store.</p>") @as("GroupId")
    groupId: resourceId,
  }
  @module("@aws-sdk/client-identitystore") @new external new: request => t = "DescribeGroupCommand"
  let make = (~groupId, ~identityStoreId, ()) =>
    new({groupId: groupId, identityStoreId: identityStoreId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListUsers = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of <code>Filter</code> objects, which is used in the <code>ListUsers</code> and <code>ListGroups</code> request. </p>"
    )
    @as("Filters")
    filters: option<filters>,
    @ocaml.doc(
      "<p>The pagination token used for the <code>ListUsers</code> and <code>ListGroups</code> APIs. This value is generated by the identity store service and is returned in the API response if the total results are more than the size of one page, and when this token is used in the API request to search for the next page.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The maximum number of results to be returned per request, which is used in the <code>ListUsers</code> and <code>ListGroups</code> request to specify how many results to return in one page. The length limit is 50 characters.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The globally unique identifier for the identity store, such as d-1234567890. In this example, d- is a fixed prefix, and 1234567890 is a randomly generated string which contains number and lower case letters. This value is generated at the time that a new identity store is created.</p>"
    )
    @as("IdentityStoreId")
    identityStoreId: identityStoreId,
  }
  type response = {
    @ocaml.doc(
      "<p>The pagination token used for the <code>ListUsers</code> and <code>ListGroups</code> APIs. This value is generated by the identity store service and is returned in the API response if the total results are more than the size of one page, and when this token is used in the API request to search for the next page.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <code>User</code> objects in the identity store.</p>") @as("Users")
    users: users,
  }
  @module("@aws-sdk/client-identitystore") @new external new: request => t = "ListUsersCommand"
  let make = (~identityStoreId, ~filters=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      filters: filters,
      nextToken: nextToken,
      maxResults: maxResults,
      identityStoreId: identityStoreId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGroups = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of <code>Filter</code> objects, which is used in the <code>ListUsers</code> and <code>ListGroups</code> request. </p>"
    )
    @as("Filters")
    filters: option<filters>,
    @ocaml.doc(
      "<p>The pagination token used for the <code>ListUsers</code> and <code>ListGroups</code> APIs. This value is generated by the identity store service and is returned in the API response if the total results are more than the size of one page, and when this token is used in the API request to search for the next page.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The maximum number of results to be returned per request, which is used in the <code>ListUsers</code> and <code>ListGroups</code> request to specify how many results to return in one page. The length limit is 50 characters.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The globally unique identifier for the identity store, such as d-1234567890. In this example, d- is a fixed prefix, and 1234567890 is a randomly generated string which contains number and lower case letters. This value is generated at the time that a new identity store is created.</p>"
    )
    @as("IdentityStoreId")
    identityStoreId: identityStoreId,
  }
  type response = {
    @ocaml.doc(
      "<p>The pagination token used for the <code>ListUsers</code> and <code>ListGroups</code> APIs. This value is generated by the identity store service and is returned in the API response if the total results are more than the size of one page, and when this token is used in the API request to search for the next page.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <code>Group</code> objects in the identity store.</p>") @as("Groups")
    groups: groups,
  }
  @module("@aws-sdk/client-identitystore") @new external new: request => t = "ListGroupsCommand"
  let make = (~identityStoreId, ~filters=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({
      filters: filters,
      nextToken: nextToken,
      maxResults: maxResults,
      identityStoreId: identityStoreId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
