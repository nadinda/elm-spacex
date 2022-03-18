-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module SpaceX.Object.RocketFirstStage exposing (..)

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
burn_time_sec : SelectionSet (Maybe Int) SpaceX.Object.RocketFirstStage
burn_time_sec =
    Object.selectionForField "(Maybe Int)" "burn_time_sec" [] (Decode.int |> Decode.nullable)


{-| -}
engines : SelectionSet (Maybe Int) SpaceX.Object.RocketFirstStage
engines =
    Object.selectionForField "(Maybe Int)" "engines" [] (Decode.int |> Decode.nullable)


{-| -}
fuel_amount_tons : SelectionSet (Maybe Float) SpaceX.Object.RocketFirstStage
fuel_amount_tons =
    Object.selectionForField "(Maybe Float)" "fuel_amount_tons" [] (Decode.float |> Decode.nullable)


{-| -}
reusable : SelectionSet (Maybe Bool) SpaceX.Object.RocketFirstStage
reusable =
    Object.selectionForField "(Maybe Bool)" "reusable" [] (Decode.bool |> Decode.nullable)


{-| -}
thrust_sea_level :
    SelectionSet decodesTo SpaceX.Object.Force
    -> SelectionSet (Maybe decodesTo) SpaceX.Object.RocketFirstStage
thrust_sea_level object____ =
    Object.selectionForCompositeField "thrust_sea_level" [] object____ (Basics.identity >> Decode.nullable)


{-| -}
thrust_vacuum :
    SelectionSet decodesTo SpaceX.Object.Force
    -> SelectionSet (Maybe decodesTo) SpaceX.Object.RocketFirstStage
thrust_vacuum object____ =
    Object.selectionForCompositeField "thrust_vacuum" [] object____ (Basics.identity >> Decode.nullable)
