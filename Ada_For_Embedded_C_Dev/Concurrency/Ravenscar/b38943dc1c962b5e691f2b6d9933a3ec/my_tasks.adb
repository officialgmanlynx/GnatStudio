with Ada.Text_IO; use Ada.Text_IO;

package body My_Tasks is

   task body My_Task is
   begin
      for C in First .. 'Z' loop
         Put (C);
      end loop;
      New_Line;
   end My_Task;

end My_Tasks;