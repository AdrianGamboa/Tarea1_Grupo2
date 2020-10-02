import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)
import Html.Attributes exposing (..)
import Bootstrap.Button as Button
import Bootstrap.CDN as CDN
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


-- MAIN


main =
  Browser.sandbox { init = init, update = update, view = view }



-- MODEL

type alias Model = Int

init : Model
init =
  0


-- UPDATE

type Msg = Increment | Decrement

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

stylesheet =
    let
        tag =
            "link"

        attrs =
            [ attribute "Rel" "stylesheet"
            , attribute "property" "stylesheet"
            , attribute "href" "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
            ]

        children =
            []
    in
        node tag attrs children
-- VIEW

view : Model -> Html Msg
view model =
    div [ class "jumbotron" ]
        [ stylesheet
        
        , div [class ""] [ text ("PERRA LOCA") ]
        , button [  class "btn btn-warning" ] [ text "HOLA" ]
        , button [class "btn btn-primary btn-lg btn-block" ] [ text "ADIOS" ]
        
        ]