package Static_Expressions is

   C1 : constant := 300_453.5;
   C2 : constant := 455_233.5 * C1;
   C3 : constant := 872_922.5 * C2;
   C4 : constant := 155_277.5 * C1 + C2 / C3;
   C5 : constant := 2.0 * C1 +
                    3.0 * (C2 / (C4 * C3)) +
                    4.0 * (C1 / (C2 * C2)) +
                    5.0 * (C3 / (C1 * C1));

end Static_Expressions;