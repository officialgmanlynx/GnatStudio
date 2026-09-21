with Ada.Text_IO; use Ada.Text_IO;

procedure Q14_1_Fixed_Point_Type is
   type TQ14_1 is
     delta  0.5
     range -2.0 ** 14 ..
            2.0 ** 14 - 0.5;

   V : TQ14_1;
begin
   V := 2#0.1#;
   Put_Line ("V = " & V'Image);
end Q14_1_Fixed_Point_Type;