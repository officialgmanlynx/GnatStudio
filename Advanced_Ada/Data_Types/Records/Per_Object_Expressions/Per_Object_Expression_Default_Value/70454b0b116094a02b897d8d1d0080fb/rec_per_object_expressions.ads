package Rec_Per_Object_Expressions is

   type T (D : Positive) is private;

private

   type T (D : Positive) is record
      V : Natural := D - 1;
      --             ^^^^^
      --    Per-object expression

      S : Natural := D'Size;
      --             ^^^^^^
      --    Per-object expression
   end record;

end Rec_Per_Object_Expressions;