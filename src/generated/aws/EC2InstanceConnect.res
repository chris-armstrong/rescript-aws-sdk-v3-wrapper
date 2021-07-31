type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type success = bool
type string_ = string
type serialPort = int
type sshpublicKey = string
type requestId = string
type instanceOSUser = string
type instanceId = string
type availabilityZone = string
type awsServiceClient;
@module("@aws-sdk/client-ec2-instance-connect") @new external createClient: unit => awsServiceClient = "EC2InstanceConnectClient";
module SendSerialConsoleSSHPublicKey = {
  type t;
  type request = {
@as("SSHPublicKey") sshpublicKey: sshpublicKey,
@as("SerialPort") serialPort: option<serialPort>,
@as("InstanceId") instanceId: instanceId
}
  type response = {
@as("Success") success: option<success>,
@as("RequestId") requestId: option<requestId>
}
  @module("@aws-sdk/client-ec2-instance-connect") @new external new_: (request) => t = "SendSerialConsoleSSHPublicKeyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SendSSHPublicKey = {
  type t;
  type request = {
@as("AvailabilityZone") availabilityZone: availabilityZone,
@as("SSHPublicKey") sshpublicKey: sshpublicKey,
@as("InstanceOSUser") instanceOSUser: instanceOSUser,
@as("InstanceId") instanceId: instanceId
}
  type response = {
@as("Success") success: option<success>,
@as("RequestId") requestId: option<requestId>
}
  @module("@aws-sdk/client-ec2-instance-connect") @new external new_: (request) => t = "SendSSHPublicKeyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
