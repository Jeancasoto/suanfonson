module Sudoku.GUI.Solver (draw, buttons) where

import Prelude
import FPPrac.Events (Input)
import FPPrac.Graphics hiding (dim)
import qualified FPPrac.Graphics as Gfx (dim)
import Sudoku.GUI.State
import qualified Sudoku.GUI.Button as Btn
import qualified Sudoku.GUI.Raster as Raster
import Sudoku.Examples


buttons :: [Btn.Button]
buttons =
  [
    Btn.Rectangular (290, (-240), 190, 60) "Limpiar" (100, 21) (Gfx.dim red)
  , Btn.Rectangular (290, (160), 190, 60) "Cargar" (160, 21) (greyN 0.5)
  ]

draw :: State -> Input -> Picture
draw s e = Pictures
  [ drawBackground
  , Raster.draw s e
  , Btn.drawAll s e buttons
  ]

drawBackground :: Picture
drawBackground = Pictures
  [ Translate 0 0 $ Color (makeColor 1.1 1.1 1.1 1) $ rectangleSolid 800 800
  ]
