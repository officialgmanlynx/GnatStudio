with Ada.Text_IO; use Ada.Text_IO;

with Spinlocks;
use Spinlocks;
use Spinlocks.Lock_Exchange;

procedure Show_Locks is
   L          : aliased Lock := False;
   Task_Count : Integer      := 0;

   task type A_Task;

   task body A_Task is
      Task_Number : Integer;
   begin
      --  Get the lock
      while Atomic_Exchange (Item  => L,
                             Value => True) loop
         null;
      end loop;

      --  At this point, we got the lock.
      Task_Count  := Task_Count + 1;
      Task_Number := Task_Count;

      --  Release the lock.
      L := False;

      Put_Line ("Task_Number: "
                & Task_Number'Image);

   end A_Task;

   A, B, C, D, E, F : A_Task;
begin
   null;
end Show_Locks;