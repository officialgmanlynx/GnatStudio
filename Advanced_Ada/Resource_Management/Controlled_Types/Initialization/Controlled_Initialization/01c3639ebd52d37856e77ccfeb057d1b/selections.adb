with Ada.Text_IO; use Ada.Text_IO;

package body Selections is

   procedure Initialize
     (E : in out Selection_1) is
   begin
      Put_Line ("Initialize: Selection_1...");
   end Initialize;

   procedure Initialize
     (E : in out Selection_2) is
   begin
      Put_Line ("Initialize: Selection_2...");
   end Initialize;

end Selections;