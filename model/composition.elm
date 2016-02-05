module Battleships.Model.Composition where

import Battleships.Model.Board as Board
import Battleships.Model.Ship as Ship

type Action
  = SelectShip Int
  | RotateShip Int
  | PlaceShip
  | RemoveShip Int
  | ChangeColour Int

initial size =
  { selected_ship_id = -1
  , board = Board.initial size
  -- , ships = [ Ship.initial 0 4, Ship.initial 1 3, Ship.initial 2 2 ]
  }
