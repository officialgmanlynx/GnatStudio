with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Machine_Attribute is
   package F_IO is new
     Ada.Text_IO.Float_IO (Float);

   V : Float;
begin
   F_IO.Default_Fore := 3;
   F_IO.Default_Aft  := 1;
   F_IO.Default_Exp  := 0;

   Put_Line
     ("Original value: 1_000_000_000_000_000.0");

   V := 1.0E+15;
   Put ("Machine value:  ");
   F_IO.Put (Item => V);
   New_Line;

   V := 1.0E+15 - Float'Machine (1.0E+15);
   Put ("Difference:     ");
   F_IO.Put (Item => V);
   New_Line;

end Show_Machine_Attribute;