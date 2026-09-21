package Bad_Arith is

   B1 : constant Boolean := True;
   B2 : constant Boolean := False;
   B3 : constant Boolean := B1 + B2;

   type Fruit is (Apple, Orange);
   F1 : constant Fruit := Apple;
   F2 : constant Fruit := Orange;
   F3 : constant Fruit := F1 + F2;

end Bad_Arith;