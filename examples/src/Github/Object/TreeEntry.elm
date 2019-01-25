-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.TreeEntry exposing (mode, name, object, oid, repository, type_)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.ScalarDecoders
import Github.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Entry file mode.
-}
mode : SelectionSet Int Github.Object.TreeEntry
mode =
    Object.selectionForField "Int" "mode" [] Decode.int


{-| Entry file name.
-}
name : SelectionSet String Github.Object.TreeEntry
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| Entry file object.
-}
object : SelectionSet decodesTo Github.Interface.GitObject -> SelectionSet (Maybe decodesTo) Github.Object.TreeEntry
object object_ =
    Object.selectionForCompositeField "object" [] object_ (identity >> Decode.nullable)


{-| Entry file Git object ID.
-}
oid : SelectionSet Github.ScalarDecoders.GitObjectID Github.Object.TreeEntry
oid =
    Object.selectionForField "ScalarDecoders.GitObjectID" "oid" [] (Github.ScalarDecoders.codecs |> Github.Scalar.unwrapCodecs |> .codecGitObjectID |> .decoder)


{-| The Repository the tree entry belongs to
-}
repository : SelectionSet decodesTo Github.Object.Repository -> SelectionSet decodesTo Github.Object.TreeEntry
repository object_ =
    Object.selectionForCompositeField "repository" [] object_ identity


{-| Entry file type.
-}
type_ : SelectionSet String Github.Object.TreeEntry
type_ =
    Object.selectionForField "String" "type" [] Decode.string
