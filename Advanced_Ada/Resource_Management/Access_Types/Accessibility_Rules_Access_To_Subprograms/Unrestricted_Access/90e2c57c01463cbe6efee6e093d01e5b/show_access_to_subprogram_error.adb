with Ada.Text_IO; use Ada.Text_IO;

with Access_To_Subprogram_Types;
use  Access_To_Subprogram_Types;

procedure Show_Access_To_Subprogram_Error is
   Func : Access_To_Function;

   function Add_One (I : Integer)
            return Integer is
     (I + 1);

   Value : Integer := 0;
begin
   Func := Add_One'Unrestricted_Access;
   --              ^^^^^^^^^^^^^^^^^^^
   --       Allowing access to local function

   Put_Line ("Value: " & Value'Image);
   Value := Func (Value);
   Put_Line ("Value: " & Value'Image);
end Show_Access_To_Subprogram_Error;