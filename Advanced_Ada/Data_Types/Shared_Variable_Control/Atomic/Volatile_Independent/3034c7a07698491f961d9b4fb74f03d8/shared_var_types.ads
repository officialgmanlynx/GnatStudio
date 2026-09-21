package Shared_Var_Types is

   type Atomic_Integer_1 is new Integer
     with Atomic;

   type Atomic_Integer_2 is new Integer
     with Atomic,
          Volatile,
          Independent;

end Shared_Var_Types;