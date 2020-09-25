module Sudoku.Examples where

import Sudoku
import Prelude

exampleSudoku :: Int -> Sudoku

exampleSudoku 9 =
  [ "4...53..."
  , "...294.73"
  , "3...7.5.9"
  , "78.....1."
  , "........."
  , ".4.....25"
  , "2.8.1...7"
  , "91.762..."
  , "...83...2" ]

emptySudoku :: Int -> Sudoku
emptySudoku d = replicate d (replicate d '.')
