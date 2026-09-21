package Expr_Func is

   type State is (Off, On, Waiting, Invalid);

   function Toggled (S : State) return State;

end Expr_Func;