package Expr_Func is

   function Max (A, B : Integer) return Integer is
     (if A >= B then A else B);

end Expr_Func;