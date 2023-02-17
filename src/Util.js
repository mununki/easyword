// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Caml_string from "../node_modules/rescript/lib/es6/caml_string.js";

function endsWithJong(korean) {
  var c = Caml_string.get(korean, korean.length - 1 | 0);
  if (/* '가' */44032 <= c && c <= /* '힣' */55203) {
    return (c - /* '가' */44032 | 0) % 28 > 0;
  } else {
    return false;
  }
}

function eulLeul(korean) {
  return korean + (
          endsWithJong(korean) ? "을" : "를"
        );
}

export {
  endsWithJong ,
  eulLeul ,
}
/* No side effect */