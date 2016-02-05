module Battleships.Update.Board where

import Battleships.Model.Board exposing (..)

import Battleships.Update.Board.Row as Row

update board =
  Row.update board.rows
