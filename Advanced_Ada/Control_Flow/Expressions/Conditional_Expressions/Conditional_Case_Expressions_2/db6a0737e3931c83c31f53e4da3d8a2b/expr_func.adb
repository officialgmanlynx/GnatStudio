package body Expr_Func is

   function Toggled (S : State) return State is
   begin
      case S is
         when Off    => return On;
         when On     => return Off;
         when others => return S;
      end case;
   end Toggled;

end Expr_Func;