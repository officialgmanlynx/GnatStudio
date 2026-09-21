with Ada.Text_IO; use Ada.Text_IO;
with Assign;

procedure Apply_Assign is
   procedure Assign_Int (V : out Integer) is
   begin
      V := 42;
   end Assign_Int;

   procedure Assign_Float (V : out Float) is
   begin
      V := 42.0;
   end Assign_Float;

   procedure Assign_I is new Assign (Integer, Assign_Int);
   procedure Assign_F is new Assign (Float, Assign_Float);

   I : Integer;
   F : Float;
begin
   Assign_I (I);
   Assign_F (F);
   Put_Line ("I =" & I'Img & "; F =" & F'Img);
end Apply_Assign;