with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Fixed_Fore_Aft is
   type T3_D3 is delta 10.0 ** (-3) digits 3;

   D : constant := 2.0 ** (-31);
   type TQ31 is delta D range -1.0 .. 1.0 - D;

   Dec : constant T3_D3 := -0.123;
   Fix : constant TQ31  := -TQ31'Delta;
begin
   Put_Line ("T3_D3'Fore: "
             & T3_D3'Fore'Image);
   Put_Line ("T3_D3'Aft:  "
             & T3_D3'Aft'Image);

   Put_Line ("TQ31'Fore: "
             & TQ31'Fore'Image);
   Put_Line ("TQ31'Aft:  "
             & TQ31'Aft'Image);
   Put_Line ("----");
   Put_Line ("Dec: "
             & Dec'Image);
   Put_Line ("Fix: "
             & Fix'Image);
end Show_Fixed_Fore_Aft;