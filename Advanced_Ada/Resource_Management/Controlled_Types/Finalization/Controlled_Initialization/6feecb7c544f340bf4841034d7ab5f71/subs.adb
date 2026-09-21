with Ada.Text_IO; use Ada.Text_IO;

package body Subs is

   procedure Finalize (E : in out Sub_1) is
   begin
      Put_Line ("Finalize: Sub_1...");
   end Finalize;

   procedure Finalize (E : in out Sub_2) is
   begin
      Put_Line ("Finalize: Sub_2...");
   end Finalize;

end Subs;