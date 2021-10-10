type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-tagging") @new
external createClient: unit => awsServiceClient = "ResourceGroupsTaggingAPIClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type targetIdType = [@as("ROOT") #ROOT | @as("OU") #OU | @as("ACCOUNT") #ACCOUNT]
type targetId = string
type tagsPerPage = int
type tagValue = string
type tagKey = string
type statusCode = int
type status = string
type startDate = string
type s3Location = string
type s3Bucket = string
type resourcesPerPage = int
type resourceARN = string
type region = string
type paginationToken = string
type nonCompliantResources = float
type maxResultsGetComplianceSummary = int
type lastUpdated = string
type includeComplianceDetails = bool
type groupByAttribute = [
  | @as("RESOURCE_TYPE") #RESOURCE_TYPE
  | @as("REGION") #REGION
  | @as("TARGET_ID") #TARGET_ID
]
type excludeCompliantResources = bool
type exceptionMessage = string
type errorMessage = string
type errorCode = [
  | @as("InvalidParameterException") #InvalidParameterException
  | @as("InternalServiceException") #InternalServiceException
]
type complianceStatus = bool
type amazonResourceType = string
type targetIdFilterList = array<targetId>
type tagValuesOutputList = array<tagValue>
type tagValueList = array<tagValue>
type tagMap = Js.Dict.t<tagValue>
type tagKeyListForUntag = array<tagKey>
type tagKeyList = array<tagKey>
type tagKeyFilterList = array<tagKey>
@ocaml.doc("<p>The metadata that you apply to AWS resources to help you categorize and organize
            them. Each tag consists of a key and a value, both of which you define. For more
            information, see <a href=\"http://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging AWS
                Resources</a> in the <i>AWS General Reference</i>.</p>")
type tag = {
  @ocaml.doc(
    "<p>One part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key). The value can be empty or null.</p>"
  )
  @as("Value")
  value: tagValue,
  @ocaml.doc(
    "<p>One part of a key-value pair that makes up a tag. A key is a general label that acts like a category for more specific tag values.</p>"
  )
  @as("Key")
  key: tagKey,
}
@ocaml.doc("<p>A count of noncompliant resources.</p>")
type summary = {
  @ocaml.doc("<p>The count of noncompliant resources.</p>") @as("NonCompliantResources")
  nonCompliantResources: option<nonCompliantResources>,
  @ocaml.doc("<p>The AWS resource type.</p>") @as("ResourceType")
  resourceType: option<amazonResourceType>,
  @ocaml.doc("<p>The AWS Region that the summary applies to.</p>") @as("Region")
  region: option<region>,
  @ocaml.doc("<p>Whether the target is an account, an OU, or the organization root.</p>")
  @as("TargetIdType")
  targetIdType: option<targetIdType>,
  @ocaml.doc("<p>The account identifier or the root identifier of the organization. If you don't know
            the root ID, you can call the AWS Organizations <a href=\"http://docs.aws.amazon.com/organizations/latest/APIReference/API_ListRoots.html\">ListRoots</a> API.</p>")
  @as("TargetId")
  targetId: option<targetId>,
  @ocaml.doc("<p>The timestamp that shows when this summary was generated in this Region. </p>")
  @as("LastUpdated")
  lastUpdated: option<lastUpdated>,
}
type resourceTypeFilterList = array<amazonResourceType>
type resourceARNListForTagUntag = array<resourceARN>
type resourceARNListForGet = array<resourceARN>
type regionFilterList = array<region>
type groupBy = array<groupByAttribute>
@ocaml.doc("<p>Information about the errors that are returned for each failed resource. This
            information can include <code>InternalServiceException</code> and
                <code>InvalidParameterException</code> errors. It can also include any valid error
            code returned by the AWS service that hosts the resource that the ARN key
            represents.</p>
        <p>The following are common error codes that you might receive from other AWS
            services:</p>
        <ul>
            <li>
                <p>
                  <b>InternalServiceException</b> – This can
                    mean that the Resource Groups Tagging API didn't receive a response from another
                    AWS service. It can also mean the the resource type in the request is not
                    supported by the Resource Groups Tagging API. In these cases, it's safe to retry
                    the request and then call <a href=\"http://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_GetResources.html\">GetResources</a> to verify the changes.</p>
            </li>
            <li>
                <p>
                  <b>AccessDeniedException</b> – This can mean
                    that you need permission to calling tagging operations in the AWS service that
                    contains the resource. For example, to use the Resource Groups Tagging API to
                    tag a CloudWatch alarm resource, you need permission to call <a href=\"http://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_TagResources.html\">
                     <code>TagResources</code>
                  </a>
                    <i>and</i>
                    <a href=\"http://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_TagResource.html\">
                     <code>TagResource</code>
                  </a> in the CloudWatch API. </p>
            </li>
         </ul>
        <p>For more information on errors that are generated from other AWS services, see the
            documentation for that service. </p>")
type failureInfo = {
  @ocaml.doc("<p>The message of the common error.</p>") @as("ErrorMessage")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p>The code of the common error. Valid values include
                <code>InternalServiceException</code>, <code>InvalidParameterException</code>, and
            any valid error code returned by the AWS service that hosts the resource that you want
            to tag.</p>")
  @as("ErrorCode")
  errorCode: option<errorCode>,
  @ocaml.doc("<p>The HTTP status code of the common error.</p>") @as("StatusCode")
  statusCode: option<statusCode>,
}
type tagList_ = array<tag>
@ocaml.doc("<p>A list of tags (keys and values) that are used to specify the associated
            resources.</p>")
type tagFilter = {
  @ocaml.doc(
    "<p>One part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key). The value can be empty or null.</p>"
  )
  @as("Values")
  values: option<tagValueList>,
  @ocaml.doc(
    "<p>One part of a key-value pair that makes up a tag. A key is a general label that acts like a category for more specific tag values.</p>"
  )
  @as("Key")
  key: option<tagKey>,
}
type summaryList = array<summary>
type failedResourcesMap = Js.Dict.t<failureInfo>
@ocaml.doc("<p>Information that shows whether a resource is compliant with the effective tag policy,
            including details on any noncompliant tag keys.</p>")
type complianceDetails = {
  @ocaml.doc("<p>Whether a resource is compliant with the effective tag policy.</p>")
  @as("ComplianceStatus")
  complianceStatus: option<complianceStatus>,
  @ocaml.doc("<p>These are keys defined in the effective policy that are on the resource with either
            incorrect case treatment or noncompliant values. </p>")
  @as("KeysWithNoncompliantValues")
  keysWithNoncompliantValues: option<tagKeyList>,
  @ocaml.doc(
    "<p>These tag keys on the resource are noncompliant with the effective tag policy.</p>"
  )
  @as("NoncompliantKeys")
  noncompliantKeys: option<tagKeyList>,
}
type tagFilterList = array<tagFilter>
@ocaml.doc("<p>A list of resource ARNs and the tags (keys and values) that are associated with
            each.</p>")
type resourceTagMapping = {
  @ocaml.doc("<p>Information that shows whether a resource is compliant with the effective tag policy,
            including details on any noncompliant tag keys.</p>")
  @as("ComplianceDetails")
  complianceDetails: option<complianceDetails>,
  @ocaml.doc("<p>The tags that have been applied to one or more AWS resources.</p>") @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>The ARN of the resource.</p>") @as("ResourceARN") resourceARN: option<resourceARN>,
}
type resourceTagMappingList = array<resourceTagMapping>
@ocaml.doc("<fullname>Resource Groups Tagging API</fullname>")
module StartReportCreation = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Amazon S3 bucket where the report will be stored; for example:</p>
        <p>
            <code>awsexamplebucket</code>
         </p>
        <p>For more information on S3 bucket requirements, including an example bucket policy,
            see the example S3 bucket policy on this page.</p>")
    @as("S3Bucket")
    s3Bucket: s3Bucket,
  }

  @module("@aws-sdk/client-tagging") @new external new: request => t = "StartReportCreationCommand"
  let make = (~s3Bucket, ()) => new({s3Bucket: s3Bucket})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeReportCreation = {
  type t

  type response = {
    @ocaml.doc("<p>Details of the common errors that all operations return.</p>")
    @as("ErrorMessage")
    errorMessage: option<errorMessage>,
    @ocaml.doc("<p>The date and time that the report was started. </p>") @as("StartDate")
    startDate: option<startDate>,
    @ocaml.doc("<p>The path to the Amazon S3 bucket where the report was stored on creation.</p>")
    @as("S3Location")
    s3Location: option<s3Location>,
    @ocaml.doc("<p>Reports the status of the operation.</p>
        <p>The operation status can be one of the following:</p>
        <ul>
            <li>
                <p>
                  <code>RUNNING</code> - Report creation is in progress.</p>
            </li>
            <li>
                <p>
                  <code>SUCCEEDED</code> - Report creation is complete. You can open the report
                    from the Amazon S3 bucket that you specified when you ran
                        <code>StartReportCreation</code>.</p>
            </li>
            <li>
                <p>
                  <code>FAILED</code> - Report creation timed out or the Amazon S3 bucket is not
                    accessible. </p>
            </li>
            <li>
                <p>
                  <code>NO REPORT</code> - No report was generated in the last 90 days.</p>
            </li>
         </ul>")
    @as("Status")
    status: option<status>,
  }
  @module("@aws-sdk/client-tagging") @new external new: unit => t = "DescribeReportCreationCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTagValues = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the tag key for which you want to list all existing values that are
            currently used in the specified AWS Region for the calling AWS account.</p>")
    @as("Key")
    key: tagKey,
    @ocaml.doc("<p>Specifies a <code>PaginationToken</code> response value from a 
    previous request to indicate that you want the next page of results. Leave this parameter empty 
    in your initial request.</p>")
    @as("PaginationToken")
    paginationToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>A list of all tag values for the specified key currently used in the specified AWS
            Region for the calling AWS account.</p>")
    @as("TagValues")
    tagValues: option<tagValuesOutputList>,
    @ocaml.doc("<p>A string that indicates that there is more data available than this
    response contains. To receive the next part of the response, specify this response value 
    as the <code>PaginationToken</code> value in the request for the next page.</p>")
    @as("PaginationToken")
    paginationToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-tagging") @new external new: request => t = "GetTagValuesCommand"
  let make = (~key, ~paginationToken=?, ()) => new({key: key, paginationToken: paginationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTagKeys = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies a <code>PaginationToken</code> response value from a 
    previous request to indicate that you want the next page of results. Leave this parameter empty 
    in your initial request.</p>")
    @as("PaginationToken")
    paginationToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>A list of all tag keys in the AWS account.</p>") @as("TagKeys")
    tagKeys: option<tagKeyList>,
    @ocaml.doc("<p>A string that indicates that there is more data available than this
    response contains. To receive the next part of the response, specify this response value 
    as the <code>PaginationToken</code> value in the request for the next page.</p>")
    @as("PaginationToken")
    paginationToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-tagging") @new external new: request => t = "GetTagKeysCommand"
  let make = (~paginationToken=?, ()) => new({paginationToken: paginationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResources = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies a list of tag keys that you want to remove from the specified
            resources.</p>")
    @as("TagKeys")
    tagKeys: tagKeyListForUntag,
    @ocaml.doc("<p>Specifies a list of ARNs of the resources that you want to remove tags from.</p>
        <p>An ARN (Amazon Resource Name) uniquely identifies a resource. For more information,
            see <a href=\"http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon
                Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS
                General Reference</i>.</p>")
    @as("ResourceARNList")
    resourceARNList: resourceARNListForTagUntag,
  }
  type response = {
    @ocaml.doc("<p>A map containing a key-value pair for each failed item that couldn't be untagged. The
            key is the ARN of the failed resource. The value is a <code>FailureInfo</code> object
            that contains an error code, a status code, and an error message. If there are no
            errors, the <code>FailedResourcesMap</code> is empty.</p>")
    @as("FailedResourcesMap")
    failedResourcesMap: option<failedResourcesMap>,
  }
  @module("@aws-sdk/client-tagging") @new external new: request => t = "UntagResourcesCommand"
  let make = (~tagKeys, ~resourceARNList, ()) =>
    new({tagKeys: tagKeys, resourceARNList: resourceARNList})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResources = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies a list of tags that you want to add to the specified resources. A tag
            consists of a key and a value that you define.</p>")
    @as("Tags")
    tags: tagMap,
    @ocaml.doc("<p>Specifies the list of ARNs of the resources that you want to apply tags to.</p>
        <p>An ARN (Amazon Resource Name) uniquely identifies a resource. For more information,
            see <a href=\"http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon
                Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS
                General Reference</i>.</p>")
    @as("ResourceARNList")
    resourceARNList: resourceARNListForTagUntag,
  }
  type response = {
    @ocaml.doc("<p>A map containing a key-value pair for each failed item that couldn't be tagged. The
            key is the ARN of the failed resource. The value is a <code>FailureInfo</code> object
            that contains an error code, a status code, and an error message. If there are no
            errors, the <code>FailedResourcesMap</code> is empty.</p>")
    @as("FailedResourcesMap")
    failedResourcesMap: option<failedResourcesMap>,
  }
  @module("@aws-sdk/client-tagging") @new external new: request => t = "TagResourcesCommand"
  let make = (~tags, ~resourceARNList, ()) => new({tags: tags, resourceARNList: resourceARNList})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetComplianceSummary = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies a <code>PaginationToken</code> response value from a 
    previous request to indicate that you want the next page of results. Leave this parameter empty 
    in your initial request.</p>")
    @as("PaginationToken")
    paginationToken: option<paginationToken>,
    @ocaml.doc("<p>Specifies the maximum number of results to be returned in each page. A 
    query can return fewer than this maximum, even if there are more results still to return. You
    should always check the <code>PaginationToken</code> response value to see if there are more
    results. You can specify a minimum of 1 and a maximum value of 100.</p>")
    @as("MaxResults")
    maxResults: option<maxResultsGetComplianceSummary>,
    @ocaml.doc("<p>Specifies a list of attributes to group the counts of noncompliant resources by. If
            supplied, the counts are sorted by those attributes.</p>")
    @as("GroupBy")
    groupBy: option<groupBy>,
    @ocaml.doc("<p>Specifies that you want the response to include information for only resources that
            have tags with the specified tag keys. If you use this parameter, the count of returned
            noncompliant resources includes only resources that have the specified tag keys.</p>")
    @as("TagKeyFilters")
    tagKeyFilters: option<tagKeyFilterList>,
    @ocaml.doc("<p>Specifies that you want the response to include information for only resources of the
            specified types. The format of each resource type is
            <code>service[:resourceType]</code>. For example, specifying a resource type of
                <code>ec2</code> returns all Amazon EC2 resources (which includes EC2 instances).
            Specifying a resource type of <code>ec2:instance</code> returns only EC2 instances. </p>
        <p>The string for each service name and resource type is the same as that embedded in a
            resource's Amazon Resource Name (ARN). Consult the <i>AWS General
                Reference</i> for the following:</p>
        <ul>
            <li>
                <p>For a list of service name strings, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces\">AWS Service Namespaces</a>.</p>
            </li>
            <li>
                <p>For resource type strings, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arns-syntax\">Example
                        ARNs</a>.</p>
            </li>
            <li>
                <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names
                        (ARNs) and AWS Service Namespaces</a>.</p>
            </li>
         </ul>
        <p>You can specify multiple resource types by using a comma separated array. The array
            can include up to 100 items. Note that the length constraint requirement applies to each
            resource type filter. </p>")
    @as("ResourceTypeFilters")
    resourceTypeFilters: option<resourceTypeFilterList>,
    @ocaml.doc("<p>Specifies a list of AWS Regions to limit the output by. If you use this parameter,
            the count of returned noncompliant resources includes only resources in the specified
            Regions.</p>")
    @as("RegionFilters")
    regionFilters: option<regionFilterList>,
    @ocaml.doc("<p>Specifies target identifiers (usually, specific account IDs) to limit the output by.
            If you use this parameter, the count of returned noncompliant resources includes only
            resources with the specified target IDs.</p>")
    @as("TargetIdFilters")
    targetIdFilters: option<targetIdFilterList>,
  }
  type response = {
    @ocaml.doc("<p>A string that indicates that there is more data available than this
    response contains. To receive the next part of the response, specify this response value 
    as the <code>PaginationToken</code> value in the request for the next page.</p>")
    @as("PaginationToken")
    paginationToken: option<paginationToken>,
    @ocaml.doc("<p>A table that shows counts of noncompliant resources.</p>") @as("SummaryList")
    summaryList: option<summaryList>,
  }
  @module("@aws-sdk/client-tagging") @new external new: request => t = "GetComplianceSummaryCommand"
  let make = (
    ~paginationToken=?,
    ~maxResults=?,
    ~groupBy=?,
    ~tagKeyFilters=?,
    ~resourceTypeFilters=?,
    ~regionFilters=?,
    ~targetIdFilters=?,
    (),
  ) =>
    new({
      paginationToken: paginationToken,
      maxResults: maxResults,
      groupBy: groupBy,
      tagKeyFilters: tagKeyFilters,
      resourceTypeFilters: resourceTypeFilters,
      regionFilters: regionFilters,
      targetIdFilters: targetIdFilters,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResources = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies a list of ARNs of resources for which you want to retrieve tag data. You
            can't specify both this parameter and any of the pagination parameters
                (<code>ResourcesPerPage</code>, <code>TagsPerPage</code>,
                <code>PaginationToken</code>) in the same request. If you specify both, you get an
                <code>Invalid Parameter</code> exception.</p>
        <p>If a resource specified by this parameter doesn't exist, it doesn't generate an error;
            it simply isn't included in the response.</p>
        <p>An ARN (Amazon Resource Name) uniquely identifies a resource. For more information,
            see <a href=\"http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon
                Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS
                General Reference</i>.</p>")
    @as("ResourceARNList")
    resourceARNList: option<resourceARNListForGet>,
    @ocaml.doc("<p>Specifies whether to exclude resources that are compliant with the tag policy. Set
            this to <code>true</code> if you are interested in retrieving information on
            noncompliant resources only.</p>
        <p>You can use this parameter only if the <code>IncludeComplianceDetails</code> parameter
            is also set to <code>true</code>.</p>")
    @as("ExcludeCompliantResources")
    excludeCompliantResources: option<excludeCompliantResources>,
    @ocaml.doc("<p>Specifies whether to include details regarding the compliance with the effective tag
            policy. Set this to <code>true</code> to determine whether resources are compliant with
            the tag policy and to get details.</p>")
    @as("IncludeComplianceDetails")
    includeComplianceDetails: option<includeComplianceDetails>,
    @ocaml.doc("<p>Specifies the resource types that you want included in the response. The format of
            each resource type is <code>service[:resourceType]</code>. For example, specifying a
            resource type of <code>ec2</code> returns all Amazon EC2 resources (which includes EC2
            instances). Specifying a resource type of <code>ec2:instance</code> returns only EC2
            instances. </p>
        <p>The string for each service name and resource type is the same as that embedded in a
            resource's Amazon Resource Name (ARN). Consult the <i>AWS General
                Reference</i> for the following:</p>
        <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and
                AWS Service Namespaces</a>.</p>
        <p>You can specify multiple resource types by using an array. The array can include up to
            100 items. Note that the length constraint requirement applies to each resource type
            filter. </p>")
    @as("ResourceTypeFilters")
    resourceTypeFilters: option<resourceTypeFilterList>,
    @ocaml.doc("<p>AWS recommends using <code>ResourcesPerPage</code> instead of this parameter.</p>
        <p>A limit that restricts the number of tags (key and value pairs) returned by
                <code>GetResources</code> in paginated output. A resource with no tags is counted as
            having one tag (one key and value pair).</p>
        <p>
            <code>GetResources</code> does not split a resource and its associated tags across
            pages. If the specified <code>TagsPerPage</code> would cause such a break, a
                <code>PaginationToken</code> is returned in place of the affected resource and its
            tags. Use that token in another request to get the remaining data. For example, if you
            specify a <code>TagsPerPage</code> of <code>100</code> and the account has 22 resources
            with 10 tags each (meaning that each resource has 10 key and value pairs), the output
            will consist of three pages. The first page displays the first 10 resources, each with
            its 10 tags. The second page displays the next 10 resources, each with its 10 tags. The
            third page displays the remaining 2 resources, each with its 10 tags.</p>
        <p>You can set <code>TagsPerPage</code> to a minimum of 100 items up to a maximum of 500
            items.</p>")
    @as("TagsPerPage")
    tagsPerPage: option<tagsPerPage>,
    @ocaml.doc("<p>Specifies the maximum number of results to be returned in each page. A 
    query can return fewer than this maximum, even if there are more results still to return. You
    should always check the <code>PaginationToken</code> response value to see if there are more
    results. You can specify a minimum of 1 and a maximum value of 100.</p>")
    @as("ResourcesPerPage")
    resourcesPerPage: option<resourcesPerPage>,
    @ocaml.doc("<p>Specifies a list of TagFilters (keys and values) to restrict the output to only those
            resources that have the specified tag and, if included, the specified value. Each
                <code>TagFilter</code> must contain a key with values optional. A request can
            include up to 50 keys, and each key can include up to 20 values. </p>
        <p>Note the following when deciding how to use TagFilters:</p>
        <ul>
            <li>
                <p>If you <i>don't</i> specify a <code>TagFilter</code>, the
                    response includes all resources that are currently tagged or ever had a tag.
                    Resources that currently don't have tags are shown with an empty tag set, like
                    this: <code>\"Tags\": []</code>.</p>
            </li>
            <li>
                <p>If you specify more than one filter in a single request, the response returns
                    only those resources that satisfy all filters.</p>
            </li>
            <li>
                <p>If you specify a filter that contains more than one value for a key, the
                    response returns resources that match any of the specified values for that
                    key.</p>
            </li>
            <li>
                <p>If you don't specify any values for a key, the response returns resources that
                    are tagged with that key and any or no value.</p>
                <p>For example, for the following filters: <code>filter1= {keyA,{value1}}</code>,
                        <code>filter2={keyB,{value2,value3,value4}}</code>, <code>filter3=
                        {keyC}</code>:</p>
                <ul>
                  <li>
                        <p>
                        <code>GetResources({filter1})</code> returns resources tagged with
                                <code>key1=value1</code>
                     </p>
                    </li>
                  <li>
                        <p>
                        <code>GetResources({filter2})</code> returns resources tagged with
                                <code>key2=value2</code> or <code>key2=value3</code> or
                                <code>key2=value4</code>
                     </p>
                    </li>
                  <li>
                        <p>
                        <code>GetResources({filter3})</code> returns resources tagged with any
                            tag with the key <code>key3</code>, and with any or no value</p>
                    </li>
                  <li>
                        <p>
                        <code>GetResources({filter1,filter2,filter3})</code> returns resources
                            tagged with <code>(key1=value1) and (key2=value2 or key2=value3 or
                                key2=value4) and (key3, any or no value)</code>
                     </p>
                    </li>
               </ul>
            </li>
         </ul>")
    @as("TagFilters")
    tagFilters: option<tagFilterList>,
    @ocaml.doc("<p>Specifies a <code>PaginationToken</code> response value from a 
    previous request to indicate that you want the next page of results. Leave this parameter empty 
    in your initial request.</p>")
    @as("PaginationToken")
    paginationToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>A list of resource ARNs and the tags (keys and values) associated with
    those ARNs.</p>")
    @as("ResourceTagMappingList")
    resourceTagMappingList: option<resourceTagMappingList>,
    @ocaml.doc("<p>A string that indicates that there is more data available than this
    response contains. To receive the next part of the response, specify this response value 
    as the <code>PaginationToken</code> value in the request for the next page.</p>")
    @as("PaginationToken")
    paginationToken: option<paginationToken>,
  }
  @module("@aws-sdk/client-tagging") @new external new: request => t = "GetResourcesCommand"
  let make = (
    ~resourceARNList=?,
    ~excludeCompliantResources=?,
    ~includeComplianceDetails=?,
    ~resourceTypeFilters=?,
    ~tagsPerPage=?,
    ~resourcesPerPage=?,
    ~tagFilters=?,
    ~paginationToken=?,
    (),
  ) =>
    new({
      resourceARNList: resourceARNList,
      excludeCompliantResources: excludeCompliantResources,
      includeComplianceDetails: includeComplianceDetails,
      resourceTypeFilters: resourceTypeFilters,
      tagsPerPage: tagsPerPage,
      resourcesPerPage: resourcesPerPage,
      tagFilters: tagFilters,
      paginationToken: paginationToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
