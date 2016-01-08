module Battleships.View.Board where

import String exposing (toUpper, repeat, trimRight)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Signal exposing (Address)
import StartApp.Simple as StartApp

import Battleships.Model.Board exposing (..)

-- View

columnsView address columns =
  case columns of
    EmptyColumn ->
      []

    Cell head tail ->
      let
          cellView = span [ id (toString head.id), style head.style
            -- onClick address (ChangeColour head.id)
          ] [ Html.text "bye" ]
      in
         (cellView :: columnsView address tail)

rowsView address rows =
  case rows of
    EmptyRow ->
      []

    Row head tail ->
      let
          idString = "row" ++ toString size
          rowView = div [ id idString ] (columnsView address head)
          -- row = head
      in
         rowView :: rowsView address tail

view address model =
  Html.div [ id "id" ] (rowsView address model.cells)
