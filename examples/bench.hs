{-|
    Description :  scalable properties involving elementary functions 
    Copyright   :  (c) Jan Duracz, Michal Konecny 
    License     :  BSD3

    Maintainer  :  jan@duracz.net
    Stability   :  experimental
    Portability :  portable

    Scalable properties involving elementary functions.
-}

module Main where

import PolyPaver

main = 
--    defaultMain Problem 
--        {box = bench_exp_box
--        ,ivars = []
--        ,theorem = bench_exp}
    defaultMain Problem 
        {box = bench_sqrt_box
        ,theorem = bench_sqrt}

indices = [0..1]

distance = 0.5^^14

bench_sqrt_box = [(i, (1,2)) | i <- indices]

bench_sqrt =
      (Sqrt . product . map var $ indices)
      `Le`
      (Plus (Lit distance) $ product . map (Sqrt . var) $ indices)

bench_exp_box = [(i, (0,1)) | i <- indices]

bench_exp =
      (product . map (Exp . var) $ indices)
      `Le`
      (Exp . sum $ Lit distance : map var indices)
      
var i = Var i ("x" ++ show i)
