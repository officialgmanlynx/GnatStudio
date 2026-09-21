with Ada.Text_IO; use Ada.Text_IO;
with System;

procedure Show_Fine_Delta_Accumulator is
   D_31 : constant := 2.0 ** (-31);
   D_48 : constant := 2.0 ** (-48);

   type TQ31 is
     delta D_31
     range -1.0 .. 1.0 - D_31;

   type TQ15_48 is
     delta D_48
     range -2.0 ** 15 ..
            2.0 ** 15 - D_48;

   type Fine_Acc is
     delta System.Fine_Delta
     range -1.0 ..
            1.0 - System.Fine_Delta;

   Coeff  : constant TQ31 := 0.01;
   Sample : constant TQ31 := 0.05;

   N : constant := 1_000;

   Sum_TQ15_48  : TQ15_48  := 0.0;
   Sum_Fine_Acc : Fine_Acc := 0.0;
begin
   for I in 1 .. N loop
      Sum_TQ15_48 := Sum_TQ15_48 +
                     TQ15_48 (Coeff * Sample);
   end loop;

   for I in 1 .. N loop
      Sum_Fine_Acc := Sum_Fine_Acc +
                      Fine_Acc (Coeff * Sample);
   end loop;

   Put_Line ("Sum_TQ15_48  = "
             & Sum_TQ15_48'Image);
   Put_Line ("Sum_Fine_Acc = "
             & Sum_Fine_Acc'Image);
end Show_Fine_Delta_Accumulator;