with System; use System;
with System.Address_Image;

with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Address is

   I, J : Integer;
begin
   Put_Line ("I'Address   : "
              & System.Address_Image
                  (I'Address));
   Put_Line ("J'Address   : "
              & System.Address_Image
                  (J'Address));

   if I'Address = J'Address then
      Put_Line ("I'Address = J'Address");
   elsif I'Address < J'Address then
      Put_Line ("I'Address < J'Address");
   else
      Put_Line ("I'Address > J'Address");
   end if;
end Show_Address;