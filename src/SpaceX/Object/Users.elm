-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module SpaceX.Object.Users exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode
import SpaceX.InputObject
import SpaceX.Interface
import SpaceX.Object
import SpaceX.Scalar
import SpaceX.ScalarCodecs
import SpaceX.Union


{-| -}
id : SelectionSet SpaceX.ScalarCodecs.Uuid SpaceX.Object.Users
id =
    Object.selectionForField "ScalarCodecs.Uuid" "id" [] (SpaceX.ScalarCodecs.codecs |> SpaceX.Scalar.unwrapCodecs |> .codecUuid |> .decoder)


{-| -}
name : SelectionSet (Maybe String) SpaceX.Object.Users
name =
    Object.selectionForField "(Maybe String)" "name" [] (Decode.string |> Decode.nullable)


{-| -}
rocket : SelectionSet (Maybe String) SpaceX.Object.Users
rocket =
    Object.selectionForField "(Maybe String)" "rocket" [] (Decode.string |> Decode.nullable)


{-| -}
timestamp : SelectionSet SpaceX.ScalarCodecs.Timestamptz SpaceX.Object.Users
timestamp =
    Object.selectionForField "ScalarCodecs.Timestamptz" "timestamp" [] (SpaceX.ScalarCodecs.codecs |> SpaceX.Scalar.unwrapCodecs |> .codecTimestamptz |> .decoder)


{-| -}
twitter : SelectionSet (Maybe String) SpaceX.Object.Users
twitter =
    Object.selectionForField "(Maybe String)" "twitter" [] (Decode.string |> Decode.nullable)
