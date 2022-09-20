type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-ec2-instance-connect") @new
external createClient: unit => awsServiceClient = "EC2InstanceConnectClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type success = bool
type string_ = string
type serialPort = int
type sshpublicKey = string
type requestId = string
type instanceOSUser = string
type instanceId = string
type availabilityZone = string
@ocaml.doc("<p>Amazon EC2 Instance Connect enables system administrators to publish one-time use SSH
            public keys to EC2, providing users a simple and secure way to connect to their
            instances.</p>")
module SendSerialConsoleSSHPublicKey = {
  type t
  type request = {
    @ocaml.doc("<p>The public key material. To use the public key, you must have the matching private
            key. For information about the supported key formats and lengths, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html#how-to-generate-your-own-key-and-import-it-to-aws\">Requirements for key pairs</a> in the <i>Amazon EC2 User
            Guide</i>.</p>")
    @as("SSHPublicKey")
    sshpublicKey: sshpublicKey,
    @ocaml.doc("<p>The serial port of the EC2 instance. Currently only port 0 is supported.</p>
        <p>Default: 0</p>")
    @as("SerialPort")
    serialPort: option<serialPort>,
    @ocaml.doc("<p>The ID of the EC2 instance.</p>") @as("InstanceId") instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>Is true if the request succeeds and an error otherwise.</p>") @as("Success")
    success: option<success>,
    @ocaml.doc(
      "<p>The ID of the request. Please provide this ID when contacting AWS Support for assistance.</p>"
    )
    @as("RequestId")
    requestId: option<requestId>,
  }
  @module("@aws-sdk/client-ec2-instance-connect") @new
  external new: request => t = "SendSerialConsoleSSHPublicKeyCommand"
  let make = (~sshpublicKey, ~instanceId, ~serialPort=?, ()) =>
    new({sshpublicKey: sshpublicKey, serialPort: serialPort, instanceId: instanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendSSHPublicKey = {
  type t
  type request = {
    @ocaml.doc("<p>The Availability Zone in which the EC2 instance was launched.</p>")
    @as("AvailabilityZone")
    availabilityZone: option<availabilityZone>,
    @ocaml.doc(
      "<p>The public key material. To use the public key, you must have the matching private key.</p>"
    )
    @as("SSHPublicKey")
    sshpublicKey: sshpublicKey,
    @ocaml.doc(
      "<p>The OS user on the EC2 instance for whom the key can be used to authenticate.</p>"
    )
    @as("InstanceOSUser")
    instanceOSUser: instanceOSUser,
    @ocaml.doc("<p>The ID of the EC2 instance.</p>") @as("InstanceId") instanceId: instanceId,
  }
  type response = {
    @ocaml.doc("<p>Is true if the request succeeds and an error otherwise.</p>") @as("Success")
    success: option<success>,
    @ocaml.doc(
      "<p>The ID of the request. Please provide this ID when contacting AWS Support for assistance.</p>"
    )
    @as("RequestId")
    requestId: option<requestId>,
  }
  @module("@aws-sdk/client-ec2-instance-connect") @new
  external new: request => t = "SendSSHPublicKeyCommand"
  let make = (~sshpublicKey, ~instanceOSUser, ~instanceId, ~availabilityZone=?, ()) =>
    new({
      availabilityZone: availabilityZone,
      sshpublicKey: sshpublicKey,
      instanceOSUser: instanceOSUser,
      instanceId: instanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
