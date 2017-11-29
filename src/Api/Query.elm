module Api.Query exposing (..)

import GraphqElm.Argument as Argument exposing (Argument)
import GraphqElm.Field as Field exposing (Field, FieldDecoder)
import GraphqElm.Object as Object exposing (Object)
import GraphqElm.Query as Query
import GraphqElm.TypeLock exposing (TypeLocked(TypeLocked))
import Json.Decode as Decode exposing (Decoder)


captains : Field.Query (List String)
captains =
    Field.custom "captains" (Decode.string |> Decode.list)
        |> Query.rootQuery


me : Field.Query String
me =
    Field.custom "me" Decode.string
        |> Query.rootQuery


menuItems : List (TypeLocked Argument MenuItem.Type) -> Object menuItem MenuItem.Type -> Field.Query (List menuItem)
menuItems optionalArgs object =
    Object.listOf "menuItems" optionalArgs object
        |> Query.rootQuery
