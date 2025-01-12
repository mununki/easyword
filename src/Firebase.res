type firebaseConfig
@module("./firebaseConfig")
external firebaseConfig: firebaseConfig = "firebaseConfig"

module FirebaseAppProvider = {
  @react.component @module("reactfire")
  external make: (~firebaseConfig: firebaseConfig, ~children: React.element) => React.element =
    "FirebaseAppProvider"
}

module FirebaseOptions = {
  type t
}

module FirebaseApp = {
  type t = {options: FirebaseOptions.t}
}

@module("reactfire")
external useFirebaseApp: unit => FirebaseApp.t = "useFirebaseApp"

type firestore
@module("firebase/firestore")
external getFirestore: FirebaseApp.t => firestore = "getFirestore"

module FirestoreProvider = {
  @react.component @module("reactfire")
  external make: (~sdk: firestore, ~children: React.element) => React.element = "FirestoreProvider"
}

// TODO: Bind TS string union `status`
type observableStatus<'a> = {status: @string [#loading | #success], data: option<'a>}
@module("reactfire")
external useInitFirestore: (FirebaseApp.t => promise<firestore>) => observableStatus<_> =
  "useInitFirestore"

@module("reactfire")
external useFirestore: unit => firestore = "useFirestore"

@module("firebase/firestore")
external enableIndexedDbPersistence: firestore => promise<unit> = "enableIndexedDbPersistence"

@module("firebase/firestore")
external enableMultiTabIndexedDbPersistence: firestore => promise<unit> =
  "enableMultiTabIndexedDbPersistence"

type documentReference
@module("firebase/firestore")
external doc: (firestore, ~path: string) => documentReference = "doc"

type documentSnapshot<'a> = {exists: unit => bool, data: unit => 'a}
@module("firebase/firestore")
external onSnapshot: (documentReference, documentSnapshot<'a> => promise<unit>) => 'unsubscribe =
  "onSnapshot"

type collectionReference
@module("firebase/firestore")
external collection: (firestore, ~path: string) => collectionReference = "collection"

type query
type queryConstraint
@module("firebase/firestore") @variadic
external query: (collectionReference, array<queryConstraint>) => query = "query"

@module("firebase/firestore")
external getDoc: documentReference => promise<documentSnapshot<'a>> = "getDoc"

@module("firebase/firestore")
external setDoc: (documentReference, 'a) => promise<unit> = "setDoc"

@module("firebase/firestore")
external setDoc2: (documentReference, 'a, 'b) => promise<unit> = "setDoc"

@module("firebase/firestore")
external updateDoc: (documentReference, 'a) => promise<unit> = "updateDoc"

@module("firebase/firestore")
external addDoc: (collectionReference, 'a) => promise<documentReference> = "addDoc"

@deriving(abstract)
type reactFireOptions<'a> = {
  @optional idField: string,
  @optional initialData: 'a,
  @optional suspense: bool,
}

module User = {
  @deriving(accessors)
  type info = {
    uid: string,
    providerId: string,
    displayName: option<string>,
    email: option<string>,
  }
  type t = {
    uid: string,
    displayName: option<string>,
    email: option<string>,
    emailVerified: bool,
    photoURL: option<string>,
    providerData: array<info>,
  }
}

module Auth = {
  module AuthUser = {
    // TODO: Merge with User.t
    type t = {
      uid: string,
      emailVerified: bool,
      isAnonymous: bool,
      //metadata: {
      //  creationTime: string,
      //  lastSignInTime: string,
      //},
      providerData: array<User.info>,
      refreshToken: string,
      tenatId: option<string>,
    }

    type idTokenResult = {
      authTime: string,
      claims: Dict.t<string>,
      expirationTime: string,
      issuedAtTime: string,
      signInProvider: option<string>,
      signInSecondFactor: option<string>,
      token: string,
    }

    @send
    external getIdToken: (t, ~forceRefresh: bool) => promise<string> = "getIdToken"

    @send
    external getIdTokenResult: (t, ~forceRefresh: bool) => promise<idTokenResult> =
      "getIdTokenResult"
  }
  type t = {app: FirebaseApp.t, currentUser: Nullable.t<AuthUser.t>}
  type update = {displayName?: string, photoURL?: string}

  @module("firebase/auth")
  external onAuthStateChanged: (t, Nullable.t<AuthUser.t> => promise<unit>) => 'unsubscribe =
    "onAuthStateChanged"

  @module("firebase/auth")
  external signOut: t => promise<unit> = "signOut"

  @module("firebase/auth")
  external updateProfile: (User.t, update) => promise<unit> = "updateProfile"

  module EmailAuthProvider = {
    let providerID = "password"
  }
  module GithubAuthProvider = {
    let providerID = "github.com"
  }
  module GoogleAuthProvider = {
    let providerID = "google.com"
  }

  @module("firebase/auth")
  external getAuth: FirebaseApp.t => t = "getAuth"

  @string
  type operationType = [#link | #reauthenticate | #signIn]

  type userCredential = {
    operationType: operationType,
    providerId: option<string>,
    user: User.t,
  }

  module FederatedAuthProvider = {
    type t
    @new @module("firebase/auth")
    external googleAuthProvider: unit => t = "GoogleAuthProvider"
  }

  @module("firebase/auth")
  external signInWithPopup: (t, FederatedAuthProvider.t) => promise<userCredential> =
    "signInWithPopup"
}

module AuthProvider = {
  @react.component @module("reactfire")
  external make: (~sdk: Auth.t, ~children: React.element) => React.element = "AuthProvider"
}

@module("reactfire")
external useAuth: unit => Auth.t = "useAuth"

// TODO: The domain modeling seems a bit off--what does it mean when signedIn is false and there is a user?
type signInCheckResult = {signedIn: bool, user: Nullable.t<User.t>}
@module("reactfire")
external useSigninCheck: unit => observableStatus<signInCheckResult> = "useSigninCheck"

type appCheckToken
@module("./firebaseConfig")
external appCheckToken: appCheckToken = "APP_CHECK_TOKEN"

type reCaptchaV3Provider
@new @module("firebase/app-check")
external createReCaptchaV3Provider: appCheckToken => reCaptchaV3Provider = "ReCaptchaV3Provider"

type appCheck
type appCheckConfig = {provider: reCaptchaV3Provider, isTokenAutoRefreshEnabled: bool}
@module("firebase/app-check")
external initializeAppCheck: (FirebaseApp.t, appCheckConfig) => appCheck = "initializeAppCheck"

module AppCheckProvider = {
  @react.component @module("reactfire")
  external make: (~sdk: appCheck, ~children: React.element) => React.element = "AppCheckProvider"
}
