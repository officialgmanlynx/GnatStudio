with System;

procedure Test is
   R : Integer with Address => System'To_Address (16#FFFF00A0#);
begin
   null;
end Test;