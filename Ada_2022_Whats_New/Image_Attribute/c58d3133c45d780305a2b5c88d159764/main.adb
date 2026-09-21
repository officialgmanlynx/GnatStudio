with Ada.Text_IO;

procedure Main is
   type Vector is array (Positive range <>) of Integer;

   V1 : aliased Vector := [1, 2, 3];

   type Text_Position is record
      Line, Column : Positive;
   end record;

   Pos : constant Text_Position := (Line => 10, Column => 3);

   type Vector_Access is access all Vector;

   V1_Ptr : constant Vector_Access := V1'Access;

begin
   Ada.Text_IO.Put_Line (V1'Image);
   Ada.Text_IO.Put_Line (Pos'Image);
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line (V1_Ptr'Image);
end Main;