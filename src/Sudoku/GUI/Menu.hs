module Sudoku.GUI.Menu (draw, buttons) where

import Prelude
import FPPrac.Events (Input)
import FPPrac.Graphics
import Sudoku.GUI.State
import qualified Sudoku.GUI.Button as Btn

buttons :: [Btn.Button]
buttons =
  [ 
    Btn.Rectangular (200, -90, 130, 130) "Empezar" (81, 21) red
  ]

draw :: State -> Input -> Picture
draw s e = Pictures [drawBackground, Btn.drawAll s e buttons]

drawBackground :: Picture
drawBackground = Pictures
  [ Translate 0 0 $ Color (makeColor 0.1 0.1 0.1 1) $ rectangleSolid 800 800
  , Translate (-263) 130 $ Color white $ Scale 0.6 0.6 $ Text "Proyecto" -- 525.6 x 62.4
  ]
