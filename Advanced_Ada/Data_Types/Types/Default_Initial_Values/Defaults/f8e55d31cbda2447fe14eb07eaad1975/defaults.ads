package Defaults is

   type E is (E1, E2, E3)
     with Default_Value => E1;

   type T is new Integer
     with Default_Value => -1;

   --  We cannot specify default
   --  values for subtypes:
   --
   --  subtype T is Integer
   --    with Default_Value => -1;

   type R is record
     X : Positive := 1;
     Y : Positive := 10;
   end record;

   type Arr is
     array (Positive range <>) of Integer
       with Default_Component_Value => -1;

end Defaults;