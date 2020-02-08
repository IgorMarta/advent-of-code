module Day17Test
  ( test
  ) where

import           Day17
import           UnitTest

realInput :: String
realInput = "./resources/input/day17.txt"

test :: IO ()
test =
  runTest
    DayTest
      { day = 17
      , part1 = (solutionPart1, [Assertion (fileSource realInput) (Constant $ Right 7404)])
      , part2 = (solutionPart2, [Assertion (fileSource realInput) (Constant $ Right 929045)])
      }
