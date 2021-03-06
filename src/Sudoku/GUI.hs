module Sudoku.GUI where

import Prelude
import FPPrac.Graphics hiding (dim)
import FPPrac.Events
import Sudoku.GUI.State
import qualified Sudoku.GUI.Events as Events

initialState :: State
initialState = State
  { stage = "solver"
  , dim = 9
  , mousePressed = False
  , sudoku = [ "........."
  , "........."
  , "........."
  , "........."
  , "........."
  , "........."
  , "........."
  , "........."
  , "........." ]
  , selectedCell = Nothing
  , invalidCell = Nothing
  }

main :: IO ()
main = installEventHandler "Suanfonson" handleEvents initialState Blank 25

handleEvents :: State -> Input -> (State, [Output])
handleEvents s e = Events.handleEvents s e