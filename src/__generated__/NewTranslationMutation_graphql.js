// Generated by ReScript, PLEASE EDIT WITH CARE
/* @generated */

import * as RescriptRelay from "../../node_modules/rescript-relay/src/RescriptRelay.js";

var Types = {};

var variablesConverter = {"__root":{"jargonID":{"b":""},"commentID":{"b":""}}};

function convertVariables(v) {
  return RescriptRelay.convertObj(v, variablesConverter, undefined, undefined);
}

var wrapResponseConverter = {};

function convertWrapResponse(v) {
  return RescriptRelay.convertObj(v, wrapResponseConverter, undefined, null);
}

var responseConverter = {};

function convertResponse(v) {
  return RescriptRelay.convertObj(v, responseConverter, undefined, undefined);
}

var Internal = {
  variablesConverter: variablesConverter,
  variablesConverterMap: undefined,
  convertVariables: convertVariables,
  wrapResponseConverter: wrapResponseConverter,
  wrapResponseConverterMap: undefined,
  convertWrapResponse: convertWrapResponse,
  responseConverter: responseConverter,
  responseConverterMap: undefined,
  convertResponse: convertResponse,
  convertWrapRawResponse: convertWrapResponse,
  convertRawResponse: convertResponse
};

var Utils = {};

var node = ((function(){
var v0 = {
  "defaultValue": null,
  "kind": "LocalArgument",
  "name": "authorID"
},
v1 = {
  "defaultValue": null,
  "kind": "LocalArgument",
  "name": "commentID"
},
v2 = {
  "defaultValue": null,
  "kind": "LocalArgument",
  "name": "jargonID"
},
v3 = {
  "defaultValue": null,
  "kind": "LocalArgument",
  "name": "name"
},
v4 = [
  {
    "alias": null,
    "args": [
      {
        "fields": [
          {
            "kind": "Variable",
            "name": "author_id",
            "variableName": "authorID"
          },
          {
            "kind": "Variable",
            "name": "comment_id",
            "variableName": "commentID"
          },
          {
            "kind": "Variable",
            "name": "jargon_id",
            "variableName": "jargonID"
          },
          {
            "kind": "Variable",
            "name": "name",
            "variableName": "name"
          }
        ],
        "kind": "ObjectValue",
        "name": "object"
      }
    ],
    "concreteType": "translation",
    "kind": "LinkedField",
    "name": "insert_translation_one",
    "plural": false,
    "selections": [
      {
        "alias": null,
        "args": null,
        "kind": "ScalarField",
        "name": "id",
        "storageKey": null
      }
    ],
    "storageKey": null
  }
];
return {
  "fragment": {
    "argumentDefinitions": [
      (v0/*: any*/),
      (v1/*: any*/),
      (v2/*: any*/),
      (v3/*: any*/)
    ],
    "kind": "Fragment",
    "metadata": null,
    "name": "NewTranslationMutation",
    "selections": (v4/*: any*/),
    "type": "mutation_root",
    "abstractKey": null
  },
  "kind": "Request",
  "operation": {
    "argumentDefinitions": [
      (v0/*: any*/),
      (v3/*: any*/),
      (v2/*: any*/),
      (v1/*: any*/)
    ],
    "kind": "Operation",
    "name": "NewTranslationMutation",
    "selections": (v4/*: any*/)
  },
  "params": {
    "cacheID": "9123c7ef1cc57d72b30290a3ffa5523f",
    "id": null,
    "metadata": {},
    "name": "NewTranslationMutation",
    "operationKind": "mutation",
    "text": "mutation NewTranslationMutation(\n  $authorID: String!\n  $name: String!\n  $jargonID: uuid!\n  $commentID: uuid!\n) {\n  insert_translation_one(object: {author_id: $authorID, name: $name, jargon_id: $jargonID, comment_id: $commentID}) {\n    id\n  }\n}\n"
  }
};
})());

export {
  Types ,
  Internal ,
  Utils ,
  node ,
}
/* node Not a pure module */
