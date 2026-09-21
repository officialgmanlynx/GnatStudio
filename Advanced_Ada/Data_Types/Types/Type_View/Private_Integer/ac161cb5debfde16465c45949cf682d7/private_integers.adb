package body Private_Integers is

   function "+" (Left, Right : Private_Integer)
                 return Private_Integer
   is
      Res : constant Integer :=
              Integer (Left) + Integer (Right);
      --  Note that we're converting Left
      --  and Right to Integer, which calls
      --  the "+" operator of the Integer
      --  type. Writing "Left + Right" would
      --  have called the "+" operator of
      --  Private_Integer, which leads to
      --  recursive calls, as this is the
      --  operator we're currently in.
   begin
      return Private_Integer (Res);
   end "+";

end Private_Integers;