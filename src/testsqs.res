
let client = Sqs.createClient();
let res = {
  open Sqs.CreateQueue;
  let command = new_({
    queueName: Some("test-queue"),
    attributes: Js.Dict.fromArray([("KmsMasterKeyId", "alias/aws/sqs")]),
    tags: Js.Dict.empty()
  })
  send(client, command)|>Js.Promise.then_(
    result => {Js.log2("SQS success", result)
    Js.Promise.resolve()
    })
  |>Js.Promise.catch(e => {
    Js.log(e)
    Js.Promise.resolve()
  })
 }
// sendCreateQueue(command)->Js.Promise.then_(result => {
//   Js.log(result)
//   Js.Promise.resolve(())
// }, error => {
//   Js.log2("error", error)
//   Js.Promise.resolve(())
// })