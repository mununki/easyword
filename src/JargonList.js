// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Js_exn from "../node_modules/rescript/lib/es6/js_exn.js";
import * as Loader from "./Loader.js";
import * as Reactfire from "reactfire";
import * as Belt_Array from "../node_modules/rescript/lib/es6/belt_Array.js";
import * as Belt_Option from "../node_modules/rescript/lib/es6/belt_Option.js";
import * as Caml_option from "../node_modules/rescript/lib/es6/caml_option.js";
import * as Caml_js_exceptions from "../node_modules/rescript/lib/es6/caml_js_exceptions.js";
import * as Firestore from "firebase/firestore";
import * as RescriptReactRouter from "../node_modules/@rescript/react/src/RescriptReactRouter.js";

function makeRow(param, language) {
  var korean = param.korean;
  var english = param.english;
  var id = param.id;
  var match = language ? [
      korean,
      english
    ] : [
      english,
      korean
    ];
  return React.createElement("div", {
              key: id,
              className: "group cursor-pointer p-4 bg-white hover:bg-teal-50 rounded-xl shadow-md dark:bg-zinc-900 dark:hover:bg-teal-900",
              onClick: (function (param) {
                  RescriptReactRouter.push("/jargon/" + id + "");
                })
            }, React.createElement("div", {
                  className: "font-semibold group-hover:text-teal-700 dark:group-hover:text-teal-200 dark:text-white"
                }, match[0]), React.createElement("div", {
                  className: "font-regular text-right text-zinc-500 group-hover:text-teal-600 dark:text-zinc-400 dark:group-hover:text-teal-300"
                }, match[1]));
}

function JargonList(Props) {
  var enKo = Props.enKo;
  var regexQuery = Props.query;
  var language = enKo ? /* English */0 : /* Korean */1;
  var jargonsCollection = Firestore.collection(Reactfire.useFirestore(), "jargons");
  var language$1 = language ? "korean" : "english";
  var queryConstraint = Firestore.orderBy(language$1, "asc");
  var jargonsQuery = Firestore.query(jargonsCollection, queryConstraint);
  var match = Reactfire.useFirestoreCollectionData(jargonsQuery, {
        idField: "id"
      });
  if (match.status !== "success") {
    return React.createElement("div", {
                className: "h-screen grid justify-center content-center"
              }, React.createElement(Loader.make, {}));
  }
  var jargons = match.data;
  if (jargons === undefined) {
    return null;
  }
  var matchAll = /.*/;
  var regex;
  try {
    regex = new RegExp(regexQuery);
  }
  catch (raw_obj){
    var obj = Caml_js_exceptions.internalToOCamlException(raw_obj);
    if (obj.RE_EXN_ID === Js_exn.$$Error) {
      Belt_Option.forEach(obj._1.message, (function (prim) {
              console.log(prim);
            }));
      regex = matchAll;
    } else {
      throw obj;
    }
  }
  var rows = Belt_Array.keepMap(Caml_option.valFromOption(jargons), (function (jargon) {
          var match = jargon.english.match(regex);
          var match$1 = jargon.korean.match(regex);
          if (match !== null || match$1 !== null) {
            return Caml_option.some(makeRow(jargon, language));
          }
          
        }));
  return React.createElement("div", {
              className: "grid sm:grid-cols-2 xl:grid-cols-3 gap-x-6 gap-y-2"
            }, rows);
}

var make = JargonList;

export {
  makeRow ,
  make ,
}
/* react Not a pure module */
