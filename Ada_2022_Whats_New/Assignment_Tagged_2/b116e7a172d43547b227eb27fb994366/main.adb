with Ada.Text_IO;

procedure Main is

   type Statistic is record
      Count : Natural := 0;
      Total : Float := 0.0;
   end record;

   My_Data : constant array (1 .. 5) of Float :=
     [for J in 1 .. 5 => Float (J)];

   Statistic_For_My_Data : Statistic;

begin
   for Data of My_Data loop
      Statistic_For_My_Data.Count := @ + 1;
      Statistic_For_My_Data.Total := @ + Data;
   end loop;

   Ada.Text_IO.Put_Line (Statistic_For_My_Data'Image);
end Main;