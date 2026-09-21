with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Boolean_Attributes is
   type T3_D3 is delta 10.0 ** (-3) digits 3;

   D : constant := 2.0 ** (-31);
   type TQ31 is delta D range -1.0 .. 1.0 - D;
begin
   Put_Line ("T3_D3'Machine_Rounds:    "
             & T3_D3'Machine_Rounds'Image);
   Put_Line ("TQ31'Machine_Rounds:     "
             & TQ31'Machine_Rounds'Image);
   Put_Line ("T3_D3'Machine_Overflows: "
             & T3_D3'Machine_Overflows'Image);
   Put_Line ("TQ31'Machine_Overflows:  "
             & TQ31'Machine_Overflows'Image);
end Show_Boolean_Attributes;