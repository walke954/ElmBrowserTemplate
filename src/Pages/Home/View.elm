module Pages.Home.View exposing (..)

import Browser
import Browser.Navigation as Nav
import Html exposing (..)
import Html.Attributes exposing (..)
import Url

import Pages.Home.State exposing (Msg)

import Main.State as MainState

page : MainState.Page
page =
    { path = "/"
    , view = view
    }

view : Browser.Document MainState.Msg
view =
    { title = "Elm Browser Template"
    , body =
        [ div []
            [ span [] [ text "Elm Browser Template 0.0.0" ]
            ]
        ]
    }
