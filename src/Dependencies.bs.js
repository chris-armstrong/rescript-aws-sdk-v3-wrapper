// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Caml_obj = require("rescript/lib/js/caml_obj.js");
var SafeNames = require("./SafeNames.bs.js");
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
    targets: [],
    recursWith: undefined
  },
  {
    name: "smithy.api#Boolean",
    descriptor: {
      TAG: /* BooleanShape */5,
      _0: {
        traits: undefined
      }
    },
    targets: [],
    recursWith: undefined
  },
  {
    name: "smithy.api#Integer",
    descriptor: {
      TAG: /* IntegerShape */6,
      _0: {
        traits: undefined
      }
    },
    targets: [],
    recursWith: undefined
  },
  {
    name: "smithy.api#Timestamp",
    descriptor: {
      TAG: /* TimestampShape */9,
      _0: {
        traits: undefined
      }
    },
    targets: [],
    recursWith: undefined
  },
  {
    name: "smithy.api#Long",
    descriptor: {
      TAG: /* LongShape */10,
      _0: {
        traits: undefined
      }
    },
    targets: [],
    recursWith: undefined
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

var CycleError = /* @__PURE__ */Caml_exceptions.create("Dependencies.CycleError");

function containsAll(within, targets) {
  if (targets.length === 0) {
    return true;
  } else {
    return Belt_Array.every(targets, (function (target) {
                  return within.includes(target);
                }));
  }
}

function hasTarget(target, candidates) {
  return Belt_Array.some(candidates, (function (candidate) {
                return Belt_Array.some(candidate.targets, (function (candidateTarget) {
                              return candidateTarget === target;
                            }));
              }));
}

function filterOut(l, x) {
  return Belt_Array.keep(l, (function (i) {
                return Caml_obj.caml_notequal(i, x);
              }));
}

function getShapeWithTargetNames(s) {
  return Belt_Array.map(s, (function (param) {
                return param.name;
              }));
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
            RE_EXN_ID: CycleError,
            _1: getShapeWithTargetNames(unfree),
            _2: getShapeWithTargetNames(free),
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
                    return SafeNames.safeTypeName(param.name) !== SafeNames.safeTypeName(shape.name);
                  }))) {
            return shape;
          }
          
        }));
  return order_(shapesWithTargets, implicitShapes);
}

exports.smithyImplicitShapes = smithyImplicitShapes;
exports.getTargets = getTargets;
exports.getShapeTargets = getShapeTargets;
exports.CycleError = CycleError;
exports.containsAll = containsAll;
exports.hasTarget = hasTarget;
exports.filterOut = filterOut;
exports.getShapeWithTargetNames = getShapeWithTargetNames;
exports.order_ = order_;
exports.order = order;
/* SafeNames Not a pure module */
