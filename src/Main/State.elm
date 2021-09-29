module Main.State exposing (..)

import Browser
import Browser.Navigation as Nav
import Url

import Pages.Home.State as HomeState

-- message
type Msg
    = LinkClicked Browser.UrlRequest
    | UrlChanged Url.Url
    | PageUpdate HomeState.Msg

-- page
type alias Page =
    { path : String
    , view : Browser.Document Msg
    }

-- model
type alias Model =
    { key : Nav.Key
    , url : Url.Url
    }

-- initial state
initState : Nav.Key -> Url.Url -> Model
initState key url = Model key url

-- update
update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        LinkClicked urlRequest ->
            case urlRequest of
                Browser.Internal url ->
                    ( model, Nav.pushUrl model.key (Url.toString url) )

                Browser.External href ->
                    ( model, Nav.load href )

        UrlChanged url ->
            ( { model | url = url }
            , Cmd.none
            )

        PageUpdate _ -> ( model, Cmd.none )
