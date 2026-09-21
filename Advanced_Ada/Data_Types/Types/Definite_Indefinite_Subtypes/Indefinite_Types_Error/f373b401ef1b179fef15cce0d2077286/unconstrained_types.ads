package Unconstrained_Types is

   type Integer_Array is
     array (Positive range <>) of Integer;

   type Simple_Record (Arr : Integer_Array) is
   --                  ^^^^^^^^^^^^^^^^^^^
   --  ERROR: cannot use indefinite type
   --         in discriminant.
   record
      L : Natural := Arr'Length;
   end record;

end Unconstrained_Types;