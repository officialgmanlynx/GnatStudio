with Ada.Text_IO; use Ada.Text_IO;
with Show_Find; use Show_Find;

procedure Use_Find with
  SPARK_Mode => Off
is
   Seq : constant Nat_Array (1 .. 3) := (1, 5, 3);
   Res : Natural;
begin
   Res := Find (Seq, 3);
   Put_Line ("Found 3 in index #" & Natural'Image (Res) & " of array");
end Use_Find;