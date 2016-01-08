module Battleships.Update.Composition where

import Battleships.Update.Board exposing (..)
import Battleships.Model.Composition exposing (..)
import Battleships.Model.Ship as Ship exposing (..)

update action model =
  case action of
    SelectShip id ->
      -- { model | selectedShipId = id }
      model

    RotateShip id ->
      -- { model | selectedShipId = id }
      model

    PlaceShip ->
      -- { model | ships = Ship.placeShips model.selectedShipId model.ships }
      model

    RemoveShip id ->
      -- { model | selectedShipId = -1,
      --   ships = Ship.removeShips id model.ships }
      model
