type t = {id: string, english: string, korean: string, timestamp: option<Firebase.Timestamp.t>}
type translation = {id: string, korean: string, votes: int}

type language = English | Korean
type direction = [#asc | #desc]
type order = (language, direction)
