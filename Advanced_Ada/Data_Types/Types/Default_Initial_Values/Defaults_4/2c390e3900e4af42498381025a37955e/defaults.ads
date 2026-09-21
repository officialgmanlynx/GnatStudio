package Defaults is

   type Arr is
     array (Positive range <>) of Integer
       with Default_Component_Value => -1;

end Defaults;