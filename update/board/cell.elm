module Battleships.Update.Board.Cell where

import Battleships.Model.Board.Cell exposing (..)

update : Columns -> Int -> Columns
update cells id =
  case cells of
    EmptyColumn ->
      emptyColumn

    Cell head tail ->
      let
          tailCells = update tail id
      in
        if head.id == id then
           if head.style == greenCell then
              Cell { head | style = blueCell } tailCells
           else
              Cell { head | style = greenCell } tailCells
        else
           Cell head tailCells
