with Ada.Text_IO; use Ada.Text_IO;

with Exported_Procedures;
use  Exported_Procedures;

procedure Show_Out_Reference is
   B : Integer := 0;
begin
   Local (B, Error => True);
exception
   when Program_Error =>
      Put_Line ("Value for B is"
                & Integer'Image (B)); -- "1"
end Show_Out_Reference;