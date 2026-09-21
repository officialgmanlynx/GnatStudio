package Shared_Var_Types is

   type Flags is
     array (Positive range <>) of Boolean
       with Independent_Components, Pack;

   F : Flags (1 .. 8) with Size => 8;

end Shared_Var_Types;