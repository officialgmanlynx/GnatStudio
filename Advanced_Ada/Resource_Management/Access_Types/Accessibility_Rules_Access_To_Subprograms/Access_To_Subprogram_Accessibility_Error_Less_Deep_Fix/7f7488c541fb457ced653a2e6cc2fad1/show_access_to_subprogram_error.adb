with Ada.Text_IO; use Ada.Text_IO;

with Access_To_Subprogram_Types;
use  Access_To_Subprogram_Types;

with Add_One;

procedure Show_Access_To_Subprogram_Error is
   Func : Access_To_Function;

   Value : Integer := 0;
begin
   Func := Add_One'Access;

   Put_Line ("Value: " & Value'Image);
   Value := Func (Value);
   Put_Line ("Value: " & Value'Image);
end Show_Access_To_Subprogram_Error;