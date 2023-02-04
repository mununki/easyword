// Firestore comment entity
@deriving({abstract: light})
type t = {
  @optional id: string,
  content: string,
  user: string,
  timestamp: Firebase.Timestamp.t,
  parent: string,
}

type write = {
  jargonID: string,
  content: string,
  parent: string,
}

type rec node = {
  comment: t,
  mutable parent: option<node>,
  mutable children: list<node>,
}
