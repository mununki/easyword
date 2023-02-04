// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Home from "./Home.js";
import * as Js_exn from "../node_modules/rescript/lib/es6/js_exn.js";
import * as Loader from "./Loader.js";
import * as SignIn from "./SignIn.js";
import * as Firebase from "./Firebase.js";
import * as Reactfire from "reactfire";
import * as JargonPost from "./JargonPost.js";
import * as Belt_Option from "../node_modules/rescript/lib/es6/belt_Option.js";
import * as Caml_option from "../node_modules/rescript/lib/es6/caml_option.js";
import * as SignInContext from "./SignInContext.js";
import * as Auth from "firebase/auth";
import * as NavbarContainer from "./NavbarContainer.js";
import * as JsxRuntime from "react/jsx-runtime";
import * as Caml_js_exceptions from "../node_modules/rescript/lib/es6/caml_js_exceptions.js";
import * as AppCheck from "firebase/app-check";
import * as Firestore from "firebase/firestore";
import * as RescriptReactRouter from "../node_modules/@rescript/react/src/RescriptReactRouter.js";

function App$SignInWrapper(props) {
  var match = Reactfire.useSigninCheck();
  if (match.status === "success") {
    return JsxRuntime.jsx(SignInContext.Provider.make, {
                value: Belt_Option.getExn(match.data),
                children: props.children
              });
  } else {
    return JsxRuntime.jsx("div", {
                children: JsxRuntime.jsx(Loader.make, {}),
                className: "h-screen grid justify-center content-center"
              });
  }
}

var SignInWrapper = {
  make: App$SignInWrapper
};

function App(props) {
  var app = Reactfire.useFirebaseApp();
  var auth = Auth.getAuth(app);
  var appCheck = AppCheck.initializeAppCheck(app, {
        provider: new AppCheck.ReCaptchaV3Provider(Firebase.appCheckToken),
        isTokenAutoRefreshEnabled: true
      });
  var match = Reactfire.useInitFirestore(async function (app) {
        var firestore = Firestore.getFirestore(app);
        try {
          await Firestore.enableMultiTabIndexedDbPersistence(firestore);
        }
        catch (raw_err){
          var err = Caml_js_exceptions.internalToOCamlException(raw_err);
          if (err.RE_EXN_ID === Js_exn.$$Error) {
            console.log(err._1);
          } else {
            throw err;
          }
        }
        return firestore;
      });
  var firestore = match.data;
  var url = RescriptReactRouter.useUrl(undefined, undefined);
  if (match.status !== "success") {
    return JsxRuntime.jsx("div", {
                children: JsxRuntime.jsx(Loader.make, {}),
                className: "h-screen grid justify-center content-center"
              });
  }
  if (firestore === undefined) {
    return null;
  }
  var path = url.path;
  var tmp;
  var exit = 0;
  if (path && path.hd === "login" && !path.tl) {
    tmp = JsxRuntime.jsx(SignIn.make, {});
  } else {
    exit = 1;
  }
  if (exit === 1) {
    var tmp$1;
    if (path) {
      if (path.hd === "jargon") {
        var match$1 = path.tl;
        tmp$1 = match$1 && !match$1.tl ? JsxRuntime.jsx(JargonPost.make, {
                jargonID: match$1.hd
              }) : "404";
      } else {
        tmp$1 = "404";
      }
    } else {
      tmp$1 = JsxRuntime.jsx(Home.make, {});
    }
    tmp = JsxRuntime.jsx(NavbarContainer.make, {
          children: tmp$1
        });
  }
  return JsxRuntime.jsx(Reactfire.AppCheckProvider, {
              sdk: appCheck,
              children: JsxRuntime.jsx(Reactfire.AuthProvider, {
                    sdk: auth,
                    children: JsxRuntime.jsx(Reactfire.FirestoreProvider, {
                          sdk: Caml_option.valFromOption(firestore),
                          children: JsxRuntime.jsx(App$SignInWrapper, {
                                children: tmp
                              })
                        })
                  })
            });
}

var make = App;

export {
  SignInWrapper ,
  make ,
}
/* Home Not a pure module */
