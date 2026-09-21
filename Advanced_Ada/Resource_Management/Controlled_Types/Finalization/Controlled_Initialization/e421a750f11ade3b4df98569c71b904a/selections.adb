with Ada.Text_IO; use Ada.Text_IO;

package body Selections is

   procedure Finalize
     (E : in out Selection_1) is
   begin
      Put_Line ("Finalize: Selection_1...");
   end Finalize;

   procedure Finalize
     (E : in out Selection_2) is
   begin
      Put_Line ("Finalize: Selection_2...");
   end Finalize;

end Selections;