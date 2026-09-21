with Ada.Text_IO;     use Ada.Text_IO;
with Custom_Integers; use Custom_Integers;

procedure Show_Conversion is
   Int_Var     : Int     := 1;
   Integer_Var : Integer := 2;
begin
   --  Int to Integer conversion
   Integer_Var := Integer (Int_Var);

   Put_Line ("Integer_Var : "
             & Integer_Var'Image);

   --  Int to Integer conversion
   --  as an actual parameter
   Integer_Var := Double (Integer (Int_Var));

   Put_Line ("Integer_Var : "
             & Integer_Var'Image);

   --  Integer to Int conversion
   --  using an expression
   Int_Var     := Int (Integer_Var * 2);

   Put_Line ("Int_Var :     "
             & Int_Var'Image);
end Show_Conversion;