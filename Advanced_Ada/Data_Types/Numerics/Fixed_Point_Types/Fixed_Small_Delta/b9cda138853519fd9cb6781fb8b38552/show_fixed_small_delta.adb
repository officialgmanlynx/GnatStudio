with Ada.Text_IO;       use Ada.Text_IO;

procedure Show_Fixed_Small_Delta is

   type Ordinary_Fixed_Point is
     delta 0.25
     range -2.0 .. 2.0;

begin
   Put_Line ("Ordinary_Fixed_Point'Small: "
             & Ordinary_Fixed_Point'Small'Image);
   Put_Line ("Ordinary_Fixed_Point'Delta: "
             & Ordinary_Fixed_Point'Delta'Image);
   Put_Line ("Ordinary_Fixed_Point'Size: "
             & Ordinary_Fixed_Point'Size'Image);
end Show_Fixed_Small_Delta;