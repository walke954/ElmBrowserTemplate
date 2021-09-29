module Pages.NotFound exposing (..)

import Browser
import Browser.Navigation as Nav
import Html exposing (..)
import Html.Attributes exposing (..)
import Url

import Main.State as MainState

view : Browser.Document MainState.Msg
view =
    { title = "Elm Browser Template"
    , body =
        [ div []
            [ span [] [ text "404 Not Found" ]
            ]
        ]
    }
