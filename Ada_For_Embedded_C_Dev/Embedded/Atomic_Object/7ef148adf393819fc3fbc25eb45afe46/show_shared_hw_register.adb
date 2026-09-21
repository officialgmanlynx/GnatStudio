with System;

procedure Show_Shared_HW_Register is
   R   : Integer
     with Atomic, Address => System'To_Address (16#FFFF00A0#);
begin
   null;
end Show_Shared_HW_Register;