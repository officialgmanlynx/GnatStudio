with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Float_Value is
   package F_IO is new
     Ada.Text_IO.Float_IO (Float);

   V : Float;
begin
   F_IO.Default_Fore := 3;
   F_IO.Default_Aft  := 1;
   F_IO.Default_Exp  := 0;

   V := 1.0E+15;
   Put ("1.0E+15 = ");
   F_IO.Put (Item => V);
   New_Line;

end Show_Float_Value;