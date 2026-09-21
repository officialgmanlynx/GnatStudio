package Rec_Per_Object_Expressions is

   type Stack (S : Positive) is private;

private

   type Integer_Array is
     array (Positive range <>) of Integer;

   type Stack (S : Positive) is record
      Arr : Integer_Array (1 .. S);

      Top : Natural := 0;

      Overflow_Warning : Positive
        := S * 9 / 10;
      --   ^^^^^^^^^^
      --   Per-object expression
      --   using computation for
      --   the default expression.
   end record
     with
       Dynamic_Predicate =>
         Overflow_Warning in
           (S + 1) / 2 .. S - 1;
      --
      --   (S + 1) / 2
      --   ^^^^^^^^^^^
      --   Per-object expression
      --   using computation.
      --
      --                  S - 1
      --                  ^^^^^
      --   Per-object expression
      --   using computation.

end Rec_Per_Object_Expressions;