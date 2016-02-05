module Battleships.View.Composition where

import Battleships.View.Board as Board
import Battleships.View.Ship as Ship

import Html exposing (..)

view address model =
  Html.div [] [
    Html.text "Hello Battleships", Html.text "I am a little teapot",
    Ship.view model.ships
    Board.view address model.board
    ]

viewShips ships
  Ship.view ship
