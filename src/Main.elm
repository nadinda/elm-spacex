module Main exposing (..)

import Browser
import Graphql.Document as Document
import Graphql.Http
import Graphql.Operation exposing (RootQuery)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet as SelectionSet exposing (SelectionSet)
import Html exposing (Html, div, h1, pre, text)
import RemoteData exposing (RemoteData)
import SpaceX.Object
import SpaceX.Object.Rocket as Rocket
import SpaceX.Query as Query
import SpaceX.ScalarCodecs exposing (Id)



-- MAIN


main : Program () Model Msg
main =
    Browser.element
        { init = \_ -> init
        , update = update
        , subscriptions = \_ -> Sub.none
        , view = view
        }



-- MODEL


type alias Model =
    RemoteData (Graphql.Http.Error Response) Response


init : ( Model, Cmd Msg )
init =
    ( RemoteData.Loading
    , makeRequest
    )



-- UPDATE


type Msg
    = GotResponse Model


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GotResponse response ->
            ( response, Cmd.none )



-- VIEW


view : Model -> Html Msg
view model =
    div
        []
        [ h1 [] [ text "Generate Query" ]
        , pre [] [ text (Document.serializeQuery query) ]
        , h1 [] [ text "Response" ]
        , text (Debug.toString model)
        ]



-- Graphql Query


type alias RocketData =
    { id : Maybe Id
    , name : Maybe String
    , description : Maybe String
    , cost_per_launch : Maybe Int
    }


type alias Response =
    { rockets : Maybe (List (Maybe RocketData)) }


makeRequest : Cmd Msg
makeRequest =
    query
        |> Graphql.Http.queryRequest "https://api.spacex.land/graphql/"
        |> Graphql.Http.send (RemoteData.fromResult >> GotResponse)


query : SelectionSet Response RootQuery
query =
    SelectionSet.map Response
        (Query.rockets (\options -> { options | limit = Present 10 }) rocketSelection)


rocketSelection : SelectionSet RocketData SpaceX.Object.Rocket
rocketSelection =
    SelectionSet.map4 RocketData Rocket.id Rocket.name Rocket.description Rocket.cost_per_launch
