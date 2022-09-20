type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-backup-gateway") @new
external createClient: unit => awsServiceClient = "BackupGatewayClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type string_ = string
type username = string
type time = Js.Date.t
type tagValue = string
type tagKey = string
type serverArn = string
type resourceArn = string
type path = string
type password = string
type nextToken = string
type name = string
type minuteOfHour = int
type maxResults = int
type kmsKeyArn = string
type hypervisorState = [
  | @as("ERROR") #ERROR
  | @as("OFFLINE") #OFFLINE
  | @as("ONLINE") #ONLINE
  | @as("PENDING") #PENDING
]

type hypervisorId = string
type hourOfDay = int
type host = string
type gatewayType = [@as("BACKUP_VM") #BACKUP_VM]

type gatewayArn = string
type dayOfWeek = int
type dayOfMonth = int
type activationKey = string
@ocaml.doc("<p>A virtual machine that is on a hypervisor.</p>")
type virtualMachine = {
  @ocaml.doc(
    "<p>The most recent date a virtual machine was backed up, in Unix format and UTC time.</p>"
  )
  @as("LastBackupDate")
  lastBackupDate: option<time>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the virtual machine.</p>") @as("ResourceArn")
  resourceArn: option<resourceArn>,
  @ocaml.doc("<p>The path of the virtual machine.</p>") @as("Path") path: option<path>,
  @ocaml.doc("<p>The name of the virtual machine.</p>") @as("Name") name: option<name>,
  @ocaml.doc("<p>The ID of the virtual machine's hypervisor.</p>") @as("HypervisorId")
  hypervisorId: option<string_>,
  @ocaml.doc("<p>The host name of the virtual machine.</p>") @as("HostName") hostName: option<name>,
}
type tagKeys = array<tagKey>
@ocaml.doc("<p>A key-value pair you can use to manage, filter, and search for your resources. Allowed
      characters include UTF-8 letters, numbers, spaces, and the following characters: + - = . _ :
      /.</p>")
type tag = {
  @ocaml.doc("<p>The key part of a value's key-value pair.</p>") @as("Value") value: tagValue,
  @ocaml.doc(
    "<p>The key part of a tag's key-value pair. The key can't start with <code>aws:</code>.</p>"
  )
  @as("Key")
  key: tagKey,
}
@ocaml.doc("<p>Represents the hypervisor's permissions to which the gateway will connect.</p>
         <p>A hypervisor is hardware, software, or firmware that creates and manages virtual machines,
      and allocates resources to them.</p>")
type hypervisor = {
  @ocaml.doc("<p>The state of the hypervisor.</p>") @as("State") state: option<hypervisorState>,
  @ocaml.doc("<p>The name of the hypervisor.</p>") @as("Name") name: option<name>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Key Management Service used to encrypt the
      hypervisor.</p>")
  @as("KmsKeyArn")
  kmsKeyArn: option<kmsKeyArn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the hypervisor.</p>") @as("HypervisorArn")
  hypervisorArn: option<serverArn>,
  @ocaml.doc("<p>The server host of the hypervisor. This can be either an IP address or a fully-qualified
      domain name (FQDN).</p>")
  @as("Host")
  host: option<host>,
}
@ocaml.doc("<p>A gateway is an Backup Gateway appliance that runs on the customer's network
      to provide seamless connectivity to backup storage in the Amazon Web Services Cloud.</p>")
type gateway = {
  @ocaml.doc("<p>The last time Backup gateway communicated with the gateway, in Unix format and
      UTC time.</p>")
  @as("LastSeenTime")
  lastSeenTime: option<time>,
  @ocaml.doc("<p>The hypervisor ID of the gateway.</p>") @as("HypervisorId")
  hypervisorId: option<hypervisorId>,
  @ocaml.doc("<p>The type of the gateway.</p>") @as("GatewayType") gatewayType: option<gatewayType>,
  @ocaml.doc("<p>The display name of the gateway.</p>") @as("GatewayDisplayName")
  gatewayDisplayName: option<name>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the gateway. Use the <code>ListGateways</code> operation
      to return a list of gateways for your account and Amazon Web Services Region.</p>")
  @as("GatewayArn")
  gatewayArn: option<gatewayArn>,
}
type virtualMachines = array<virtualMachine>
type tags = array<tag>
type hypervisors = array<hypervisor>
type gateways = array<gateway>
@ocaml.doc("<fullname>Backup gateway</fullname>
         <p>Backup gateway connects Backup to your hypervisor, so you can
      create, store, and restore backups of your virtual machines (VMs) anywhere, whether
      on-premises or in the VMware Cloud (VMC) on Amazon Web Services.</p>
         <p>Add on-premises resources by connecting to a hypervisor through a gateway. Backup will automatically discover the resources in your hypervisor.</p>
         <p>Use Backup to assign virtual or on-premises resources to a backup plan, or run
      on-demand backups. Once you have backed up your resources, you can view them and restore them
      like any resource supported by Backup.</p>
         <p>To download the Amazon Web Services software to get started, navigate to the Backup console, choose <b>Gateways</b>, then choose <b>Create gateway</b>.</p>")
module UpdateHypervisor = {
  type t
  type request = {
    @ocaml.doc("<p>The updated password for the hypervisor.</p>") @as("Password")
    password: option<password>,
    @ocaml.doc("<p>The updated username for the hypervisor.</p>") @as("Username")
    username: option<username>,
    @ocaml.doc("<p>The updated host of the hypervisor. This can be either an IP address or a fully-qualified
      domain name (FQDN).</p>")
    @as("Host")
    host: option<host>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the hypervisor to update.</p>")
    @as("HypervisorArn")
    hypervisorArn: serverArn,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the hypervisor you updated.</p>")
    @as("HypervisorArn")
    hypervisorArn: option<serverArn>,
  }
  @module("@aws-sdk/client-backup-gateway") @new
  external new: request => t = "UpdateHypervisorCommand"
  let make = (~hypervisorArn, ~password=?, ~username=?, ~host=?, ()) =>
    new({password, username, host, hypervisorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateGatewayInformation = {
  type t
  type request = {
    @ocaml.doc("<p>The updated display name of the gateway.</p>") @as("GatewayDisplayName")
    gatewayDisplayName: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the gateway to update.</p>") @as("GatewayArn")
    gatewayArn: gatewayArn,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the gateway you updated.</p>")
    @as("GatewayArn")
    gatewayArn: option<gatewayArn>,
  }
  @module("@aws-sdk/client-backup-gateway") @new
  external new: request => t = "UpdateGatewayInformationCommand"
  let make = (~gatewayArn, ~gatewayDisplayName=?, ()) => new({gatewayDisplayName, gatewayArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module TestHypervisorConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The password for the hypervisor.</p>") @as("Password")
    password: option<password>,
    @ocaml.doc("<p>The username for the hypervisor.</p>") @as("Username")
    username: option<username>,
    @ocaml.doc("<p>The server host of the hypervisor. This can be either an IP address or a fully-qualified
      domain name (FQDN).</p>")
    @as("Host")
    host: host,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the gateway to the hypervisor to test.</p>")
    @as("GatewayArn")
    gatewayArn: gatewayArn,
  }
  type response = {.}
  @module("@aws-sdk/client-backup-gateway") @new
  external new: request => t = "TestHypervisorConfigurationCommand"
  let make = (~host, ~gatewayArn, ~password=?, ~username=?, ()) =>
    new({password, username, host, gatewayArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutMaintenanceStartTime = {
  type t
  type request = {
    @ocaml.doc("<p>The day of the month start maintenance on a gateway.</p>
         <p>Valid values range from <code>Sunday</code> to <code>Saturday</code>.</p>")
    @as("DayOfMonth")
    dayOfMonth: option<dayOfMonth>,
    @ocaml.doc("<p>The day of the week to start maintenance on a gateway.</p>") @as("DayOfWeek")
    dayOfWeek: option<dayOfWeek>,
    @ocaml.doc("<p>The minute of the hour to start maintenance on a gateway.</p>")
    @as("MinuteOfHour")
    minuteOfHour: minuteOfHour,
    @ocaml.doc("<p>The hour of the day to start maintenance on a gateway.</p>") @as("HourOfDay")
    hourOfDay: hourOfDay,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the gateway, used to specify its maintenance start
      time.</p>")
    @as("GatewayArn")
    gatewayArn: gatewayArn,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a gateway for which you set the maintenance start
      time.</p>")
    @as("GatewayArn")
    gatewayArn: option<gatewayArn>,
  }
  @module("@aws-sdk/client-backup-gateway") @new
  external new: request => t = "PutMaintenanceStartTimeCommand"
  let make = (~minuteOfHour, ~hourOfDay, ~gatewayArn, ~dayOfMonth=?, ~dayOfWeek=?, ()) =>
    new({dayOfMonth, dayOfWeek, minuteOfHour, hourOfDay, gatewayArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateGatewayFromServer = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the gateway to disassociate.</p>")
    @as("GatewayArn")
    gatewayArn: gatewayArn,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the gateway you disassociated.</p>")
    @as("GatewayArn")
    gatewayArn: option<gatewayArn>,
  }
  @module("@aws-sdk/client-backup-gateway") @new
  external new: request => t = "DisassociateGatewayFromServerCommand"
  let make = (~gatewayArn, ()) => new({gatewayArn: gatewayArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteHypervisor = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the hypervisor to delete.</p>")
    @as("HypervisorArn")
    hypervisorArn: serverArn,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the hypervisor you deleted.</p>")
    @as("HypervisorArn")
    hypervisorArn: option<serverArn>,
  }
  @module("@aws-sdk/client-backup-gateway") @new
  external new: request => t = "DeleteHypervisorCommand"
  let make = (~hypervisorArn, ()) => new({hypervisorArn: hypervisorArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteGateway = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the gateway to delete.</p>") @as("GatewayArn")
    gatewayArn: gatewayArn,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the gateway you deleted.</p>")
    @as("GatewayArn")
    gatewayArn: option<gatewayArn>,
  }
  @module("@aws-sdk/client-backup-gateway") @new external new: request => t = "DeleteGatewayCommand"
  let make = (~gatewayArn, ()) => new({gatewayArn: gatewayArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateGatewayToServer = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the server that hosts your virtual machines.</p>"
    )
    @as("ServerArn")
    serverArn: serverArn,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the gateway. Use the <code>ListGateways</code> operation
      to return a list of gateways for your account and Amazon Web Services Region.</p>")
    @as("GatewayArn")
    gatewayArn: gatewayArn,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a gateway.</p>") @as("GatewayArn")
    gatewayArn: option<gatewayArn>,
  }
  @module("@aws-sdk/client-backup-gateway") @new
  external new: request => t = "AssociateGatewayToServerCommand"
  let make = (~serverArn, ~gatewayArn, ()) => new({serverArn, gatewayArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tag keys specifying which tags to remove.</p>") @as("TagKeys")
    tagKeys: tagKeys,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource from which to remove tags.</p>")
    @as("ResourceARN")
    resourceARN: resourceArn,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource from which you removed tags.</p>")
    @as("ResourceARN")
    resourceARN: option<resourceArn>,
  }
  @module("@aws-sdk/client-backup-gateway") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys, resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags to assign to the resource.</p>") @as("Tags") tags: tags,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource to tag.</p>") @as("ResourceARN")
    resourceARN: resourceArn,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource you tagged.</p>")
    @as("ResourceARN")
    resourceARN: option<resourceArn>,
  }
  @module("@aws-sdk/client-backup-gateway") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags, resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListVirtualMachines = {
  type t
  type request = {
    @ocaml.doc("<p>The next item following a partial list of returned resources. For example, if a request is
      made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you
      to return more items in your list starting at the location pointed to by the next
      token.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of virtual machines to list.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>The next item following a partial list of returned resources. For example, if a request is
      made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you
      to return more items in your list starting at the location pointed to by the next
      token.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of your <code>VirtualMachine</code> objects, ordered by their Amazon Resource Names
      (ARNs).</p>")
    @as("VirtualMachines")
    virtualMachines: option<virtualMachines>,
  }
  @module("@aws-sdk/client-backup-gateway") @new
  external new: request => t = "ListVirtualMachinesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource's tags to list.</p>")
    @as("ResourceArn")
    resourceArn: resourceArn,
  }
  type response = {
    @ocaml.doc("<p>A list of the resource's tags.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource's tags that you listed.</p>")
    @as("ResourceArn")
    resourceArn: option<resourceArn>,
  }
  @module("@aws-sdk/client-backup-gateway") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListHypervisors = {
  type t
  type request = {
    @ocaml.doc("<p>The next item following a partial list of returned resources. For example, if a request is
      made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you
      to return more items in your list starting at the location pointed to by the next
      token.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of hypervisors to list.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>The next item following a partial list of returned resources. For example, if a request is
      made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you
      to return more items in your list starting at the location pointed to by the next
      token.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of your <code>Hypervisor</code> objects, ordered by their Amazon Resource Names
      (ARNs).</p>")
    @as("Hypervisors")
    hypervisors: option<hypervisors>,
  }
  @module("@aws-sdk/client-backup-gateway") @new
  external new: request => t = "ListHypervisorsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListGateways = {
  type t
  type request = {
    @ocaml.doc("<p>The next item following a partial list of returned resources. For example, if a request is
      made to return <code>MaxResults</code> number of resources, <code>NextToken</code> allows you
      to return more items in your list starting at the location pointed to by the next
      token.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of gateways to list.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>The next item following a partial list of returned resources. For example, if a request is
      made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you
      to return more items in your list starting at the location pointed to by the next
      token.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of your gateways.</p>") @as("Gateways") gateways: option<gateways>,
  }
  @module("@aws-sdk/client-backup-gateway") @new external new: request => t = "ListGatewaysCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ImportHypervisorConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The tags of the hypervisor configuration to import.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The Key Management Service for the hypervisor.</p>") @as("KmsKeyArn")
    kmsKeyArn: option<kmsKeyArn>,
    @ocaml.doc("<p>The password for the hypervisor.</p>") @as("Password")
    password: option<password>,
    @ocaml.doc("<p>The username for the hypervisor.</p>") @as("Username")
    username: option<username>,
    @ocaml.doc("<p>The server host of the hypervisor. This can be either an IP address or a fully-qualified
      domain name (FQDN).</p>")
    @as("Host")
    host: host,
    @ocaml.doc("<p>The name of the hypervisor.</p>") @as("Name") name: name,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the hypervisor you disassociated.</p>")
    @as("HypervisorArn")
    hypervisorArn: option<serverArn>,
  }
  @module("@aws-sdk/client-backup-gateway") @new
  external new: request => t = "ImportHypervisorConfigurationCommand"
  let make = (~host, ~name, ~tags=?, ~kmsKeyArn=?, ~password=?, ~username=?, ()) =>
    new({tags, kmsKeyArn, password, username, host, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateGateway = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of up to 50 tags to assign to the gateway. Each tag is a key-value pair.</p>"
    )
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The type of created gateway.</p>") @as("GatewayType") gatewayType: gatewayType,
    @ocaml.doc("<p>The display name of the created gateway.</p>") @as("GatewayDisplayName")
    gatewayDisplayName: name,
    @ocaml.doc("<p>The activation key of the created gateway.</p>") @as("ActivationKey")
    activationKey: activationKey,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the gateway you create.</p>") @as("GatewayArn")
    gatewayArn: option<gatewayArn>,
  }
  @module("@aws-sdk/client-backup-gateway") @new external new: request => t = "CreateGatewayCommand"
  let make = (~gatewayType, ~gatewayDisplayName, ~activationKey, ~tags=?, ()) =>
    new({tags, gatewayType, gatewayDisplayName, activationKey})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
