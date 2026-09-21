with Ada.Text_IO;

procedure Show_Iterated_Component_Association is

   type Integer_Array is array (Positive range <>) of Integer;

   Old_Style_Empty : Integer_Array := (1 .. 0 => <>);
   New_Style_Empty : Integer_Array := [];

   Old_Style_One_Item : Integer_Array := (1 => 5);
   New_Style_One_Item : Integer_Array := [5];

   Vector : constant Integer_Array := [for J in 1 .. 5 => J * 2];

   Matrix : constant array (1 .. 3, 1 .. 3) of Positive :=
     [for J in 1 .. 3 =>
       [for K in 1 .. 3 => J * 10 + K]];

   Data : constant Integer_Array (1 .. 5) :=
     [for J in 2 .. 3 => J, 5 => 5, others => 0];

   Vector_2 : constant Integer_Array := [for X of Vector => X / 2];
begin
   Ada.Text_IO.Put_Line (Vector'Image);
   Ada.Text_IO.Put_Line (Matrix'Image);
   Ada.Text_IO.Put_Line (Data'Image);
   Ada.Text_IO.Put_Line (Vector_2'Image);
end Show_Iterated_Component_Association;