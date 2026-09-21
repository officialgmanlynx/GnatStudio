with Ada.Text_IO;       use Ada.Text_IO;

with Fixed_Small_Delta; use Fixed_Small_Delta;

procedure Show_Fixed_Small_Delta is
   V : TQ15;
begin
   Put_Line ("V'Size: " & V'Size'Image);

   V := TQ15'Small;
   Put_Line ("V: " & V'Image);

   V := TQ15'Delta;
   Put_Line ("V: " & V'Image);
end Show_Fixed_Small_Delta;