module Battleships where

import String exposing (toUpper, repeat, trimRight)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Signal exposing (Address)
import StartApp.Simple as StartApp

-- import Battleships.Model.Composition exposing (initial)
-- import Battleships.View.Composition exposing (view)
-- import Battleships.Update.Composition exposing (update)

-- Wire the app together

updateTwo action model =
  model

initialTwo =
  2

viewTwo address model =
  Html.div [] [ Html.text "Hello World", Html.text "I am a little teapot" ]

main =
  StartApp.start
    { model = initialTwo,
      view = viewTwo,
      update = updateTwo
    }
