module Lib
    ( increaseCounter
    ) where

pairs xs = zip xs (tail xs)
genInts :: String -> [Int]
genInts text = map read (lines text)

tplInc :: (Int, Int) -> Bool
tplInc tpl = (fst tpl) < (snd tpl)

increaseCounter :: String -> Int
increaseCounter text = foldl (\acc x -> (fromEnum (tplInc x)) + acc) 0 (pairs (genInts text))
