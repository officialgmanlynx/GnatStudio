with Ada.Text_IO;           use Ada.Text_IO;
with System;                use System;
with System.Address_Image;
with Simple_Recs;           use Simple_Recs;

procedure Test is
   R : Rec;

   AR_Proc, AR_Test : System.Address;
begin
   AR_Proc := R'Address;

   Proc (R, AR_Test);

   Put_Line ("R'Address (Proc): "
             & System.Address_Image (AR_Proc));
   Put_Line ("R'Address (Test): "
             & System.Address_Image (AR_Test));

   if AR_Proc = AR_Test then
      Put_Line ("R was passed by reference.");
   else
      Put_Line ("R was passed by copy.");
   end if;

end Test;