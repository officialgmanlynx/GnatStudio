--
--  File: main_system.adb
--
with Ada.Text_IO; use Ada.Text_IO;

with Component_A; use Component_A;

procedure Main_System is
   Values        : constant Float_Array := (10.0, 11.0, 12.0, 13.0);
   Average_Value : Float;
begin
   Average_Value := Average (Values);
   Put_Line ("Average = " & Float'Image (Average_Value));
end Main_System;