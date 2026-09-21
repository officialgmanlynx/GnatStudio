package Rec_Per_Object_Expressions is

   type Bit_Field is
     array (Positive range <>) of Boolean
       with Pack;

   type T is record
      Arr : Bit_Field (1 .. T'Size);
      --                    ^^^^^^
      --  ERROR: per-object range constraint
      --         using the Size attribute
      --         is illegal.
   end record;

end Rec_Per_Object_Expressions;