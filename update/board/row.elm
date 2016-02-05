module Battleships.Update.Board.Row where

import Battleships.Model.Board.Row exposing (..)
import Battleships.Update.Board.Cell as Cell

update : Rows -> Int -> Rows
update rows id =
  case rows of
    EmptyRow ->
      emptyRow

    Row head tail ->
      let
          tailRows = update tail id
          columns = Cell.update head id
      in
         Row columns tailRows
