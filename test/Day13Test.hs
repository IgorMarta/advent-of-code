module Day13Test
  ( test,
  )
where

import Day13
import Util.UnitTest

realInput :: String
realInput = "./resources/input/day13.txt"

test :: IO ()
test =
  runTest
    DayTest
      { day = 13,
        part1 = (solutionPart1, [fileData realInput `ShouldBe` Const (Right 298)]),
        part2 = (solutionPart2, [fileData realInput `ShouldBe` Const (Right 13956)])
      }
