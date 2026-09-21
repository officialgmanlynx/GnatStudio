with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Discrete_Random;

with Lazy_Initialization;
use Lazy_Initialization;
use Lazy_Initialization.Value_Exchange;

procedure Show_Lazy_Initialization is
  subtype A_Task_Number is Natural;

   Value             : aliased Lazy_Value;
   Value_Modified_By : A_Task_Number := 0;

   task type A_Task is
      entry Start (This : A_Task_Number);
      entry Stop;
   end A_Task;

   task body A_Task is
      Task_Number : A_Task_Number;
   begin
      accept Start (This : A_Task_Number) do
         Task_Number := This;
      end Start;

      Sleep_Some_Time : declare
         subtype Sleep_Range is
           Integer range 1 .. 3;

         package Random_Sleep is new
           Ada.Numerics.Discrete_Random
             (Sleep_Range);
         use Random_Sleep;

         G : Generator;
      begin
         Reset (G);
         delay Duration (Random (G));
      end Sleep_Some_Time;

      Generate_Value : declare
         use Lazy_Value_Random;

         G             :         Generator;
         Initial_Value :         Lazy_Value_Range;
         Prior         : aliased Lazy_Value;
      begin
         Reset (G);
         Initial_Value := Random (G);

         if Atomic_Compare_And_Exchange
           (Item    => Value,
            Prior   => Prior,
            Desired => Lazy_Value (Initial_Value))
         then
            Value_Modified_By := Task_Number;
         end if;

      end Generate_Value;

      accept Stop do
         Put_Line ("Current task number:     "
                   & Task_Number'Image);
         Put_Line ("Value:               "
                   & Value'Image);
         Put_Line ("Modified by task number: "
                   & Value_Modified_By'Image);
         Put_Line ("---------------------");
      end Stop;
   end A_Task;

   Some_Tasks : array (1 .. 5) of A_Task;
begin
   for I in Some_Tasks'Range loop
      Some_Tasks (I).Start (I);
   end loop;
   for I in Some_Tasks'Range loop
      Some_Tasks (I).Stop;
   end loop;
end Show_Lazy_Initialization;