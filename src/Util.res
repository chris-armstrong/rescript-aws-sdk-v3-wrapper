open Belt;

let symbolName = str => {
  let result = Js.String2.split(str, "#")[1];
  Option.getWithDefault(result, str);
}

let symbolNamespace = str => {
  let result = Js.String2.split(str, "#")[0];
  Option.getWithDefault(result, "");
}
