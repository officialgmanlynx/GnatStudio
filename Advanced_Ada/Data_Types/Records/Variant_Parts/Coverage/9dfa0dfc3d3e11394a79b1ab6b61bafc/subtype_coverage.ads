package Subtype_Coverage is

   type Var_Rec (Value : Integer) is
   record
      case Value is
         when Integer'First .. -1 =>
            null;
         when 0 .. 100 =>
            I : Integer;
         when 101 .. Integer'Last =>
            null;
      end case;
   end record;

end Subtype_Coverage;