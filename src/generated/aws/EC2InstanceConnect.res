type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type success = bool;
type amazonawsString = string
type serialPort = int;
type sSHPublicKey = string
type requestId = string
type instanceOSUser = string
type instanceId = string
type availabilityZone = string
type clientType;
@module("@aws-sdk/client-ec2-instance-connect") @new external createClient: unit => clientType = "EC2InstanceConnectClient";
module SendSerialConsoleSSHPublicKey = {
  type t;
  type request = {
@as("SSHPublicKey") sSHPublicKey: option<sSHPublicKey>,
@as("SerialPort") serialPort: serialPort,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("Success") success: success,
@as("RequestId") requestId: requestId
}
  @module("@aws-sdk/client-ec2-instance-connect") @new external new_: (request) => t = "SendSerialConsoleSSHPublicKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendSSHPublicKey = {
  type t;
  type request = {
@as("AvailabilityZone") availabilityZone: option<availabilityZone>,
@as("SSHPublicKey") sSHPublicKey: option<sSHPublicKey>,
@as("InstanceOSUser") instanceOSUser: option<instanceOSUser>,
@as("InstanceId") instanceId: option<instanceId>
}
  type response = {
@as("Success") success: success,
@as("RequestId") requestId: requestId
}
  @module("@aws-sdk/client-ec2-instance-connect") @new external new_: (request) => t = "SendSSHPublicKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
