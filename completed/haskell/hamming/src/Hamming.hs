module Hamming (distance) where

distance :: String -> String -> Int
distance xs ys = length (filter id (zipWith (/=) xs ys))