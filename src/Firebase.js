// Generated by ReScript, PLEASE EDIT WITH CARE

import * as FirebaseConfig from "./firebaseConfig";

var firebaseConfig = FirebaseConfig.firebaseConfig;

var FirebaseAppProvider = {};

var FirebaseOptions = {};

var FirebaseApp = {};

var FirestoreProvider = {};

function uid(param) {
  return param.uid;
}

function providerId(param) {
  return param.providerId;
}

function displayName(param) {
  return param.displayName;
}

function email(param) {
  return param.email;
}

var User = {
  uid: uid,
  providerId: providerId,
  displayName: displayName,
  email: email
};

var AuthUser = {};

var EmailAuthProvider = {
  providerID: "password"
};

var GithubAuthProvider = {
  providerID: "github.com"
};

var GoogleAuthProvider = {
  providerID: "google.com"
};

var FederatedAuthProvider = {};

var Auth = {
  AuthUser: AuthUser,
  EmailAuthProvider: EmailAuthProvider,
  GithubAuthProvider: GithubAuthProvider,
  GoogleAuthProvider: GoogleAuthProvider,
  FederatedAuthProvider: FederatedAuthProvider
};

var AuthProvider = {};

var appCheckToken = FirebaseConfig.APP_CHECK_TOKEN;

var AppCheckProvider = {};

var Timestamp = {};

export {
  firebaseConfig ,
  FirebaseAppProvider ,
  FirebaseOptions ,
  FirebaseApp ,
  FirestoreProvider ,
  User ,
  Auth ,
  AuthProvider ,
  appCheckToken ,
  AppCheckProvider ,
  Timestamp ,
}
/* firebaseConfig Not a pure module */
