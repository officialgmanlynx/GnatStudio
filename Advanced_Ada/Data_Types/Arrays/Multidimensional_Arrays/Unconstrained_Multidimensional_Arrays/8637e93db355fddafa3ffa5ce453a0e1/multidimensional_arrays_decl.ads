package Multidimensional_Arrays_Decl is

   type F1 is array (Positive range <>) of Float;
   type F2 is array (Positive range <>,
                     Positive range <>) of Float;
   type F3 is array (Positive range <>,
                     Positive range <>,
                     Positive range <>) of Float;

end Multidimensional_Arrays_Decl;