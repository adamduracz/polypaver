/*
    An example problem where the subdivision has to be fine enough to
    separate a hypothesis from a conclusion whose false/true regions
    are very close to one another.  
    Thus the paving has to fit into the gap between the two no
    matter how good the solving is on each box.  Consequently,
    increasing the polynomial degree usually does not help.
    Plain interval arithmetic performs the best.
    
    The experimental extensions -g (guessing of helpful split direction)
    and -k (box skewing) can sometimes speed up the proof but
    usually do not compensate for the slow down caused by using
    higher order polynomials.
    
    Proved eg with:
         -d 0    (589 boxes, 0.5s)
         -d 4    (709 boxes, 52s)
         -d 4 -g (607 boxes, 47s)
         -d 4 -k -m 5 (497 parallelepipeds, 38s) 
*/
skewing.
H1: x <- [0 .. 1].
H2: y <- [0 .. 1].
H3: y <= Sqrt(x).
->
C1: y <= Sqrt(x+0.01) + 0.01.
//C2: Sqrt(x) <= Sqrt(x+0.01) + 0.01. // PolyPaver proves this in 0.02s and it implies C1
