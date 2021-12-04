module Main where

import Lib
import System.IO
import System.Environment
import Data.List

main = do
	args <- getArgs
	handle <- openFile (head args) ReadMode
	contents <- hGetContents handle
	putStr (show (depthCounter contents))
	hClose handle
