// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Js_dict = require("rescript/lib/js/js_dict.js");
var ClientSqs = require("@aws-sdk/client-sqs");

var client = new ClientSqs.SQSClient();

var command = new ClientSqs.CreateQueueCommand({
      Attributes: Js_dict.fromArray([[
              "KmsMasterKeyId",
              "alias/aws/sqs"
            ]]),
      tags: {},
      QueueName: "test-queue"
    });

var res = client.send(command).then(function (result) {
        console.log("SQS success", result);
        return Promise.resolve(undefined);
      }).catch(function (e) {
      console.log(e);
      return Promise.resolve(undefined);
    });

exports.client = client;
exports.res = res;
/* client Not a pure module */
