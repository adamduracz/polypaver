--# inherit PolyPaver.Exact;
package PolyPaver.Floats is
	
    --# function Is_Range(Variable : Float; Min : Float; Max : Float) return Boolean;
	
    function Eps_Abs return Float;

    function Eps_Rel return Float;

    --# function Plus_Minus_Eps_Abs return Float;

    --# function Plus_Minus_Eps_Rel return Float;

    function Pi return Float;

    function Add (X,Y : Float) return Float;
    --# pre Add(X,Y) in Float;

    function Subtract (X,Y : Float) return Float;
    --# pre Subtract(X,Y) in Float;

    function Multiply (X,Y : Float) return Float;
    --# pre Multiply(X,Y) in Float;

    function Divide (X,Y : Float) return Float;
    --# pre Y /= 0.0 and
    --#     Divide(X,Y) in Float;

    function Square (X : Float) return Float;
    --# pre Square(X) in Float;

    function Sqrt (X : Float) return Float;
    --# pre X >= 0.0 and
    --#     Sqrt(X) in Float;

    function Exp (X : Float) return Float;
    --# pre Exp(X) in Float;
    
    function Sin (X : Float) return Float;
    --# pre Sin(X) in Float;
    
    function Cos (X : Float) return Float;
    --# pre Cos(X) in Float;
    
end PolyPaver.Floats;
