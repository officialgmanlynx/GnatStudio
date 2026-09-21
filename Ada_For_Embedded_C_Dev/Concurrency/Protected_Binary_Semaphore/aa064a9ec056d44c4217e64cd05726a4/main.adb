with Ada.Text_IO;       use Ada.Text_IO;
with Binary_Semaphores; use Binary_Semaphores;

procedure Main is
   B : Binary_Semaphore;

   task T1;
   task T2;

   task body T1 is
   begin
      Put_Line ("Task T1 waiting...");
      B.Wait;

      Put_Line ("Task T1.");
      delay 1.0;

      Put_Line ("Task T1 will signal...");
      B.Signal;

      Put_Line ("Task T1 finished.");
   end T1;

   task body T2 is
   begin
      Put_Line ("Task T2 waiting...");
      B.Wait;

      Put_Line ("Task T2");
      delay 1.0;

      Put_Line ("Task T2 will signal...");
      B.Signal;

      Put_Line ("Task T2 finished.");
   end T2;

begin
   Put_Line ("Main started.");
   B.Signal;
   Put_Line ("Main finished.");
end Main;