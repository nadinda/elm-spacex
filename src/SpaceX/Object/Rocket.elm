-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module SpaceX.Object.Rocket exposing (..)

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
active : SelectionSet (Maybe Bool) SpaceX.Object.Rocket
active =
    Object.selectionForField "(Maybe Bool)" "active" [] (Decode.bool |> Decode.nullable)


{-| -}
boosters : SelectionSet (Maybe Int) SpaceX.Object.Rocket
boosters =
    Object.selectionForField "(Maybe Int)" "boosters" [] (Decode.int |> Decode.nullable)


{-| -}
company : SelectionSet (Maybe String) SpaceX.Object.Rocket
company =
    Object.selectionForField "(Maybe String)" "company" [] (Decode.string |> Decode.nullable)


{-| -}
cost_per_launch : SelectionSet (Maybe Int) SpaceX.Object.Rocket
cost_per_launch =
    Object.selectionForField "(Maybe Int)" "cost_per_launch" [] (Decode.int |> Decode.nullable)


{-| -}
country : SelectionSet (Maybe String) SpaceX.Object.Rocket
country =
    Object.selectionForField "(Maybe String)" "country" [] (Decode.string |> Decode.nullable)


{-| -}
description : SelectionSet (Maybe String) SpaceX.Object.Rocket
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


{-| -}
diameter :
    SelectionSet decodesTo SpaceX.Object.Distance
    -> SelectionSet (Maybe decodesTo) SpaceX.Object.Rocket
diameter object____ =
    Object.selectionForCompositeField "diameter" [] object____ (Basics.identity >> Decode.nullable)


{-| -}
engines :
    SelectionSet decodesTo SpaceX.Object.RocketEngines
    -> SelectionSet (Maybe decodesTo) SpaceX.Object.Rocket
engines object____ =
    Object.selectionForCompositeField "engines" [] object____ (Basics.identity >> Decode.nullable)


{-| -}
first_flight : SelectionSet (Maybe SpaceX.ScalarCodecs.Date) SpaceX.Object.Rocket
first_flight =
    Object.selectionForField "(Maybe ScalarCodecs.Date)" "first_flight" [] (SpaceX.ScalarCodecs.codecs |> SpaceX.Scalar.unwrapCodecs |> .codecDate |> .decoder |> Decode.nullable)


{-| -}
first_stage :
    SelectionSet decodesTo SpaceX.Object.RocketFirstStage
    -> SelectionSet (Maybe decodesTo) SpaceX.Object.Rocket
first_stage object____ =
    Object.selectionForCompositeField "first_stage" [] object____ (Basics.identity >> Decode.nullable)


{-| -}
height :
    SelectionSet decodesTo SpaceX.Object.Distance
    -> SelectionSet (Maybe decodesTo) SpaceX.Object.Rocket
height object____ =
    Object.selectionForCompositeField "height" [] object____ (Basics.identity >> Decode.nullable)


{-| -}
id : SelectionSet (Maybe SpaceX.ScalarCodecs.Id) SpaceX.Object.Rocket
id =
    Object.selectionForField "(Maybe ScalarCodecs.Id)" "id" [] (SpaceX.ScalarCodecs.codecs |> SpaceX.Scalar.unwrapCodecs |> .codecId |> .decoder |> Decode.nullable)


{-| -}
landing_legs :
    SelectionSet decodesTo SpaceX.Object.RocketLandingLegs
    -> SelectionSet (Maybe decodesTo) SpaceX.Object.Rocket
landing_legs object____ =
    Object.selectionForCompositeField "landing_legs" [] object____ (Basics.identity >> Decode.nullable)


{-| -}
mass :
    SelectionSet decodesTo SpaceX.Object.Mass
    -> SelectionSet (Maybe decodesTo) SpaceX.Object.Rocket
mass object____ =
    Object.selectionForCompositeField "mass" [] object____ (Basics.identity >> Decode.nullable)


{-| -}
name : SelectionSet (Maybe String) SpaceX.Object.Rocket
name =
    Object.selectionForField "(Maybe String)" "name" [] (Decode.string |> Decode.nullable)


{-| -}
payload_weights :
    SelectionSet decodesTo SpaceX.Object.RocketPayloadWeight
    -> SelectionSet (Maybe (List (Maybe decodesTo))) SpaceX.Object.Rocket
payload_weights object____ =
    Object.selectionForCompositeField "payload_weights" [] object____ (Basics.identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| -}
second_stage :
    SelectionSet decodesTo SpaceX.Object.RocketSecondStage
    -> SelectionSet (Maybe decodesTo) SpaceX.Object.Rocket
second_stage object____ =
    Object.selectionForCompositeField "second_stage" [] object____ (Basics.identity >> Decode.nullable)


{-| -}
stages : SelectionSet (Maybe Int) SpaceX.Object.Rocket
stages =
    Object.selectionForField "(Maybe Int)" "stages" [] (Decode.int |> Decode.nullable)


{-| -}
success_rate_pct : SelectionSet (Maybe Int) SpaceX.Object.Rocket
success_rate_pct =
    Object.selectionForField "(Maybe Int)" "success_rate_pct" [] (Decode.int |> Decode.nullable)


{-| -}
type_ : SelectionSet (Maybe String) SpaceX.Object.Rocket
type_ =
    Object.selectionForField "(Maybe String)" "type" [] (Decode.string |> Decode.nullable)


{-| -}
wikipedia : SelectionSet (Maybe String) SpaceX.Object.Rocket
wikipedia =
    Object.selectionForField "(Maybe String)" "wikipedia" [] (Decode.string |> Decode.nullable)