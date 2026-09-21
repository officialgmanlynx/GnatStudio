with Ada.Text_IO;     use Ada.Text_IO;
with Custom_Integers; use Custom_Integers;

procedure Show_Conversion is
   Int_Var     : Int;
   Integer_Var : Integer;
begin
   Integer_Var := 0;
   Int_Var     := Int (Integer_Var);

   Put_Line ("Int_Var : "
             & Int_Var'Image);
end Show_Conversion;