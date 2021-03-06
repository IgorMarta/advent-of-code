module Util.EasterEgg
  ( runEasterEgg,
  )
where

import Data.Char (chr)
import Util.IntCodeProgram

getEasterEgg :: [Int] -> Either String String
getEasterEgg = fmap (map chr . outputList) . runIntCodeProgram . newProgram

writeEgg :: Either String String -> IO ()
writeEgg (Left err) = putStrLn err
writeEgg (Right egg) = writeFile "./resources/output/easter-egg.txt" egg

runEasterEgg :: IO ()
runEasterEgg = readFile "./resources/input/easter-egg.txt" >>= writeEgg . getEasterEgg . parseIntCode
