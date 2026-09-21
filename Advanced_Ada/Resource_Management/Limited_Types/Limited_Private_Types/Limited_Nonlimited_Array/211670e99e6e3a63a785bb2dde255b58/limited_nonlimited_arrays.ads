package Limited_Nonlimited_Arrays is

   type Limited_Private is
     limited private;

   function Init return Limited_Private;

   --  The array type Limited_Private_Array
   --  is limited because the type of its
   --  component is limited.
   type Limited_Private_Array is
     array (Positive range <>) of
       Limited_Private;

private

   type Limited_Private is
   record
      A : Integer;
   end record;

   --  Limited_Private_Array type is
   --  nonlimited at this point because
   --  its component is nonlimited.
   --
   --  The assignments below are OK:
   A1 : Limited_Private_Array (1 .. 5);

   A2 : Limited_Private_Array := A1;

end Limited_Nonlimited_Arrays;