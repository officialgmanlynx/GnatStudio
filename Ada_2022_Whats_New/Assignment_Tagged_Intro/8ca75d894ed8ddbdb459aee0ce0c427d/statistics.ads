package Statistics is

   type Statistic is record
      Count : Natural := 0;
      Total : Float := 0.0;
   end record;

   My_Data : array (1 .. 5) of Float := [for J in 1 .. 5 => Float (J)];

   Statistic_For_My_Data : Statistic;

end Statistics;