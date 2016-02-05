module Battleships.View.Ship where

import Html
import List
import Html.Attributes

placedShipClass = [ ("color", "red") ]

availableClass = [ ("color", "grey") ]

horizontalClass = [ ("display", "inline") ]

view address ship =
  Html.div [] (viewCells ship.size ship)

viewCells size ship =
  let
      displayClass = availableClass
      senseClass = horizontalClass
      class = List.append displayClass senseClass
      cell = Html.div [ Html.Attributes.style class ] [ Html.text "ship" ]
  in
     if size >= 1 then
        cell :: viewCells (size - 1) ship
        else
        []


