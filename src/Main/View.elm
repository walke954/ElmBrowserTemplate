module Main.View exposing (..)

import Browser
import Browser.Navigation as Nav
import List.Extra exposing (find)

import Main.State exposing (Page, Model, Msg)

import Pages.NotFound as PageNotFound
import Pages.Home.View as PageHome

pages : List Page
pages = [PageHome.page]

-- view
view : Model -> Browser.Document Msg
view model =
    let
        page = find (\p -> p.path == model.url.path) pages
    in case page of
        Just p -> p.view
        Nothing -> PageNotFound.view
