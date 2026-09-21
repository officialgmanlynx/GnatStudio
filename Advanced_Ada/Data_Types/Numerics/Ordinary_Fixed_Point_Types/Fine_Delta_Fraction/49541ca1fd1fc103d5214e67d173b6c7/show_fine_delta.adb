with Ada.Text_IO; use Ada.Text_IO;
with System;

procedure Show_Fine_Delta is
   type Fraction is
     delta System.Fine_Delta
     range -1.0 .. 1.0 - System.Fine_Delta;
begin
   Put_Line ("Fraction'Small = "
             & Fraction'Small'Image);
   Put_Line ("Fraction'Size  = "
             & Fraction'Size'Image);
end Show_Fine_Delta;