with Ada.Text_IO; use Ada.Text_IO;

package body CT_Finalize_Exception is

   Cnt : Integer := Integer'Last;

   procedure Dummy (E : T) is
   begin
      Put_Line ("(Dummy...)");
   end Dummy;

   procedure Initialize (E : in out T) is
   begin
      Put_Line ("Initialize...");
   end Initialize;

   overriding
   procedure Adjust (E : in out T) is
   begin
      Put_Line ("Adjust...");
   end Adjust;

   procedure Finalize (E : in out T) is
   begin
      Put_Line ("Finalize...");
      Cnt := Cnt + 1;
   end Finalize;

   procedure Reset_Counter is
   begin
      Cnt := 0;
   end Reset_Counter;

end CT_Finalize_Exception;