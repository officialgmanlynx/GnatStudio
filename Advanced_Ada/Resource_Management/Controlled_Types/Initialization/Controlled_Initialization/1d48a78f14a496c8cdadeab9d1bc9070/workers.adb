with Ada.Text_IO; use Ada.Text_IO;

package body Workers is

   task body Worker is

      function Init return Integer is
      begin
         Put_Line ("Activating Worker task...");
         return 0;
      end Init;

      I : Integer := Init;
   begin

      accept Start do
        Put_Line ("Worker.Start accepted...");
         I := I + 1;
      end Start;

      accept Stop do
        Put_Line ("Worker.Stop accepted...");
         I := I - 1;
      end Stop;
   end Worker;

end Workers;