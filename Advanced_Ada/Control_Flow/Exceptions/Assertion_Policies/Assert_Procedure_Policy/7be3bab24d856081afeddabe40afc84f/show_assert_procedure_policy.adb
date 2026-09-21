with Ada.Text_IO;    use Ada.Text_IO;
with Ada.Assertions; use Ada.Assertions;

procedure Show_Assert_Procedure_Policy is
   pragma Assertion_Policy (Assert => Ignore);

   I : constant Integer := 1;
begin
   Put_Line ("------ Pragma Assert -----");
   pragma Assert (I = 0);

   Put_Line ("---- Procedure Assert ----");
   Assert (I = 0);

   Put_Line ("Finished.");
end Show_Assert_Procedure_Policy;