type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-snow-device-management") @new
external createClient: unit => awsServiceClient = "SnowDeviceManagementClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type unlockState = [@as("UNLOCKING") #UNLOCKING | @as("LOCKED") #LOCKED | @as("UNLOCKED") #UNLOCKED]
@ocaml.doc("<p>A structure used to unlock a device.</p>") type unlock = {.}
type taskState = [
  | @as("COMPLETED") #COMPLETED
  | @as("CANCELED") #CANCELED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type taskId = string
type taskDescriptionString = string

type targetList = array<baseString>
type tagMap = Js.Dict.t<baseString>
type tagKeys = array<baseString>
@ocaml.doc("<p>Information about the software on the device.</p>")
type softwareInformation = {
  @ocaml.doc("<p>The state of the software that is installed or that is being installed on the
      device.</p>")
  installState: option<baseString>,
  @ocaml.doc("<p>The version of the software being installed on the device.</p>")
  installingVersion: option<baseString>,
  @ocaml.doc("<p>The version of the software currently installed on the device.</p>")
  installedVersion: option<baseString>,
}
@ocaml.doc("<p>Information about the device's security group.</p>")
type securityGroupIdentifier = {
  @ocaml.doc("<p>The security group name.</p>") groupName: option<baseString>,
  @ocaml.doc("<p>The security group ID.</p>") groupId: option<baseString>,
}
@ocaml.doc("<p>A summary of a resource available on the device.</p>")
type resourceSummary = {
  @ocaml.doc("<p>The ID of the resource.</p>") id: option<baseString>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") arn: option<baseString>,
  @ocaml.doc("<p>The resource type.</p>") resourceType: baseString,
}
@ocaml.doc("<p>A structure used to reboot the device.</p>") type reboot = {.}
type physicalConnectorType = [
  | @as("WIFI") #WIFI
  | @as("RJ45_2") #RJ45_2
  | @as("QSFP") #QSFP
  | @as("SFP_PLUS") #SFP_PLUS
  | @as("RJ45") #RJ45
]
type nextToken = string
type maxResults = int
type managedDeviceId = string

type jobId = string
type ipAddressAssignment = [@as("STATIC") #STATIC | @as("DHCP") #DHCP]
type instanceStateName = [
  | @as("STOPPED") #STOPPED
  | @as("STOPPING") #STOPPING
  | @as("TERMINATED") #TERMINATED
  | @as("SHUTTING_DOWN") #SHUTTING_DOWN
  | @as("RUNNING") #RUNNING
  | @as("PENDING") #PENDING
]
type instanceIdsList = array<baseString>
type idempotencyToken = string
type executionState = [
  | @as("TIMED_OUT") #TIMED_OUT
  | @as("REJECTED") #REJECTED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("FAILED") #FAILED
  | @as("CANCELED") #CANCELED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("QUEUED") #QUEUED
]
type executionId = string

@ocaml.doc("<p>The options for how a device's CPU is configured.</p>")
type cpuOptions = {
  @ocaml.doc("<p>The number of threads per core in the CPU.</p>")
  threadsPerCore: option<baseInteger>,
  @ocaml.doc("<p>The number of cores that the CPU can use.</p>") coreCount: option<baseInteger>,
}
@ocaml.doc("<p>The physical capacity of the Amazon Web Services Snow Family device. </p>")
type capacity = {
  @ocaml.doc("<p>The amount of capacity available for use on the device.</p>")
  available: option<baseLong>,
  @ocaml.doc("<p>The amount of capacity used on the device.</p>") used: option<baseLong>,
  @ocaml.doc("<p>The total capacity on the device.</p>") total: option<baseLong>,
  @ocaml.doc("<p>The unit of measure for the type of capacity.</p>") @as("unit")
  unit_: option<baseString>,
  @ocaml.doc("<p>The name of the type of capacity, such as memory.</p>") name: option<baseString>,
}
type attachmentStatus = [
  | @as("DETACHED") #DETACHED
  | @as("DETACHING") #DETACHING
  | @as("ATTACHED") #ATTACHED
  | @as("ATTACHING") #ATTACHING
]
@ocaml.doc("<p>Information about the task assigned to one or many devices.</p>")
type taskSummary = {
  @ocaml.doc("<p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
      in different ways, such as by purpose, owner, or environment.</p>")
  tags: option<tagMap>,
  @ocaml.doc("<p>The state of the task assigned to one or many devices.</p>")
  state: option<taskState>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the task.</p>") taskArn: option<baseString>,
  @ocaml.doc("<p>The task ID.</p>") taskId: taskId,
}
type securityGroupIdentifierList = array<securityGroupIdentifier>
type resourceSummaryList = array<resourceSummary>
@ocaml.doc("<p>The details about the physical network interface for the device.</p>")
type physicalNetworkInterface = {
  @ocaml.doc("<p>The MAC address of the device.</p>") macAddress: option<baseString>,
  @ocaml.doc("<p>The default gateway of the device.</p>") defaultGateway: option<baseString>,
  @ocaml.doc("<p>The netmask used to divide the IP address into subnets.</p>")
  netmask: option<baseString>,
  @ocaml.doc("<p>The IP address of the device.</p>") ipAddress: option<baseString>,
  @ocaml.doc("<p>A value that describes whether the IP address is dynamic or persistent.</p>")
  ipAddressAssignment: option<ipAddressAssignment>,
  @ocaml.doc("<p>The
      physical
      connector type.</p>")
  physicalConnectorType: option<physicalConnectorType>,
  @ocaml.doc("<p>The physical network interface ID.</p>")
  physicalNetworkInterfaceId: option<baseString>,
}
@ocaml.doc("<p>The description of the current state of an instance.</p>")
type instanceState = {
  @ocaml.doc("<p>The current
      state
      of the instance.</p>")
  name: option<instanceStateName>,
  @ocaml.doc("<p>The state of the instance as a 16-bit unsigned integer. </p>
         <p>The high byte is all of the bits between 2^8 and (2^16)-1, which equals decimal values
      between 256 and 65,535. These numerical values are used for internal purposes and should be
      ignored. </p>
         <p>The low byte is all of the bits between 2^0 and (2^8)-1, which equals decimal values
      between 0 and 255. </p>
         <p>The valid values for the instance state code are all in the range of the low byte. These
      values are: </p>
         <ul>
            <li>
               <p>
                  <code>0</code> : <code>pending</code>
               </p>
            </li>
            <li>
               <p>
                  <code>16</code> : <code>running</code>
               </p>
            </li>
            <li>
               <p>
                  <code>32</code> : <code>shutting-down</code>
               </p>
            </li>
            <li>
               <p>
                  <code>48</code> : <code>terminated</code>
               </p>
            </li>
            <li>
               <p>
                  <code>64</code> : <code>stopping</code>
               </p>
            </li>
            <li>
               <p>
                  <code>80</code> : <code>stopped</code>
               </p>
            </li>
         </ul>
         <p>You can ignore the high byte value by zeroing out all of the bits above 2^8 or 256 in
      decimal. </p>")
  code: option<baseInteger>,
}
@ocaml.doc("<p>The summary of a task execution on a specified device.</p>")
type executionSummary = {
  @ocaml.doc("<p>The state of the execution.</p>") state: option<executionState>,
  @ocaml.doc("<p>The ID of the managed device that the task is being executed on.</p>")
  managedDeviceId: option<managedDeviceId>,
  @ocaml.doc("<p>The ID of the execution.</p>") executionId: option<executionId>,
  @ocaml.doc("<p>The ID of the task.</p>") taskId: option<taskId>,
}
@ocaml.doc("<p>Describes a parameter used to set up an Amazon Elastic Block Store (Amazon EBS) volume
      in a block device mapping.</p>")
type ebsInstanceBlockDevice = {
  @ocaml.doc("<p>The ID of the Amazon EBS volume.</p>") volumeId: option<baseString>,
  @ocaml.doc("<p>The attachment state.</p>") status: option<attachmentStatus>,
  @ocaml.doc("<p>A value that indicates whether the volume is deleted on instance termination.</p>")
  deleteOnTermination: option<baseBoolean>,
  @ocaml.doc("<p>When the attachment was initiated.</p>") attachTime: option<baseTimestamp>,
}
@ocaml.doc("<p>Identifying information about the device.</p>")
type deviceSummary = {
  @ocaml.doc("<p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
      in different ways, such as by purpose, owner, or environment.</p>")
  tags: option<tagMap>,
  @ocaml.doc("<p>The ID of the job used to order the device.</p>")
  associatedWithJob: option<baseString>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the device.</p>")
  managedDeviceArn: option<baseString>,
  @ocaml.doc("<p>The ID of the device.</p>") managedDeviceId: option<managedDeviceId>,
}
@ocaml.doc("<p>The command given to the device to execute.</p>")
type command = {
  @ocaml.doc("<p>Reboots the device.</p>") reboot: option<reboot>,
  @ocaml.doc("<p>Unlocks the device.</p>") unlock: option<unlock>,
}
module Command = {
  type t = Reboot(reboot) | Unlock(unlock)
  exception CommandUnspecified
  let classify = value =>
    switch value {
    | {reboot: Some(x)} => Reboot(x)
    | {unlock: Some(x)} => Unlock(x)
    | _ => raise(CommandUnspecified)
    }

  let make = value =>
    switch value {
    | Reboot(x) => {reboot: Some(x), unlock: None}
    | Unlock(x) => {unlock: Some(x), reboot: None}
    }
}
type capacityList = array<capacity>
type taskSummaryList = array<taskSummary>
type physicalNetworkInterfaceList = array<physicalNetworkInterface>
@ocaml.doc("<p>The description of a block device mapping.</p>")
type instanceBlockDeviceMapping = {
  @ocaml.doc("<p>The parameters used to automatically set up Amazon Elastic Block Store (Amazon EBS)
      volumes when the instance is launched. </p>")
  ebs: option<ebsInstanceBlockDevice>,
  @ocaml.doc("<p>The block device name.</p>") deviceName: option<baseString>,
}
type executionSummaryList = array<executionSummary>
type deviceSummaryList = array<deviceSummary>
@ocaml.doc("<p>Amazon Web Services Snow Device Management documentation.</p>")
type instanceBlockDeviceMappingList = array<instanceBlockDeviceMapping>
@ocaml.doc("<p>The description of an
      instance.
      Currently, Amazon EC2 instances are the only supported instance type.</p>")
type instance = {
  @ocaml.doc(
    "<p>The device name of the root device volume (for example, <code>/dev/sda1</code>). </p>"
  )
  rootDeviceName: option<baseString>,
  @ocaml.doc("<p>The CPU options for the instance.</p>") cpuOptions: option<cpuOptions>,
  @ocaml.doc("<p>The security groups for the instance.</p>")
  securityGroups: option<securityGroupIdentifierList>,
  @ocaml.doc("<p>Any block device mapping entries for the instance.</p>")
  blockDeviceMappings: option<instanceBlockDeviceMappingList>,
  @ocaml.doc("<p>When the instance was last updated.</p>") updatedAt: option<baseTimestamp>,
  @ocaml.doc("<p>When the instance was created.</p>") createdAt: option<baseTimestamp>,
  @ocaml.doc("<p>The public IPv4 address assigned to the instance.</p>")
  publicIpAddress: option<baseString>,
  @ocaml.doc("<p>The private IPv4 address assigned to the instance.</p>")
  privateIpAddress: option<baseString>,
  @ocaml.doc("<p>The instance type.</p>") instanceType: option<baseString>,
  state: option<instanceState>,
  @ocaml.doc("<p>The ID of the instance.</p>") instanceId: option<baseString>,
  @ocaml.doc("<p>The Amazon Machine Image (AMI) launch index, which you can use to find this instance in
      the launch group. </p>")
  amiLaunchIndex: option<baseInteger>,
  @ocaml.doc("<p>The ID of the AMI used to launch the instance.</p>") imageId: option<baseString>,
}
@ocaml.doc("<p>The details about the instance.</p>")
type instanceSummary = {
  @ocaml.doc("<p>When the instance summary was last updated.</p>")
  lastUpdatedAt: option<baseTimestamp>,
  @ocaml.doc("<p>A structure containing details about the instance.</p>")
  instance: option<instance>,
}
type instanceSummaryList = array<instanceSummary>
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
      in different ways, such as by purpose, owner, or environment.</p>")
    tagKeys: tagKeys,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the device or task.</p>")
    resourceArn: baseString,
  }
  type response = {.}
  @module("@aws-sdk/client-snow-device-management") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
      in different ways, such as by purpose, owner, or environment.</p>")
    tags: tagMap,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the device or task.</p>")
    resourceArn: baseString,
  }
  type response = {.}
  @module("@aws-sdk/client-snow-device-management") @new
  external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the device or task.</p>")
    resourceArn: baseString,
  }
  type response = {
    @ocaml.doc("<p>The list of tags for the device or task.</p>") tags: option<tagMap>,
  }
  @module("@aws-sdk/client-snow-device-management") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTask = {
  type t
  type request = {@ocaml.doc("<p>The ID of the task to be described.</p>") taskId: taskId}
  type response = {
    @ocaml.doc("<p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
      in different ways, such as by purpose, owner, or environment.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The description provided of the task and managed devices.</p>")
    description: option<taskDescriptionString>,
    @ocaml.doc("<p>When the task was completed.</p>") completedAt: option<baseTimestamp>,
    @ocaml.doc("<p>When the state of the task was last updated.</p>")
    lastUpdatedAt: option<baseTimestamp>,
    @ocaml.doc("<p>When the <code>CreateTask</code> operation was called.</p>")
    createdAt: option<baseTimestamp>,
    @ocaml.doc("<p>The current state of the task.</p>") state: option<taskState>,
    @ocaml.doc("<p>The managed devices that the task was sent to.</p>") targets: option<targetList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the task.</p>") taskArn: option<baseString>,
    @ocaml.doc("<p>The ID of the task.</p>") taskId: option<baseString>,
  }
  @module("@aws-sdk/client-snow-device-management") @new
  external new: request => t = "DescribeTaskCommand"
  let make = (~taskId, ()) => new({taskId: taskId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeExecution = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the managed device.</p>") managedDeviceId: managedDeviceId,
    @ocaml.doc("<p>The ID of the task that the action is describing.</p>") taskId: taskId,
  }
  type response = {
    @ocaml.doc("<p>When the status of the execution was last updated.</p>")
    lastUpdatedAt: option<baseTimestamp>,
    @ocaml.doc("<p>When the execution began.</p>") startedAt: option<baseTimestamp>,
    @ocaml.doc("<p>The current state of the execution.</p>") state: option<executionState>,
    @ocaml.doc("<p>The ID of the managed device that the task is being executed on.</p>")
    managedDeviceId: option<managedDeviceId>,
    @ocaml.doc("<p>The ID of the execution.</p>") executionId: option<executionId>,
    @ocaml.doc("<p>The ID of the task being executed on the device.</p>") taskId: option<taskId>,
  }
  @module("@aws-sdk/client-snow-device-management") @new
  external new: request => t = "DescribeExecutionCommand"
  let make = (~managedDeviceId, ~taskId, ()) =>
    new({managedDeviceId: managedDeviceId, taskId: taskId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelTask = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the task that you are attempting to cancel. You can retrieve a task ID by using
      the <code>ListTasks</code> operation.</p>")
    taskId: taskId,
  }
  type response = {
    @ocaml.doc("<p>The ID of the task that you are attempting to cancel.</p>")
    taskId: option<baseString>,
  }
  @module("@aws-sdk/client-snow-device-management") @new
  external new: request => t = "CancelTaskCommand"
  let make = (~taskId, ()) => new({taskId: taskId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeviceResources = {
  type t
  type request = {
    @ocaml.doc("<p>A pagination token to continue to the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of resources per page.</p>") maxResults: option<maxResults>,
    @ocaml.doc("<p>A structure used to filter the results by type of resource.</p>") @as("type")
    type_: option<baseString>,
    @ocaml.doc("<p>The ID of the managed device that you are listing the resources of.</p>")
    managedDeviceId: managedDeviceId,
  }
  type response = {
    @ocaml.doc("<p>A pagination token to continue to the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>A structure defining the resource's type, Amazon Resource Name (ARN), and ID.</p>"
    )
    resources: option<resourceSummaryList>,
  }
  @module("@aws-sdk/client-snow-device-management") @new
  external new: request => t = "ListDeviceResourcesCommand"
  let make = (~managedDeviceId, ~nextToken=?, ~maxResults=?, ~type_=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      type_: type_,
      managedDeviceId: managedDeviceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTask = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A token ensuring that the action is called only once with the specified details.</p>"
    )
    clientToken: option<idempotencyToken>,
    @ocaml.doc("<p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
      in different ways, such as by purpose, owner, or environment. </p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>A description of the task and its targets.</p>")
    description: option<taskDescriptionString>,
    @ocaml.doc("<p>The task to be performed. Only one task is executed on a device at a time.</p>")
    command: command,
    @ocaml.doc("<p>A list of managed device IDs.</p>") targets: targetList,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the task that you created.</p>")
    taskArn: option<baseString>,
    @ocaml.doc("<p>The ID of the task that you created.</p>") taskId: option<baseString>,
  }
  @module("@aws-sdk/client-snow-device-management") @new
  external new: request => t = "CreateTaskCommand"
  let make = (~command, ~targets, ~clientToken=?, ~tags=?, ~description=?, ()) =>
    new({
      clientToken: clientToken,
      tags: tags,
      description: description,
      command: command,
      targets: targets,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTasks = {
  type t
  type request = {
    @ocaml.doc("<p>A pagination token to continue to the next page of tasks.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of tasks per page.</p>") maxResults: option<maxResults>,
    @ocaml.doc("<p>A structure used to filter the list of tasks.</p>") state: option<taskState>,
  }
  type response = {
    @ocaml.doc("<p>A pagination token to continue to the next page of tasks.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of task structures containing details about each task.</p>")
    tasks: option<taskSummaryList>,
  }
  @module("@aws-sdk/client-snow-device-management") @new
  external new: request => t = "ListTasksCommand"
  let make = (~nextToken=?, ~maxResults=?, ~state=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, state: state})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListExecutions = {
  type t
  type request = {
    @ocaml.doc("<p>A pagination token to continue to the next page of tasks.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of tasks to list per page.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A structure used to filter the tasks by their current state.</p>")
    state: option<executionState>,
    @ocaml.doc("<p>The ID of the task.</p>") taskId: taskId,
  }
  type response = {
    @ocaml.doc("<p>A pagination token to continue to the next page of executions.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of executions. Each execution contains the task ID, the device that the task is
      executing on, the execution ID, and the status of the execution.</p>")
    executions: option<executionSummaryList>,
  }
  @module("@aws-sdk/client-snow-device-management") @new
  external new: request => t = "ListExecutionsCommand"
  let make = (~taskId, ~nextToken=?, ~maxResults=?, ~state=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, state: state, taskId: taskId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDevices = {
  type t
  type request = {
    @ocaml.doc("<p>A pagination token to continue to the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of devices to list per page.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ID of the job used to order the device.</p>") jobId: option<jobId>,
  }
  type response = {
    @ocaml.doc("<p>A pagination token to continue to the next page of devices.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of device structures that contain information about the device.</p>")
    devices: option<deviceSummaryList>,
  }
  @module("@aws-sdk/client-snow-device-management") @new
  external new: request => t = "ListDevicesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~jobId=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDevice = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the device that you are checking the information of.</p>")
    managedDeviceId: managedDeviceId,
  }
  type response = {
    @ocaml.doc("<p>The software installed on the device.</p>")
    software: option<softwareInformation>,
    @ocaml.doc("<p>The hardware specifications of the device. </p>")
    deviceCapacities: option<capacityList>,
    @ocaml.doc("<p>The network interfaces available on the device.</p>")
    physicalNetworkInterfaces: option<physicalNetworkInterfaceList>,
    @ocaml.doc("<p>The current state of the device.</p>") deviceState: option<unlockState>,
    @ocaml.doc("<p>The ID of the job used when ordering the device.</p>")
    associatedWithJob: option<baseString>,
    @ocaml.doc("<p>The type of Amazon Web Services Snow Family device.</p>")
    deviceType: option<baseString>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the device.</p>")
    managedDeviceArn: option<baseString>,
    @ocaml.doc("<p>The ID of the device that you checked the information for.</p>")
    managedDeviceId: option<managedDeviceId>,
    @ocaml.doc("<p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
      in different ways, such as by purpose, owner, or environment. </p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>When the device last pushed an update to the Amazon Web Services Cloud. Indicates when the device cache
      was refreshed.</p>")
    lastUpdatedAt: option<baseTimestamp>,
    @ocaml.doc("<p>When the device last contacted the Amazon Web Services Cloud. Indicates that the device is
      online.</p>")
    lastReachedOutAt: option<baseTimestamp>,
  }
  @module("@aws-sdk/client-snow-device-management") @new
  external new: request => t = "DescribeDeviceCommand"
  let make = (~managedDeviceId, ()) => new({managedDeviceId: managedDeviceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDeviceEc2Instances = {
  type t
  type request = {
    @ocaml.doc("<p>A list of instance IDs associated with the managed device.</p>")
    instanceIds: instanceIdsList,
    @ocaml.doc("<p>The ID of the managed device.</p>") managedDeviceId: managedDeviceId,
  }
  type response = {
    @ocaml.doc("<p>A list of structures containing information about each instance. </p>")
    instances: option<instanceSummaryList>,
  }
  @module("@aws-sdk/client-snow-device-management") @new
  external new: request => t = "DescribeDeviceEc2InstancesCommand"
  let make = (~instanceIds, ~managedDeviceId, ()) =>
    new({instanceIds: instanceIds, managedDeviceId: managedDeviceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
