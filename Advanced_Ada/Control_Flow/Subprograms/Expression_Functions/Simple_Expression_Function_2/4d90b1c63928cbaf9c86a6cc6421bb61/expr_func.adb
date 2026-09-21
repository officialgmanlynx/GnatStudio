package body Expr_Func is

   function Is_Zero (I : Integer)
                     return Boolean is
   begin
      return I = 0;
   end Is_Zero;

end Expr_Func;