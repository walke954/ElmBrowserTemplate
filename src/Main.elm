module Main exposing (..)

import Browser
import Browser.Navigation as Nav
import Url
import List.Extra exposing (find)

import Main.State as MainState
import Main.State exposing (Model, Msg(..))
import Main.View as MainView

-- main
main : Program () Model Msg
main =
    Browser.application
        { init = init
        , view = MainView.view
        , update = MainState.update
        , subscriptions = subscriptions
        , onUrlChange = UrlChanged
        , onUrlRequest = LinkClicked
        }

init : () -> Url.Url -> Nav.Key -> ( Model, Cmd Msg )
init flags url key =
    ( MainState.initState key url, Cmd.none )

-- subs
subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none
