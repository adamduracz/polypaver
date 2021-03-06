{-|
    Description :  a minimal PolyPaver problem 
    Copyright   :  (c) Jan Duracz, Michal Konecny 
    License     :  BSD3

    Maintainer  :  jan@duracz.net
    Stability   :  experimental
    Portability :  portable

    A few small PolyPaver problems.
    
    Example parameters that work:
    sinsin2: -d 2 -e 30
-}
module Main where

import PolyPaver

main = 
--    defaultMain problem_exp 
--    defaultMain test_skew 
--    defaultMain sqrt_sin 
--    defaultMain sinsin
--    defaultMain sinsin2
    defaultMain absNonneg
    
exp_shift =
    Problem box conjecture 
    where
    box = [(0, (-1,1), False)]
    x = termVar 0 "x"
    conjecture = exp x |<=| exp (x+0.0001) 

test_skew =
    Problem box conjecture
    where
    box = [(0, (0,4), False), (1, (0,4), False)]
    x = termVar 0 "x"
    y = termVar 1 "y"
    conjecture = 
        x |<=| y*y
        --->
        x |<=| y*y + 0.025
--        exp x |<=| exp (y*y) + 0.1
         
sqrt_sin =
    Problem box conjecture
    where
    box = [(0, (0.000001,1), False)]
    x = termVar 0 "x"
    conjecture = 
        2 * (sqrt(x+1) - 1) |<=| sin(x)
         
sinsin =
    Problem box conjecture
    where
    box = [(0, (0.2,1), False)]
    x = termVar 0 "x"
    conjecture = 
        sin(3*x+1) |<=| sin(sin(3*x)+1) 

--sinDebug =
--    Problem box conjecture
--    where
--    box = [(0, (0.2,1), False)]
--    x = termVar 0 "x"
--    conjecture = 
--        sin arg |<=| -1000
--        where 
--        arg = hull lower upper
--        lower = 1.6  
--        upper = 4
        
sinsin2 =
    Problem box conjecture
    where
    box = [(0, (0.1,0.19), False)]
    x = termVar 0 "x"
    conjecture = 
        sin(sin(3*x)+1) |<=| sin(3*x+1)


absNonneg =
    Problem box conjecture
    where
    box = [(0, (-1,1), False), (1, (-1,1), False)]
    x = termVar 0 "x"
    y = termVar 1 "y"
    conjecture = 
         -0.01 |<=| (termOp1 (FSqrt 24 126) $ abs (x *: y))
    
    