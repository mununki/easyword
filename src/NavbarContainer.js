// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Navbar from "./Navbar.js";
import * as SignInContext from "./SignInContext.js";
import * as JsxRuntime from "react/jsx-runtime";

function NavbarContainer(props) {
  var match = React.useContext(SignInContext.context);
  return JsxRuntime.jsxs("div", {
              children: [
                JsxRuntime.jsx(Navbar.make, {
                      signedIn: match.signedIn
                    }),
                props.children
              ]
            });
}

var make = NavbarContainer;

export {
  make ,
}
/* react Not a pure module */
