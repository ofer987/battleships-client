module Battleships.Model.Ship where

import List

type Sense
  = Vertical
  | Horizontal

type alias Ship
  = { id : Int, cells : Cells, size : Int, sense : Sense, isPlaced : Bool }

type Cells
  = EmptyCell
  | Cell Cells

initial id size =
  { id = id,
    cells = initialCells size,
    size = size,
    sense = Horizontal,
    placed = False
  }

initialCells size =
  if size > 0 then
     Cell (initialCells (size - 1))
     else
     EmptyCell

rotate ship =
  if ship.sense == Vertical then
     { ship | sense = Horizontal }
     else
     { ship | sense = Vertical }

place id ship =
  if ship.id == id then
     { ship | isPlaced = True }
     else
     ship

remove id ship =
  if ship.id == id then
     { ship | isPlaced = False }
     else
     ship

placeShips id ships =
  List.map (place id) ships

removeShips id ships =
  List.map (remove id) ships
