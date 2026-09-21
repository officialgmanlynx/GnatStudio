with Ada.Text_IO; use Ada.Text_IO;

package body Subs is

   procedure Initialize (E : in out Sub_1) is
   begin
      Put_Line ("Initialize: Sub_1...");
   end Initialize;

   procedure Initialize (E : in out Sub_2) is
   begin
      Put_Line ("Initialize: Sub_2...");
   end Initialize;

end Subs;