package Defaults is

   type E is (E1, E2, E3)
     with Default_Value => E1;

   type T is new Integer
     with Default_Value => -1;

end Defaults;