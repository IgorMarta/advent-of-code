module Day9Test
  ( test,
  )
where

import Day9
import Util.UnitTest

testCase :: String
testCase = "109,1,204,-1,1001,100,1,100,1008,100,16,101,1006,101,0,99"

realInput :: String
realInput = "./resources/input/day9.txt"

test :: IO ()
test =
  runTest
    DayTest
      { day = 9,
        part1 =
          ( solutionPart1,
            [ Const testCase `ShouldBe` Const (Right 99),
              Const "1102,34915192,34915192,7,4,7,99,0" `ShouldBe` Const (Right 1219070632396864),
              Const "104,1125899906842624,99" `ShouldBe` Const (Right 1125899906842624),
              fileData realInput `ShouldBe` Const (Right 2752191671)
            ]
          ),
        part2 = (solutionPart2, [fileData realInput `ShouldBe` Const (Right 87571)])
      }
