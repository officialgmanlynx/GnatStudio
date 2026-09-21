package Expr_Func is

   type State is (Off, On, Waiting, Invalid);

   function Toggled (S : State) return State is
     (case S is
       when Off    => On,
       when On     => Off,
       when others => S);

end Expr_Func;