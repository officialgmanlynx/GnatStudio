package Integer_Arrays is

   type Value is new Integer
     with Default_Value => 99;

   type Integer_Array is
     array (Positive range <>) of Value
       with Default_Component_Value => 9999;

   procedure Display (A : Integer_Array);

end Integer_Arrays;