module Battleships.Model.Board where

import String exposing (toUpper, repeat, trimRight)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Signal exposing (Address)

import StartApp.Simple as StartApp

greenCell =
  [ ("color", "green")
  ]

blueCell =
  [ ("color", "blue")
  ]

type Action
  = NoOp
  | ChangeColour Int

-- Model

type Columns
  = EmptyColumn
  | Cell { id : Int, style : List ( String, String ) } Columns

type Rows
  = EmptyRow
  | Row Columns Rows

emptyColumn = EmptyColumn

emptyRow = EmptyRow

initialColumns : Int -> Int -> Columns
initialColumns row size =
  let
      identifier = row * 10 + size
      cell = { id = identifier, style = greenCell }
  in
     if size > 0 then Cell cell (initialColumns row (size - 1)) else emptyColumn

initialRows : Int -> Int -> Rows
initialRows rowSize size =
  let
      row = initialColumns size rowSize
  in
     if size > 0 then Row row (initialRows rowSize (size - 1)) else emptyRow

initialModel =
  let
      row = 4
  in
     {
       size = 4,
       cells = initialRows row row
     }
