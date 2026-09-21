with Ada.Assertions; use Ada.Assertions;

procedure Show_Assertion_Error is
   I : constant Integer := 11;

begin
   if I /= 10 then
      raise Assertion_Error with "I is not 10";
   end if;

end Show_Assertion_Error;