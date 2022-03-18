-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module SpaceX.Object.Users_mutation_response exposing (..)

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


{-| number of affected rows by the mutation
-}
affected_rows : SelectionSet Int SpaceX.Object.Users_mutation_response
affected_rows =
    Object.selectionForField "Int" "affected_rows" [] Decode.int


{-| data of the affected rows by the mutation
-}
returning :
    SelectionSet decodesTo SpaceX.Object.Users
    -> SelectionSet (List decodesTo) SpaceX.Object.Users_mutation_response
returning object____ =
    Object.selectionForCompositeField "returning" [] object____ (Basics.identity >> Decode.list)
