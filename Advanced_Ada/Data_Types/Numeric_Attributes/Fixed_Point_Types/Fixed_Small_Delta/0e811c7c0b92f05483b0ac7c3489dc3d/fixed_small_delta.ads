package Fixed_Small_Delta is
   D3 : constant := 10.0 ** (-3);

   type T3_D3 is delta D3 digits 3;

   type TD3   is delta D3 range -1.0 .. 1.0 - D3;

   D31 : constant := 2.0 ** (-31);
   D15 : constant := 2.0 ** (-15);

   type TQ31 is delta D31 range -1.0 .. 1.0 - D31;

   type TQ15 is delta D15 range -1.0 .. 1.0 - D15
     with Small => D31;
end Fixed_Small_Delta;