module Battleships.Model.Board.Row where

import Battleships.Model.Board.Cell as Cell

type Rows
  = EmptyRow
  | Row Cell.Columns Rows

emptyRow = EmptyRow

initial : Int -> Int -> Rows
initial rowSize size =
  let
      row = Cell.initial size rowSize
  in
     if size > 0 then Row row (initial rowSize (size - 1)) else emptyRow

