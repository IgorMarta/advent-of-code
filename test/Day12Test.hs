module Day12Test
  ( test,
  )
where

import Day12
import Util.UnitTest

realInput :: String
realInput = "./resources/input/day12.txt"

testCase1 :: String
testCase1 = unlines ["<x=-1, y=0, z=2>", "<x=2, y=-10, z=-7>", "<x=4, y=-8, z=8>", "<x=3, y=5, z=-1>"]

testCase2 :: String
testCase2 = unlines ["<x=-8, y=-10, z=0>", "<x=5, y=5, z=10>", "<x=2, y=-7, z=3>", "<x=9, y=-8, z=-3>"]

test :: IO ()
test =
  runTest
    DayTest
      { day = 12,
        part1 =
          ( uncurry solutionPart1,
            [ Const (10, testCase1) `ShouldBe` Const 179,
              Const (100, testCase2) `ShouldBe` Const 1940,
              fileDataM (1000,) realInput `ShouldBe` Const 7758
            ]
          ),
        part2 =
          ( solutionPart2,
            [ Const testCase1 `ShouldBe` Const (Just 2772),
              Const testCase2 `ShouldBe` Const (Just 4686774924),
              fileData realInput `ShouldBe` Const (Just 354540398381256)
            ]
          )
      }
