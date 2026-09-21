with Ada.Assertions; use Ada.Assertions;

procedure Show_Procedure_Assert is
   I : constant Integer := 11;

begin
   Assert (I = 10, "I is not 10");
end Show_Procedure_Assert;