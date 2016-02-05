module Battleships.Model.Board.Cell where

greenCell =
  [ ("color", "green")
  ]

blueCell =
  [ ("color", "blue")
  ]

type Columns
  = EmptyColumn
  | Cell { id : Int, style : List ( String, String ) } Columns

emptyColumn = EmptyColumn

initial : Int -> Int -> Columns
initial row size =
  let
      identifier = row * 10 + size
      cell = { id = identifier, style = selectedCell greenCell  }
  in
     if size > 0 then Cell cell (initial row (size - 1)) else emptyColumn

selectedCell colour =
  if colour == greenCell then
     greenCell
     else
     blueCell
