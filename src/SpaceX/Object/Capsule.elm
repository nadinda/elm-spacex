-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module SpaceX.Object.Capsule exposing (..)

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
id : SelectionSet (Maybe SpaceX.ScalarCodecs.Id) SpaceX.Object.Capsule
id =
    Object.selectionForField "(Maybe ScalarCodecs.Id)" "id" [] (SpaceX.ScalarCodecs.codecs |> SpaceX.Scalar.unwrapCodecs |> .codecId |> .decoder |> Decode.nullable)


{-| -}
landings : SelectionSet (Maybe Int) SpaceX.Object.Capsule
landings =
    Object.selectionForField "(Maybe Int)" "landings" [] (Decode.int |> Decode.nullable)


{-| -}
missions :
    SelectionSet decodesTo SpaceX.Object.CapsuleMission
    -> SelectionSet (Maybe (List (Maybe decodesTo))) SpaceX.Object.Capsule
missions object____ =
    Object.selectionForCompositeField "missions" [] object____ (Basics.identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| -}
original_launch : SelectionSet (Maybe SpaceX.ScalarCodecs.Date) SpaceX.Object.Capsule
original_launch =
    Object.selectionForField "(Maybe ScalarCodecs.Date)" "original_launch" [] (SpaceX.ScalarCodecs.codecs |> SpaceX.Scalar.unwrapCodecs |> .codecDate |> .decoder |> Decode.nullable)


{-| -}
reuse_count : SelectionSet (Maybe Int) SpaceX.Object.Capsule
reuse_count =
    Object.selectionForField "(Maybe Int)" "reuse_count" [] (Decode.int |> Decode.nullable)


{-| -}
status : SelectionSet (Maybe String) SpaceX.Object.Capsule
status =
    Object.selectionForField "(Maybe String)" "status" [] (Decode.string |> Decode.nullable)


{-| -}
type_ : SelectionSet (Maybe String) SpaceX.Object.Capsule
type_ =
    Object.selectionForField "(Maybe String)" "type" [] (Decode.string |> Decode.nullable)


{-| -}
dragon :
    SelectionSet decodesTo SpaceX.Object.Dragon
    -> SelectionSet (Maybe decodesTo) SpaceX.Object.Capsule
dragon object____ =
    Object.selectionForCompositeField "dragon" [] object____ (Basics.identity >> Decode.nullable)