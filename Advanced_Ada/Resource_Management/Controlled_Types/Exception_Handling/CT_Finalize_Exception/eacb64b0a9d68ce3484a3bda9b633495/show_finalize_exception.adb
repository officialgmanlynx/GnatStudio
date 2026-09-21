with Ada.Text_IO; use Ada.Text_IO;

with CT_Finalize_Exception;
use  CT_Finalize_Exception;

procedure Show_Finalize_Exception is
   A, B : T;
begin
   Dummy (A);

   --  When A is about to get out of
   --  scope:
   --
   --  Finalize (A);
   --
end Show_Finalize_Exception;