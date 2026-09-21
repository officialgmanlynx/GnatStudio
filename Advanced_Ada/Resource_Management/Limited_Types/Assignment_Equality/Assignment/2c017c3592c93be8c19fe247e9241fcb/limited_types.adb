package body Limited_Types is

   function Init (I : Integer) return Simple_Rec
   is
   begin
      return E : Simple_Rec do
         E.V := new Integer'(I);
      end return;
   end Init;

   procedure Copy (From :        Simple_Rec;
                   To   : in out Simple_Rec)
   is
   begin
      --  Copying record components
      To.V.all := From.V.all;
   end Copy;

end Limited_Types;