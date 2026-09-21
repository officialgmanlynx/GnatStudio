procedure Show_Name_In_Expression is
   type Mode is (Off, A, B, C, D);

   M1 : Mode;
begin
   M1 := A;

   case M1 is
     when Off | D   =>
       null;
     when A | B | C =>
       M1 := D;
   end case;

end Show_Name_In_Expression;