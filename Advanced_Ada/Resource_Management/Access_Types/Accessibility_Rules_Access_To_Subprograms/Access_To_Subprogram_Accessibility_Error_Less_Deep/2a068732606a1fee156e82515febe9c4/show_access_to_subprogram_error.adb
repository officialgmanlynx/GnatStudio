with Ada.Text_IO; use Ada.Text_IO;

with Access_To_Subprogram_Types;
use  Access_To_Subprogram_Types;

procedure Show_Access_To_Subprogram_Error is
   Func : Access_To_Function;

   Value : Integer := 0;
begin
   declare
      function Add_One (I : Integer)
                        return Integer is
        (I + 1);
   begin
      Func := Add_One'Access;
      --  This assignment is illegal because the
      --  Access_To_Function type is less deep
      --  than Add_One.
   end;

   Put_Line ("Value: " & Value'Image);
   Value := Func (Value);
   Put_Line ("Value: " & Value'Image);
end Show_Access_To_Subprogram_Error;