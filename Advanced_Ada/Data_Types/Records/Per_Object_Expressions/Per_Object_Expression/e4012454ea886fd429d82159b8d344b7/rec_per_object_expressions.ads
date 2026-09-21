package Rec_Per_Object_Expressions is

   type Stack (S : Positive) is private;

private

   type Integer_Array is
     array (Positive range <>) of Integer;

   type Stack (S : Positive) is record
      Arr : Integer_Array (1 .. S);
      --                   ^^^^^^
      --
      --                        S
      --                        ^
      --    Per-object expression
      --
      --                  (1 .. S)
      --                  ^^^^^^^^
      --     Per-object constraint

      Top : Natural := 0;
   end record;

end Rec_Per_Object_Expressions;