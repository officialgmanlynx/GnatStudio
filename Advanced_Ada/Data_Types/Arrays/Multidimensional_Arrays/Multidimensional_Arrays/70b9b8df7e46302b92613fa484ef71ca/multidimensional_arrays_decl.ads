package Multidimensional_Arrays_Decl is

   A1 : array (1 .. 10) of Float;
   A2 : array (1 .. 5, 1 .. 10) of Float;
   --          ^ first dimension
   --                  ^ second dimension
   A3 : array (1 .. 2, 1 .. 5, 1 .. 10) of Float;
   --          ^ first dimension
   --                  ^ second dimension
   --                          ^ third dimension
end Multidimensional_Arrays_Decl;