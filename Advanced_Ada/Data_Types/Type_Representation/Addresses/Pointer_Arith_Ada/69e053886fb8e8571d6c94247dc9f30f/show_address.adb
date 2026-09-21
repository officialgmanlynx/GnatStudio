with System;      use System;

with System.Storage_Elements;
use  System.Storage_Elements;

with System.Address_Image;

with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Address is
   I      : Integer;
   A1, A2 : Address;
   IA     : Integer_Address;
begin
   A1 := I'Address;
   IA := To_Integer (A1);
   A2 := To_Address (IA);

   Put_Line ("A1 : "
              & System.Address_Image (A1));
   Put_Line ("IA : "
              & Integer_Address'Image (IA));
   Put_Line ("A2 : "
              & System.Address_Image (A2));
end Show_Address;