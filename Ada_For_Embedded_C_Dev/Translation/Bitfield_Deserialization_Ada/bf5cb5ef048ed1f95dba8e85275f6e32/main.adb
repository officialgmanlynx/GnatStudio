with Ada.Text_IO; use Ada.Text_IO;
with Serializer;  use Serializer;
with My_Recs;     use My_Recs;

procedure Main is
   R1 : Rec := (5, "abc");
   R2 : Rec := (0, "zzz");

   B1 : Bit_Field (0 .. R1'Size - 1)
     with Address => R1'Address, Import, Volatile;
begin
   Put ("R2 = ");
   Display (R2);
   New_Line;

   --  Getting Rec type using data from B1, which is a bit-field
   --  representation of R1.
   To_Rec (B1, R2);

   --  We could use the function version of To_Rec:
   --  R2 := To_Rec (B1);

   Put_Line ("New bitstream received!");
   Put ("R2 = ");
   Display (R2);
   New_Line;
end Main;