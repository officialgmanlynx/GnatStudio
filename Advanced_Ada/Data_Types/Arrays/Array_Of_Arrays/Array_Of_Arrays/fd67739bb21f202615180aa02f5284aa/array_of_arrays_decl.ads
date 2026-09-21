package Array_Of_Arrays_Decl is

   type T1 is
     array (Positive range <>) of Float;

   type T2 is
     array (Positive range <>) of T1 (1 .. 10);
   --                                 ^^^^^^^
   --                          bounds must be set!

end Array_Of_Arrays_Decl;