package Fixed_Point is

   D : constant := 2.0 ** (-31);
   type TQ31 is delta D range -1.0 .. 1.0 - D;

end Fixed_Point;