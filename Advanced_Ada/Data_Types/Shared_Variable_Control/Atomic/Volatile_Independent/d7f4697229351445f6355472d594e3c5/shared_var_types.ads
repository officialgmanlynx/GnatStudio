package Shared_Var_Types is

   Arr_1 : array (1 .. 2) of Integer
             with Atomic_Components;

   Arr_2 : array (1 .. 2) of Integer
             with Atomic_Components,
                  Volatile,
                  Volatile_Components,
                  Independent_Components;

end Shared_Var_Types;