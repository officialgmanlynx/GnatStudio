with Ada.Text_IO; use Ada.Text_IO;

with Atomic_Modulars;
use  Atomic_Modulars;
use  Atomic_Modulars.Atomic_Modular_Arithmetic;

procedure Show_Atomic_Modulars is
   Task_Count : aliased Atomic_Modular := 0;

   task type A_Task;

   task body A_Task is
      Task_Number : Atomic_Modular;
   begin
      Task_Number :=
        Atomic_Fetch_And_Add (Task_Count, 1);

      Put_Line ("Task_Number: "
                & Task_Number'Image);

   end A_Task;

   A, B, C, D, E, F : A_Task;
begin
   null;
end Show_Atomic_Modulars;