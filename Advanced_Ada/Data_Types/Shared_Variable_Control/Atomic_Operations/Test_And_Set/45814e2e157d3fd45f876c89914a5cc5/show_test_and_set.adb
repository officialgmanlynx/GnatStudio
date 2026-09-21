with System.Atomic_Operations.Test_And_Set;
use  System.Atomic_Operations.Test_And_Set;

with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Test_And_Set is
   Lock       : aliased Test_And_Set_Flag;
   Task_Count : Integer := 0;

   task type A_Task;

   task body A_Task is
      Task_Number : Integer;
   begin
      --  Get the lock
      while Atomic_Test_And_Set (Lock) loop
         null;
      end loop;

      --  At this point, we got the lock.
      Task_Count  := Task_Count + 1;
      Task_Number := Task_Count;

      --  Release the lock.
      Atomic_Clear (Lock);

      Put_Line ("Task_Number: "
                & Task_Number'Image);

   end A_Task;

   A, B, C, D, E, F : A_Task;
begin
   null;
end Show_Test_And_Set;