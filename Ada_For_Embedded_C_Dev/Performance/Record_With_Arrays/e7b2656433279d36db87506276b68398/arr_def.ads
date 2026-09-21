package Arr_Def is
   type Arr is array (Integer range <>) of Integer;

   type R (D1, D2 : Integer) is record
      F1 : Arr (1 .. D1);
      F2 : Arr (1 .. D2);
   end record;
end Arr_Def;