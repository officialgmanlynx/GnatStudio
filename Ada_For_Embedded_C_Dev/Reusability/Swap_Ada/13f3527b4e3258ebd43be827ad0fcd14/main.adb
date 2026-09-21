with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   generic
      type A_Type is private;
   procedure Swap (Left, Right : in out A_Type);

   procedure Swap (Left, Right : in out A_Type) is
      Temp : constant A_Type := Left;
   begin
      Left  := Right;
      Right := Temp;
   end Swap;

   procedure Swap_I is new Swap (Integer);

   A : Integer := 10;
   B : Integer := 42;

begin
   Put_Line ("A = "
             & Integer'Image (A)
             & ", B = "
             & Integer'Image (B));

   Swap_I (A, B);

   Put_Line ("A = "
             & Integer'Image (A)
             & ", B = "
             & Integer'Image (B));
end Main;