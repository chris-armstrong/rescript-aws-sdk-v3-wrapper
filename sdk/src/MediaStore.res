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
external createClient: unit => awsServiceClient = "MediaStoreClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timeStamp = Js.Date.t
type tagValue = string
type tagKey = string
type paginationToken = string
type origin = string
type objectGroupName = string
type objectGroup = string
type methodName = [@as("HEAD") #HEAD | @as("DELETE") #DELETE | @as("GET") #GET | @as("PUT") #PUT]
type maxAgeSeconds = int
type lifecyclePolicy = string
type header = string
type errorMessage = string
type endpoint = string
type containerStatus = [
  | @as("DELETING") #DELETING
  | @as("CREATING") #CREATING
  | @as("ACTIVE") #ACTIVE
]
type containerPolicy = string
type containerName = string
type containerListLimit = int
type containerLevelMetrics = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type containerAccessLoggingEnabled = bool
type containerARN = string
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A collection of tags associated with a container. Each tag consists of a key:value pair, which can be anything you define. Typically, the tag key
            represents a category (such as \"environment\") and the tag value represents a specific value within that category (such as \"test,\" \"development,\" or
            \"production\"). You can add up to 50 
            tags to each container. For more information about tagging, including naming and usage conventions, see <a href=\"https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html\">Tagging Resources in MediaStore</a>.</p>")
type tag = {
  @ocaml.doc("<p>Part of the key:value pair that defines a tag. You can use a tag value to describe a specific value within a category, such as \"companyA\" or
            \"companyB.\" Tag values are case-sensitive.</p>")
  @as("Value")
  value: option<tagValue>,
  @ocaml.doc("<p>Part of the key:value pair that defines a tag. You can use a tag key to describe a category of information, such as \"customer.\" Tag keys are
            case-sensitive.</p>")
  @as("Key")
  key: tagKey,
}
@ocaml.doc(
  "<p>A setting that enables metrics at the object level. Each rule contains an object group and an object group name. If the policy includes the MetricPolicyRules parameter, you must include at least one rule. Each metric policy can include up to five rules by default. You can also <a href=\"https://console.aws.amazon.com/servicequotas/home?region=us-east-1#!/services/mediastore/quotas\">request a quota increase</a> to allow up to 300 rules per policy.</p>"
)
type metricPolicyRule = {
  @ocaml.doc("<p>A name that allows you to refer to the object group.</p>") @as("ObjectGroupName")
  objectGroupName: objectGroupName,
  @ocaml.doc(
    "<p>A path or file name that defines which objects to include in the group. Wildcards (*) are acceptable.</p>"
  )
  @as("ObjectGroup")
  objectGroup: objectGroup,
}
type exposeHeaders = array<header>
@ocaml.doc("<p>This section describes operations that you can perform on an AWS Elemental MediaStore
         container.</p>")
type container = {
  @ocaml.doc(
    "<p>The state of access logging on the container. This value is <code>false</code> by default, indicating that AWS Elemental MediaStore does not send access logs to Amazon CloudWatch Logs. When you enable access logging on the container, MediaStore changes this value to <code>true</code>, indicating that the service delivers access logs for objects stored in that container to CloudWatch Logs.</p>"
  )
  @as("AccessLoggingEnabled")
  accessLoggingEnabled: option<containerAccessLoggingEnabled>,
  @ocaml.doc("<p>The status of container creation or deletion. The status is one of the following:
            <code>CREATING</code>, <code>ACTIVE</code>, or <code>DELETING</code>. While the service
         is creating the container, the status is <code>CREATING</code>. When the endpoint is
         available, the status changes to <code>ACTIVE</code>.</p>")
  @as("Status")
  status: option<containerStatus>,
  @ocaml.doc("<p>The name of the container.</p>") @as("Name") name: option<containerName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the container. The ARN has the following
         format:</p>
         <p>arn:aws:<region>:<account that owns this container>:container/<name of
         container> </p>
         <p>For example: arn:aws:mediastore:us-west-2:111122223333:container/movies </p>")
  @as("ARN")
  arn: option<containerARN>,
  @ocaml.doc("<p>Unix timestamp.</p>") @as("CreationTime") creationTime: option<timeStamp>,
  @ocaml.doc("<p>The DNS endpoint of the container. Use the endpoint to identify the specific
         container when sending requests to the data plane. The service assigns this value when the
         container is created. Once the value has been assigned, it does not change.</p>")
  @as("Endpoint")
  endpoint: option<endpoint>,
}
type allowedOrigins = array<origin>
type allowedMethods = array<methodName>
type allowedHeaders = array<header>
type tagList_ = array<tag>
type metricPolicyRules = array<metricPolicyRule>
@ocaml.doc("<p>A rule for a CORS policy. You can add up to 100 rules to a CORS policy. If more than
         one rule applies, the service uses the first applicable rule listed.</p>")
type corsRule = {
  @ocaml.doc("<p>One or more headers in the response that you want users to be able to access from
         their applications (for example, from a JavaScript <code>XMLHttpRequest</code>
         object).</p>
         <p>This element is optional for each rule.</p>")
  @as("ExposeHeaders")
  exposeHeaders: option<exposeHeaders>,
  @ocaml.doc("<p>The time in seconds that your browser caches the preflight response for the specified
         resource.</p>
         <p>A CORS rule can have only one <code>MaxAgeSeconds</code> element.</p>")
  @as("MaxAgeSeconds")
  maxAgeSeconds: option<maxAgeSeconds>,
  @ocaml.doc("<p>Specifies which headers are allowed in a preflight <code>OPTIONS</code> request
         through the <code>Access-Control-Request-Headers</code> header. Each header name that is
         specified in <code>Access-Control-Request-Headers</code> must have a corresponding entry in
         the rule. Only the headers that were requested are sent back. </p>
         <p>This element can contain only one wildcard character (*).</p>")
  @as("AllowedHeaders")
  allowedHeaders: allowedHeaders,
  @ocaml.doc("<p>Identifies an HTTP method that the origin that is specified in the rule is allowed to
         execute.</p>
         <p>Each CORS rule must contain at least one <code>AllowedMethods</code> and one
            <code>AllowedOrigins</code> element.</p>")
  @as("AllowedMethods")
  allowedMethods: option<allowedMethods>,
  @ocaml.doc("<p>One or more response headers that you want users to be able to access from their
         applications (for example, from a JavaScript <code>XMLHttpRequest</code> object).</p>
         <p>Each CORS rule must have at least one <code>AllowedOrigins</code> element. The string
         value can include only one wildcard character (*), for example, http://*.example.com.
         Additionally, you can specify only one wildcard character to allow cross-origin access for
         all origins.</p>")
  @as("AllowedOrigins")
  allowedOrigins: allowedOrigins,
}
type containerList = array<container>
@ocaml.doc("<p>The metric policy that is associated with the container. A metric policy allows AWS Elemental MediaStore to send metrics to Amazon CloudWatch. In the policy, you must indicate whether you want MediaStore to send container-level metrics. You can also include rules to define groups of objects that you want MediaStore to send object-level metrics for.</p>
         <p>To view examples of how to construct a metric policy for your use case, see <a href=\"https://docs.aws.amazon.com/mediastore/latest/ug/policies-metric-examples.html\">Example Metric Policies</a>.</p>")
type metricPolicy = {
  @ocaml.doc(
    "<p>A parameter that holds an array of rules that enable metrics at the object level. This parameter is optional, but if you choose to include it, you must also include at least one rule. By default, you can include up to five rules. You can also <a href=\"https://console.aws.amazon.com/servicequotas/home?region=us-east-1#!/services/mediastore/quotas\">request a quota increase</a> to allow up to 300 rules per policy.</p>"
  )
  @as("MetricPolicyRules")
  metricPolicyRules: option<metricPolicyRules>,
  @ocaml.doc("<p>A setting to enable or disable metrics at the container level.</p>")
  @as("ContainerLevelMetrics")
  containerLevelMetrics: containerLevelMetrics,
}
@ocaml.doc("<p>The CORS policy of the container. </p>") type corsPolicy = array<corsRule>
@ocaml.doc("<p>An AWS Elemental MediaStore container is a namespace that holds folders and objects.
         You use a container endpoint to create, read, and delete objects. </p>")
module StopAccessLogging = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the container that you want to stop access logging on.</p>")
    @as("ContainerName")
    containerName: containerName,
  }

  @module("@aws-sdk/client-mediastore") @new external new: request => t = "StopAccessLoggingCommand"
  let make = (~containerName, ()) => new({containerName: containerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartAccessLogging = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the container that you want to start access logging on.</p>")
    @as("ContainerName")
    containerName: containerName,
  }

  @module("@aws-sdk/client-mediastore") @new
  external new: request => t = "StartAccessLoggingCommand"
  let make = (~containerName, ()) => new({containerName: containerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutLifecyclePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The object lifecycle policy to apply to the container.</p>")
    @as("LifecyclePolicy")
    lifecyclePolicy: lifecyclePolicy,
    @ocaml.doc(
      "<p>The name of the container that you want to assign the object lifecycle policy to.</p>"
    )
    @as("ContainerName")
    containerName: containerName,
  }

  @module("@aws-sdk/client-mediastore") @new
  external new: request => t = "PutLifecyclePolicyCommand"
  let make = (~lifecyclePolicy, ~containerName, ()) =>
    new({lifecyclePolicy: lifecyclePolicy, containerName: containerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutContainerPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The contents of the policy, which includes the following: </p>
         <ul>
            <li>
               <p>One <code>Version</code> tag</p>
            </li>
            <li>
               <p>One <code>Statement</code> tag that contains the standard tags for the
               policy.</p>
            </li>
         </ul>")
    @as("Policy")
    policy: containerPolicy,
    @ocaml.doc("<p>The name of the container.</p>") @as("ContainerName")
    containerName: containerName,
  }

  @module("@aws-sdk/client-mediastore") @new
  external new: request => t = "PutContainerPolicyCommand"
  let make = (~policy, ~containerName, ()) => new({policy: policy, containerName: containerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetLifecyclePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the container that the object lifecycle policy is assigned to.</p>")
    @as("ContainerName")
    containerName: containerName,
  }
  type response = {
    @ocaml.doc("<p>The object lifecycle policy that is assigned to the container.</p>")
    @as("LifecyclePolicy")
    lifecyclePolicy: lifecyclePolicy,
  }
  @module("@aws-sdk/client-mediastore") @new
  external new: request => t = "GetLifecyclePolicyCommand"
  let make = (~containerName, ()) => new({containerName: containerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetContainerPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the container. </p>") @as("ContainerName")
    containerName: containerName,
  }
  type response = {
    @ocaml.doc("<p>The contents of the access policy.</p>") @as("Policy") policy: containerPolicy,
  }
  @module("@aws-sdk/client-mediastore") @new
  external new: request => t = "GetContainerPolicyCommand"
  let make = (~containerName, ()) => new({containerName: containerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMetricPolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the container that is associated with the metric policy that you want to delete.</p>"
    )
    @as("ContainerName")
    containerName: containerName,
  }

  @module("@aws-sdk/client-mediastore") @new
  external new: request => t = "DeleteMetricPolicyCommand"
  let make = (~containerName, ()) => new({containerName: containerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteLifecyclePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the container that holds the object lifecycle policy.</p>")
    @as("ContainerName")
    containerName: containerName,
  }

  @module("@aws-sdk/client-mediastore") @new
  external new: request => t = "DeleteLifecyclePolicyCommand"
  let make = (~containerName, ()) => new({containerName: containerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCorsPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the container to remove the policy from.</p>") @as("ContainerName")
    containerName: containerName,
  }

  @module("@aws-sdk/client-mediastore") @new external new: request => t = "DeleteCorsPolicyCommand"
  let make = (~containerName, ()) => new({containerName: containerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteContainerPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the container that holds the policy.</p>") @as("ContainerName")
    containerName: containerName,
  }

  @module("@aws-sdk/client-mediastore") @new
  external new: request => t = "DeleteContainerPolicyCommand"
  let make = (~containerName, ()) => new({containerName: containerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteContainer = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the container to delete. </p>") @as("ContainerName")
    containerName: containerName,
  }

  @module("@aws-sdk/client-mediastore") @new external new: request => t = "DeleteContainerCommand"
  let make = (~containerName, ()) => new({containerName: containerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A comma-separated list of keys for tags that you want to remove from the container. For example, if your container has two tags (customer:CompanyA
            and priority:High) and you want to remove one of the tags (priority:High), you specify the key for the tag that you want to remove
            (priority).</p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the container.</p>") @as("Resource")
    resource: containerARN,
  }

  @module("@aws-sdk/client-mediastore") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resource, ()) => new({tagKeys: tagKeys, resource: resource})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeContainer = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the container to query.</p>") @as("ContainerName")
    containerName: option<containerName>,
  }
  type response = {
    @ocaml.doc("<p>The name of the queried container.</p>") @as("Container")
    container: option<container>,
  }
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "DescribeContainerCommand"
  let make = (~containerName=?, ()) => new({containerName: containerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>An array of key:value pairs that you want to add to the container. You need to specify only the tags that you want to add or update. For example,
            suppose a container already has two tags (customer:CompanyA and priority:High). You want to change the priority tag and also add a third tag
            (type:Contract). For TagResource, you specify the following tags: priority:Medium, type:Contract. The result is that your container has three tags:
            customer:CompanyA, priority:Medium, and type:Contract.</p>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the container. </p>") @as("Resource")
    resource: containerARN,
  }

  @module("@aws-sdk/client-mediastore") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resource, ()) => new({tags: tags, resource: resource})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the container.</p>") @as("Resource")
    resource: containerARN,
  }
  type response = {
    @ocaml.doc("<p>An array of key:value pairs that are assigned to the container.</p>") @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-mediastore") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resource, ()) => new({resource: resource})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListContainers = {
  type t
  type request = {
    @ocaml.doc("<p>Enter the maximum number of containers in the response. Use from 1 to 255 characters.
      </p>")
    @as("MaxResults")
    maxResults: option<containerListLimit>,
    @ocaml.doc("<p>Only if you used <code>MaxResults</code> in the first command, enter the token (which
         was included in the previous response) to obtain the next set of containers. This token is
         included in a response only if there actually are more containers to list.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>
            <code>NextToken</code> is the token to use in the next call to <code>ListContainers</code>.
         This token is returned only if you included the <code>MaxResults</code> tag in the original
         command, and only if there are still containers to return. </p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The names of the containers.</p>") @as("Containers") containers: containerList,
  }
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "ListContainersCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateContainer = {
  type t
  type request = {
    @ocaml.doc("<p>An array of key:value pairs that you define. These values can be anything that you want. Typically, the tag key represents a category (such as
           \"environment\") and the tag value represents a specific value within that category (such as \"test,\" \"development,\" or \"production\"). You can add up to 50 
           tags to each container. For more information about tagging, including naming and usage conventions, see <a href=\"https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html\">Tagging Resources in MediaStore</a>.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The name for the container. The name must be from 1 to 255 characters. Container
         names must be unique to your AWS account within a specific region. As an example, you could
         create a container named <code>movies</code> in every region, as long as you don’t have an
         existing container with that name.</p>")
    @as("ContainerName")
    containerName: containerName,
  }
  type response = {
    @ocaml.doc("<p>ContainerARN: The Amazon Resource Name (ARN) of the newly created container. The ARN
         has the following format: arn:aws:<region>:<account that owns this
         container>:container/<name of container>. For example:
         arn:aws:mediastore:us-west-2:111122223333:container/movies </p>
         <p>ContainerName: The container name as specified in the request.</p>
         <p>CreationTime: Unix time stamp.</p>
         <p>Status: The status of container creation or deletion. The status is one of the
         following: <code>CREATING</code>, <code>ACTIVE</code>, or <code>DELETING</code>. While the
         service is creating the container, the status is <code>CREATING</code>. When an endpoint is
         available, the status changes to <code>ACTIVE</code>.</p>
         <p>The return value does not include the container's endpoint. To make downstream
         requests, you must obtain this value by using <a>DescribeContainer</a> or <a>ListContainers</a>.</p>")
    @as("Container")
    container: container,
  }
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "CreateContainerCommand"
  let make = (~containerName, ~tags=?, ()) => new({tags: tags, containerName: containerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutMetricPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The metric policy that you want to associate with the container. In the policy, you must indicate whether you want MediaStore to send container-level metrics. You can also include up to five rules to define groups of objects that you want MediaStore to send object-level metrics for.  If you include rules in the policy, construct each rule with both of the following:</p>
         <ul>
            <li>
               <p>An object group that defines which objects to include in the group. The definition can be a path or a file name, but it can't have more than 900 characters. Valid characters are: a-z, A-Z, 0-9, _ (underscore), = (equal), : (colon), . (period), - (hyphen), ~ (tilde), / (forward slash), and * (asterisk). Wildcards (*) are acceptable.</p>
            </li>
            <li>
               <p>An object group name that allows you to refer to the object group. The name can't have more than 30 characters. Valid characters are: a-z, A-Z, 0-9, and _ (underscore).</p>
            </li>
         </ul>")
    @as("MetricPolicy")
    metricPolicy: metricPolicy,
    @ocaml.doc("<p>The name of the container that you want to add the metric policy to.</p>")
    @as("ContainerName")
    containerName: containerName,
  }

  @module("@aws-sdk/client-mediastore") @new external new: request => t = "PutMetricPolicyCommand"
  let make = (~metricPolicy, ~containerName, ()) =>
    new({metricPolicy: metricPolicy, containerName: containerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutCorsPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The CORS policy to apply to the container.  </p>") @as("CorsPolicy")
    corsPolicy: corsPolicy,
    @ocaml.doc("<p>The name of the container that you want to assign the CORS policy to.</p>")
    @as("ContainerName")
    containerName: containerName,
  }

  @module("@aws-sdk/client-mediastore") @new external new: request => t = "PutCorsPolicyCommand"
  let make = (~corsPolicy, ~containerName, ()) =>
    new({corsPolicy: corsPolicy, containerName: containerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetMetricPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the container that is associated with the metric policy.</p>")
    @as("ContainerName")
    containerName: containerName,
  }
  type response = {
    @ocaml.doc("<p>The metric policy that is associated with the specific container.</p>")
    @as("MetricPolicy")
    metricPolicy: metricPolicy,
  }
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "GetMetricPolicyCommand"
  let make = (~containerName, ()) => new({containerName: containerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCorsPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the container that the policy is assigned to.</p>")
    @as("ContainerName")
    containerName: containerName,
  }
  type response = {
    @ocaml.doc("<p>The CORS policy assigned to the container.</p>") @as("CorsPolicy")
    corsPolicy: corsPolicy,
  }
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "GetCorsPolicyCommand"
  let make = (~containerName, ()) => new({containerName: containerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
