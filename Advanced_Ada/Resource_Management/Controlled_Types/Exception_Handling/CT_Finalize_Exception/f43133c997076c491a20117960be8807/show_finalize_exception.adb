with Ada.Text_IO; use Ada.Text_IO;

with CT_Finalize_Exception;
use  CT_Finalize_Exception;

procedure Show_Finalize_Exception is
   A : T;
begin
   Dummy (A);

   Finalize (A);

   Put_Line ("After Finalize");
exception
   when Constraint_Error =>
      Put_Line
        ("Constraint_Error is being handled...");
      Reset_Counter;
end Show_Finalize_Exception;