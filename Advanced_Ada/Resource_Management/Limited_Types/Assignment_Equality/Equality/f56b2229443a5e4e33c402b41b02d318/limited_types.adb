package body Limited_Types is

   function Init (I : Integer) return Simple_Rec
   is
   begin
      return E : Simple_Rec do
         E.V := new Integer'(I);
      end return;
   end Init;

   function "=" (Left, Right : Simple_Rec)
                 return Boolean is
   begin
      --  Comparing record components
      return Left.V.all = Right.V.all;
   end "=";

end Limited_Types;