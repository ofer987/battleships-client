module Battleships where

import String exposing (toUpper, repeat, trimRight)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Signal exposing (Address)
import StartApp.Simple as StartApp

import Battleships.Model.Board exposing (..)
import Battleships.View.Board exposing (..)
import Battleships.Update.Board exposing (..)

-- Wire the app together

main =
  StartApp.start
    { model = initialModel,
      view = view,
     update = update
    }
