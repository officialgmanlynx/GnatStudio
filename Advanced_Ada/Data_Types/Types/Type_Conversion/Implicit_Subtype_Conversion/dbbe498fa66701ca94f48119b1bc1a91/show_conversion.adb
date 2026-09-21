with Ada.Text_IO;     use Ada.Text_IO;
with Custom_Integers; use Custom_Integers;

procedure Show_Conversion is
   Int_Var       : Int;
   Sub_Int_1_Var : Sub_Int_1;
   Sub_Int_2_Var : Sub_Int_2;
   Integer_Var   : Integer;
begin
   Integer_Var := 5;
   Int_Var     := Int (Integer_Var);

   Put_Line ("Int_Var :       "
             & Int_Var'Image);

   --  Implicit conversions:
   --  no explicit conversion required!
   Sub_Int_1_Var := Integer_Var;
   Sub_Int_2_Var := Integer_Var;

   Put_Line ("Sub_Int_1_Var : "
             & Sub_Int_1_Var'Image);
   Put_Line ("Sub_Int_2_Var : "
             & Sub_Int_2_Var'Image);
end Show_Conversion;