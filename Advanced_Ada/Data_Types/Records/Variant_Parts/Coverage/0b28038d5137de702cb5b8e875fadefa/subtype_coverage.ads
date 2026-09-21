package Subtype_Coverage is

   type Var_Rec (Value : Integer) is
   record
      case Value is
         when 0 .. 100 =>
            I : Integer;
         when others =>
            null;
      end case;
   end record;

end Subtype_Coverage;