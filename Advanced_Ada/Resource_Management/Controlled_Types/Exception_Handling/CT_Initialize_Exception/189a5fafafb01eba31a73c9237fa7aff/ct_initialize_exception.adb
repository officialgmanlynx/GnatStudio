with Ada.Text_IO; use Ada.Text_IO;

package body CT_Initialize_Exception is

   function Int_Last return Integer is
     (Integer'Last);

   Cnt : Positive := Int_Last;

   procedure Dummy (E : T) is
   begin
      Put_Line ("(Dummy...)");
   end Dummy;

   procedure Initialize (E : in out T) is
   begin
      Put_Line ("Initialize...");
      Cnt := Cnt + 1;
   end Initialize;

   procedure Finalize (E : in out T) is
   begin
      Put_Line ("Finalize...");
   end Finalize;

end CT_Initialize_Exception;