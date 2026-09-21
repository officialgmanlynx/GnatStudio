with Ada.Text_IO; use Ada.Text_IO;

procedure Main
is
   type Char is range 0 .. 255;
   type Unsigned_Char is mod 256;

   A : Char := 16#FF#;
   B : Unsigned_Char := 16#FF#;
begin

   Put_Line ("Does A = B?");

   if A = B then
      Put_Line ("Yes");
   else
      Put_Line ("No");
   end if;

end Main;