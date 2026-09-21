with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   type Value_Type is mod 2 ** 32;
   pragma Provide_Shift_Operators (Value_Type);

   Value : Value_Type;
begin
   Value := Shift_Left (2, 1) or 1;
   Put_Line ("Value = " & Value_Type'Image (Value));
end Main;