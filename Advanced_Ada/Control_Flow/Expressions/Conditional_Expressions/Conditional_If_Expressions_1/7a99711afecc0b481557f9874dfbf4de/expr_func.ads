package Expr_Func is

   type State is (Off, On, Waiting, Invalid);

   function Toggled (S : State) return State is
     (if S = Off
       then On
       elsif S = On
         then Off
         else S);

end Expr_Func;