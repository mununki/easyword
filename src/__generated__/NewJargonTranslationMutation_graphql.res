/* @sourceLoc NewJargon.res */
/* @generated */
%%raw("/* @generated */")
module Types = {
  @@warning("-30")

  @live
  type rec response_insert_translation_one = {
    @live id: string,
  }
  @live
  type response = {
    insert_translation_one: option<response_insert_translation_one>,
  }
  @live
  type rawResponse = response
  @live
  type variables = {
    authorID: string,
    commentID: string,
    jargonID: string,
    name: string,
  }
}

module Internal = {
  @live
  let variablesConverter: Js.Dict.t<Js.Dict.t<Js.Dict.t<string>>> = %raw(
    json`{"__root":{"jargonID":{"b":""},"commentID":{"b":""}}}`
  )
  @live
  let variablesConverterMap = ()
  @live
  let convertVariables = v => v->RescriptRelay.convertObj(
    variablesConverter,
    variablesConverterMap,
    Js.undefined
  )
  @live
  type wrapResponseRaw
  @live
  let wrapResponseConverter: Js.Dict.t<Js.Dict.t<Js.Dict.t<string>>> = %raw(
    json`{}`
  )
  @live
  let wrapResponseConverterMap = ()
  @live
  let convertWrapResponse = v => v->RescriptRelay.convertObj(
    wrapResponseConverter,
    wrapResponseConverterMap,
    Js.null
  )
  @live
  type responseRaw
  @live
  let responseConverter: Js.Dict.t<Js.Dict.t<Js.Dict.t<string>>> = %raw(
    json`{}`
  )
  @live
  let responseConverterMap = ()
  @live
  let convertResponse = v => v->RescriptRelay.convertObj(
    responseConverter,
    responseConverterMap,
    Js.undefined
  )
  type wrapRawResponseRaw = wrapResponseRaw
  @live
  let convertWrapRawResponse = convertWrapResponse
  type rawResponseRaw = responseRaw
  @live
  let convertRawResponse = convertResponse
}
module Utils = {
  @@warning("-33")
  open Types
}

type relayOperationNode
type operationType = RescriptRelay.mutationNode<relayOperationNode>


let node: operationType = %raw(json` (function(){
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
    "name": "NewJargonTranslationMutation",
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
    "name": "NewJargonTranslationMutation",
    "selections": (v4/*: any*/)
  },
  "params": {
    "cacheID": "e3f7578910f5ca76f2f19ea3cffd79f7",
    "id": null,
    "metadata": {},
    "name": "NewJargonTranslationMutation",
    "operationKind": "mutation",
    "text": "mutation NewJargonTranslationMutation(\n  $authorID: String!\n  $name: String!\n  $jargonID: uuid!\n  $commentID: uuid!\n) {\n  insert_translation_one(object: {author_id: $authorID, name: $name, jargon_id: $jargonID, comment_id: $commentID}) {\n    id\n  }\n}\n"
  }
};
})() `)


