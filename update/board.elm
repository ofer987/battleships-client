module Battleships.Update.Board where

import String exposing (toUpper, repeat, trimRight)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Signal exposing (Address)
import StartApp.Simple as StartApp

import Battleships.Model.Board exposing (..)

-- Update

updateCell : Columns -> Int -> Columns
updateCell cells id =
  case cells of
    EmptyColumn ->
      emptyColumn

    Cell head tail ->
      let
          tailCells = updateCell tail id
      in
        if head.id == id then
           if head.style == greenCell then
              Cell { head | style = blueCell } tailCells
           else
              Cell { head | style = greenCell } tailCells
        else
           Cell head tailCells

updateRow : Rows -> Int -> Rows
updateRow rows id =
  case rows of
    EmptyRow ->
      emptyRow

    Row head tail ->
      let
          tailRows = updateRow tail id
          columns = updateCell head id
      in
         Row columns tailRows
