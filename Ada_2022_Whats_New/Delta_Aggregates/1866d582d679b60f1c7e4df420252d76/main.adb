with Ada.Text_IO;

procedure Main is

   type Vector is record
      X, Y, Z : Float;
   end record;

   Point_1 : constant Vector := (X => 1.0, Y => 2.0, Z => 3.0);
   Projection_1 : constant Vector := (Point_1 with delta Z => 0.0);

   type Vector_3D is array (1 .. 3) of Float;

   Point_2 : constant Vector_3D := [1.0, 2.0, 3.0];
   Projection_2 : constant Vector_3D := [Point_2 with delta 3 => 0.0];
begin
   Ada.Text_IO.Put (Float'Image (Projection_1.X));
   Ada.Text_IO.Put (Float'Image (Projection_1.Y));
   Ada.Text_IO.Put (Float'Image (Projection_1.Z));
   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put (Float'Image (Projection_2 (1)));
   Ada.Text_IO.Put (Float'Image (Projection_2 (2)));
   Ada.Text_IO.Put (Float'Image (Projection_2 (3)));
   Ada.Text_IO.New_Line;
end Main;