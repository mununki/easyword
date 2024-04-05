// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Js_exn from "../node_modules/rescript/lib/es6/js_exn.js";
import * as Core__JSON from "../node_modules/@rescript/core/src/Core__JSON.js";
import * as Core__Option from "../node_modules/@rescript/core/src/Core__Option.js";
import * as Caml_js_exceptions from "../node_modules/rescript/lib/es6/caml_js_exceptions.js";

function retrieveOriginalID(id) {
  try {
    var decoded = Core__JSON.Decode.array(JSON.parse(atob(id), undefined));
    if (decoded !== undefined) {
      return Core__Option.flatMap(decoded[3], (function (x) {
                    return Core__JSON.Decode.string(x);
                  }));
    } else {
      return ;
    }
  }
  catch (raw_exn){
    var exn = Caml_js_exceptions.internalToOCamlException(raw_exn);
    if (exn.RE_EXN_ID === Js_exn.$$Error) {
      console.error("Error decoding ID: " + id);
      return ;
    }
    throw exn;
  }
}

export {
  retrieveOriginalID ,
}
/* No side effect */