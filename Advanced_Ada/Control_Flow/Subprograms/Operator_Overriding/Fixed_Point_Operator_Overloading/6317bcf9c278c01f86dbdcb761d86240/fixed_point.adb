package body Fixed_Point is

   function "+" (Left, Right : TQ31)
                 return TQ31
   is
      type TQ31_2 is
        delta TQ31'Delta
        range TQ31'First * 2.0 .. TQ31'Last * 2.0;

      L   : constant TQ31_2 := TQ31_2 (Left);
      R   : constant TQ31_2 := TQ31_2 (Right);
      Res : TQ31_2;
   begin
      Res := L + R;

      if Res > TQ31_2 (TQ31'Last) then
         return TQ31'Last;
      elsif Res < TQ31_2 (TQ31'First) then
         return TQ31'First;
      else
         return TQ31 (Res);
      end if;
   end "+";

end Fixed_Point;