-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module SpaceX.Object.Users_aggregate_fields exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode
import SpaceX.Enum.Users_select_column
import SpaceX.InputObject
import SpaceX.Interface
import SpaceX.Object
import SpaceX.Scalar
import SpaceX.ScalarCodecs
import SpaceX.Union


type alias CountOptionalArguments =
    { columns : OptionalArgument (List SpaceX.Enum.Users_select_column.Users_select_column)
    , distinct : OptionalArgument Bool
    }


{-|

  - columns -
  - distinct -

-}
count :
    (CountOptionalArguments -> CountOptionalArguments)
    -> SelectionSet (Maybe Int) SpaceX.Object.Users_aggregate_fields
count fillInOptionals____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { columns = Absent, distinct = Absent }

        optionalArgs____ =
            [ Argument.optional "columns" filledInOptionals____.columns (Encode.enum SpaceX.Enum.Users_select_column.toString |> Encode.list), Argument.optional "distinct" filledInOptionals____.distinct Encode.bool ]
                |> List.filterMap Basics.identity
    in
    Object.selectionForField "(Maybe Int)" "count" optionalArgs____ (Decode.int |> Decode.nullable)


{-| -}
max :
    SelectionSet decodesTo SpaceX.Object.Users_max_fields
    -> SelectionSet (Maybe decodesTo) SpaceX.Object.Users_aggregate_fields
max object____ =
    Object.selectionForCompositeField "max" [] object____ (Basics.identity >> Decode.nullable)


{-| -}
min :
    SelectionSet decodesTo SpaceX.Object.Users_min_fields
    -> SelectionSet (Maybe decodesTo) SpaceX.Object.Users_aggregate_fields
min object____ =
    Object.selectionForCompositeField "min" [] object____ (Basics.identity >> Decode.nullable)
