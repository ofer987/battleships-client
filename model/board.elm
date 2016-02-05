module Battleships.Model.Board where

import Battleships.Model.Board.Row as Row

initial size =
  { size = size
  , rows = Row.initial size size
  }
