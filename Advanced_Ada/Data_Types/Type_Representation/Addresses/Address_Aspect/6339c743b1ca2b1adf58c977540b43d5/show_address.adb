with System; use System;
with System.Address_Image;

with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Address is

   I_Main   : aliased Integer;
   I_Mapped : Integer
                with Address => I_Main'Address;
begin
   Put_Line ("I_Main'Address   : "
              & System.Address_Image
                  (I_Main'Address));
   Put_Line ("I_Mapped'Address : "
              & System.Address_Image
                  (I_Mapped'Address));
end Show_Address;