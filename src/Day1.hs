module Day1
  ( solutionPart1
  , solutionPart2
  , readInput
  ) where

import           ParseUtils

evalMass :: Int -> Int
evalMass = subtract 2 . (`div` 3)

sumFuelMass :: [Int] -> Int
sumFuelMass = sum . map evalMass

sumTotalFuelMass :: [Int] -> Int
sumTotalFuelMass = sum . fuelAwareMassValues
  where
    fuelAwareMassValues = concatMap (takeWhile (> 0) . iterate evalMass . evalMass)

inputParser :: ReadP [Int]
inputParser = trimSpacesEOF $ integer `sepBy` endOfLine

parseInput :: String -> [Int]
parseInput = concatMap fst . readP_to_S inputParser

readInput :: IO String
readInput = readFile "./resources/input-day1.txt"

solutionPart1 :: String -> Int
solutionPart1 = sumFuelMass . parseInput

solutionPart2 :: String -> Int
solutionPart2 = sumTotalFuelMass . parseInput
