with Ada.Text_IO; use Ada.Text_IO;

package body P is

   procedure Finalize (X : in out T1) is
      X2 : T2_Ref := new T2;
   begin
      Put_Line ("Finalizing T1...");
      Free (X2);
   end Finalize;

   procedure Finalize (X : in out T2) is
   begin
      Put_Line ("Finalizing T2...");
   end Finalize;

end P;