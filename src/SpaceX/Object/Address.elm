-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module SpaceX.Object.Address exposing (..)

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
address : SelectionSet (Maybe String) SpaceX.Object.Address
address =
    Object.selectionForField "(Maybe String)" "address" [] (Decode.string |> Decode.nullable)


{-| -}
city : SelectionSet (Maybe String) SpaceX.Object.Address
city =
    Object.selectionForField "(Maybe String)" "city" [] (Decode.string |> Decode.nullable)


{-| -}
state : SelectionSet (Maybe String) SpaceX.Object.Address
state =
    Object.selectionForField "(Maybe String)" "state" [] (Decode.string |> Decode.nullable)
