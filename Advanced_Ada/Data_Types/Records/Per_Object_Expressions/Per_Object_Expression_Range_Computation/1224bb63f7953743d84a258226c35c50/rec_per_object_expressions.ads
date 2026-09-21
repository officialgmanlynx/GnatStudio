package Rec_Per_Object_Expressions is

   type Stack (S : Positive) is private;

private

   type Integer_Array is
     array (Natural range <>) of Integer;

   type Stack (S : Positive) is record
      Arr : Integer_Array (0 .. S - 1);
      --                        ^^^^^
      --  ERROR: computation in per-object
      --         expression is illegal.

      Top : Integer := -1;
   end record;

end Rec_Per_Object_Expressions;