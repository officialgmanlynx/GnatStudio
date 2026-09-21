package body Expr_Func is

   function Toggled (S : State) return State is
   begin
      if S = Off then
         return On;
      elsif S = On then
         return Off;
      else
         return S;
      end if;
   end Toggled;

end Expr_Func;