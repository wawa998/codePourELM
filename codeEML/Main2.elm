module Main2 exposing (..)

import Browser
import Html exposing (Html, div, input, button, text)
import Html.Events exposing (onInput, onClick)
import Html.Attributes exposing (style, placeholder)

-- Modèle
type alias Model =
    { inputText : String
    , reversedText : String
    }

-- Messages
type Msg
    = UpdateInput String
    | ReverseText

-- Fonction d'initialisation
init : Model
init =
    { inputText = ""
    , reversedText = ""
    }

-- Mise à jour du modèle
update : Msg -> Model -> Model
update msg model =
    case msg of
        UpdateInput newText ->
            { model | inputText = newText }

        ReverseText ->
            { model | reversedText = String.reverse model.inputText }

-- Vue
view : Model -> Html Msg
view model =
    div []
        [ input [ placeholder "Entrez du texte", onInput UpdateInput ] []
        , button [ onClick ReverseText ] [ text "Inverser le texte" ]
        , div [ style "margin-top" "10px" ] [ text ("Texte inversé : " ++ model.reversedText) ]
        ]

-- Lancement de l'application Elm
main =
    Browser.sandbox { init = init, update = update, view = view }
