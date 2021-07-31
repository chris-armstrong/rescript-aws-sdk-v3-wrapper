// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Belt_Array = require("rescript/lib/js/belt_Array.js");
var Belt_Option = require("rescript/lib/js/belt_Option.js");
var Caml_exceptions = require("rescript/lib/js/caml_exceptions.js");

var smithyImplicitShapes = [
  {
    name: "smithy.api#String",
    descriptor: {
      TAG: /* StringShape */7,
      _0: {
        traits: undefined
      }
    },
    targets: []
  },
  {
    name: "smithy.api#Boolean",
    descriptor: {
      TAG: /* BooleanShape */5,
      _0: {
        traits: undefined
      }
    },
    targets: []
  },
  {
    name: "smithy.api#Integer",
    descriptor: {
      TAG: /* IntegerShape */6,
      _0: {
        traits: undefined
      }
    },
    targets: []
  },
  {
    name: "smithy.api#Timestamp",
    descriptor: {
      TAG: /* TimestampShape */9,
      _0: {
        traits: undefined
      }
    },
    targets: []
  },
  {
    name: "smithy.api#Long",
    descriptor: {
      TAG: /* LongShape */10,
      _0: {
        traits: undefined
      }
    },
    targets: []
  }
];

function getTargets(descriptor) {
  if (typeof descriptor === "number") {
    return [];
  }
  switch (descriptor.TAG | 0) {
    case /* ListShape */0 :
        return [descriptor._0.target];
    case /* OperationShape */1 :
        var details = descriptor._0;
        return Belt_Array.concatMany([
                    Belt_Option.getWithDefault(Belt_Option.map(details.input, (function (extracted) {
                                return [extracted];
                              })), []),
                    Belt_Option.getWithDefault(Belt_Option.map(details.output, (function (extracted) {
                                return [extracted];
                              })), []),
                    Belt_Option.getWithDefault(Belt_Option.map(details.errors, (function (extracted) {
                                return extracted;
                              })), [])
                  ]);
    case /* StructureShape */2 :
        return descriptor._0.members.map(function (member) {
                    return member.target;
                  });
    case /* UnionShape */3 :
        return descriptor._0.members.map(function (member) {
                    return member.target;
                  });
    case /* ServiceShape */4 :
        return Belt_Option.getWithDefault(descriptor._0.operations, []);
    case /* MapShape */8 :
        var match = descriptor._0;
        return [
                match.mapKey.target,
                match.mapValue.target
              ];
    case /* SetShape */13 :
        return [descriptor._0.target];
    default:
      return [];
  }
}

function getShapeTargets(shapes) {
  return Belt_Array.map(shapes, (function (shape) {
                return [
                        shape,
                        getTargets(shape.descriptor)
                      ];
              }));
}

var DependencyError = /* @__PURE__ */Caml_exceptions.create("Dependencies.DependencyError");

function containsAll(within, targets) {
  if (targets.length === 0) {
    return true;
  } else {
    return Belt_Array.every(targets, (function (target) {
                  return within.includes(target);
                }));
  }
}

function order_(_remaining, _ordered) {
  while(true) {
    var ordered = _ordered;
    var remaining = _remaining;
    if (remaining.length === 0) {
      return ordered;
    }
    var orderedNames = Belt_Array.map(ordered, (function (param) {
            return param.name;
          }));
    var match = Belt_Array.partition(remaining, (function(orderedNames){
        return function (param) {
          return containsAll(orderedNames, param.targets);
        }
        }(orderedNames)));
    var unfree = match[1];
    var free = match[0];
    if (free.length === 0) {
      throw {
            RE_EXN_ID: DependencyError,
            _1: Belt_Array.map(unfree, (function (param) {
                    return param.name;
                  })),
            _2: Belt_Array.map(ordered, (function (param) {
                    return param.name;
                  })),
            Error: new Error()
          };
    }
    var ordered$1 = Belt_Array.concat(ordered, free);
    _ordered = ordered$1;
    _remaining = unfree;
    continue ;
  };
}

function order(shapesWithTargets) {
  var implicitShapes = Belt_Array.keepMap(smithyImplicitShapes, (function (shape) {
          if (Belt_Array.every(shapesWithTargets, (function (param) {
                    return param.name !== shape.name;
                  }))) {
            return shape;
          }
          
        }));
  return order_(shapesWithTargets, implicitShapes);
}

exports.smithyImplicitShapes = smithyImplicitShapes;
exports.getTargets = getTargets;
exports.getShapeTargets = getShapeTargets;
exports.DependencyError = DependencyError;
exports.containsAll = containsAll;
exports.order_ = order_;
exports.order = order;
/* No side effect */
