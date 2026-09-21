with Ada.Text_IO; use Ada.Text_IO;

procedure Main is -- implicitly called by the environment task
   subtype A_To_Z is Character range 'A' .. 'Z';

   task My_Task;

   task body My_Task is
   begin
      for I in A_To_Z'Range loop
         Put (I);
      end loop;
      New_Line;
   end My_Task;
begin
   for I in A_To_Z'Range loop
      Put (I);
   end loop;
   New_Line;
end Main;