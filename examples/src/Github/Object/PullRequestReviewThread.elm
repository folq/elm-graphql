-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.PullRequestReviewThread exposing (CommentsOptionalArguments, comments, id, pullRequest, repository)

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


type alias CommentsOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    }


{-| A list of pull request comments associated with the thread.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
comments : (CommentsOptionalArguments -> CommentsOptionalArguments) -> SelectionSet decodesTo Github.Object.PullRequestReviewCommentConnection -> SelectionSet decodesTo Github.Object.PullRequestReviewThread
comments fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "comments" optionalArgs object_ identity


id : SelectionSet Github.ScalarDecoders.Id Github.Object.PullRequestReviewThread
id =
    Object.selectionForField "ScalarDecoders.Id" "id" [] (Github.ScalarDecoders.codecs |> Github.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Identifies the pull request associated with this thread.
-}
pullRequest : SelectionSet decodesTo Github.Object.PullRequest -> SelectionSet decodesTo Github.Object.PullRequestReviewThread
pullRequest object_ =
    Object.selectionForCompositeField "pullRequest" [] object_ identity


{-| Identifies the repository associated with this thread.
-}
repository : SelectionSet decodesTo Github.Object.Repository -> SelectionSet decodesTo Github.Object.PullRequestReviewThread
repository object_ =
    Object.selectionForCompositeField "repository" [] object_ identity
