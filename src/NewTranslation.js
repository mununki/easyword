// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Util from "./Util.js";
import * as React from "react";
import * as Reactfire from "reactfire";
import * as SignInContext from "./SignInContext.js";
import * as JsxRuntime from "react/jsx-runtime";
import * as Caml_js_exceptions from "../node_modules/rescript/lib/es6/caml_js_exceptions.js";
import * as Firestore from "firebase/firestore";
import * as Functions from "firebase/functions";
import * as RescriptReactRouter from "../node_modules/@rescript/react/src/RescriptReactRouter.js";

function NewTranslation(props) {
  var jargonID = props.jargonID;
  var match = React.useContext(SignInContext.context);
  var user = match.user;
  var signedIn = match.signedIn;
  var match$1 = React.useState(function () {
        return "";
      });
  var setEnglish = match$1[1];
  var firestore = Reactfire.useFirestore();
  React.useEffect((function () {
          if (signedIn) {
            if (user == null) {
              RescriptReactRouter.replace("/logout");
            }
            
          } else {
            RescriptReactRouter.replace("/login");
          }
          ((async function (param) {
                  var jargonDocRef = Firestore.doc(firestore, "jargons/" + jargonID + "");
                  var jargonDoc = await Firestore.getDoc(jargonDocRef);
                  if (jargonDoc.exists()) {
                    return setEnglish(function (param) {
                                return jargonDoc.data().english;
                              });
                  }
                  
                })(undefined));
        }), []);
  var match$2 = React.useState(function () {
        return false;
      });
  var setDisabled = match$2[1];
  var match$3 = React.useState(function () {
        return "";
      });
  var setKorean = match$3[1];
  var korean = match$3[0];
  var handleTranslationChange = function ($$event) {
    var value = $$event.currentTarget.value;
    setKorean(function (param) {
          return value.trim();
        });
  };
  var match$4 = React.useState(function () {
        return "";
      });
  var setComment = match$4[1];
  var comment = match$4[0];
  var handleCommentChange = function ($$event) {
    var value = $$event.currentTarget.value;
    setComment(function (param) {
          return value.trim();
        });
  };
  var functions = Functions.getFunctions(Reactfire.useFirebaseApp(), "asia-northeast3");
  var addTranslation = Functions.httpsCallable(functions, "addTranslation");
  var handleSubmit = function ($$event) {
    $$event.preventDefault();
    if (korean.length < 3) {
      window.alert("용어는 세 글자 이상이어야 해요");
      return ;
    } else if (signedIn) {
      if (user == null) {
        return RescriptReactRouter.replace("/logout");
      } else {
        setDisabled(function (param) {
              return true;
            });
        ((async function (param) {
                var comment$1 = comment === "" ? "" + Util.eulLeul(korean) + " 제안합니다." : comment;
                try {
                  await addTranslation({
                        id: jargonID,
                        korean: korean,
                        comment: comment$1
                      });
                  return RescriptReactRouter.replace("/jargon/" + jargonID + "");
                }
                catch (raw_e){
                  var e = Caml_js_exceptions.internalToOCamlException(raw_e);
                  console.log(e);
                  return ;
                }
              })(undefined));
        return ;
      }
    } else {
      return RescriptReactRouter.replace("/login");
    }
  };
  if (signedIn) {
    return JsxRuntime.jsxs("div", {
                children: [
                  JsxRuntime.jsx("h2", {
                        children: "" + match$1[0] + "의 쉬운 전문용어 제안하기"
                      }),
                  JsxRuntime.jsx("form", {
                        children: JsxRuntime.jsxs("div", {
                              children: [
                                JsxRuntime.jsxs("label", {
                                      children: [
                                        JsxRuntime.jsx("label", {
                                              children: JsxRuntime.jsx("span", {
                                                    children: "번역",
                                                    className: "label-text"
                                                  }),
                                              className: "label"
                                            }),
                                        JsxRuntime.jsx("input", {
                                              className: "input input-bordered w-full",
                                              type: "text",
                                              value: korean,
                                              onChange: handleTranslationChange
                                            })
                                      ],
                                      className: "block"
                                    }),
                                JsxRuntime.jsxs("label", {
                                      children: [
                                        JsxRuntime.jsx("label", {
                                              children: JsxRuntime.jsx("span", {
                                                    children: "의견",
                                                    className: "label-text"
                                                  }),
                                              className: "label"
                                            }),
                                        JsxRuntime.jsx("textarea", {
                                              className: "textarea textarea-bordered w-full",
                                              placeholder: "새 댓글로 달려요",
                                              value: comment,
                                              onChange: handleCommentChange
                                            })
                                      ],
                                      className: "block"
                                    }),
                                JsxRuntime.jsx("input", {
                                      className: "btn btn-primary",
                                      disabled: match$2[0],
                                      type: "submit",
                                      value: "제안하기"
                                    })
                              ],
                              className: "grid grid-cols-1 gap-6"
                            }),
                        className: "mt-8 max-w-md",
                        onSubmit: handleSubmit
                      })
                ],
                className: "px-6 py-12 max-w-xl mx-auto md:max-w-4xl prose"
              });
  } else {
    return null;
  }
}

var make = NewTranslation;

export {
  make ,
}
/* react Not a pure module */
