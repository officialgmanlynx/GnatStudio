with System; use System;

procedure Use_Address is
   I : aliased Integer := 5;
   A : Address;
begin
   A := I'Address;
end Use_Address;