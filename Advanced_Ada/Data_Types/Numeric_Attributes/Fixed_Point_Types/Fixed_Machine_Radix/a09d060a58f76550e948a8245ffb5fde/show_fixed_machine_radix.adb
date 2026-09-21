with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Fixed_Machine_Radix is
   type T3_D3 is delta 10.0 ** (-3) digits 3;

   D : constant := 2.0 ** (-31);
   type TQ31 is delta D range -1.0 .. 1.0 - D;
begin
   Put_Line ("T3_D3'Machine_Radix: "
             & T3_D3'Machine_Radix'Image);
   Put_Line ("TQ31'Machine_Radix:  "
             & TQ31'Machine_Radix'Image);
end Show_Fixed_Machine_Radix;