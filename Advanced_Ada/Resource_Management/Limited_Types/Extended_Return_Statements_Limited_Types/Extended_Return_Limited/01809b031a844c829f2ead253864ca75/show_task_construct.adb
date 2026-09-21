with Task_Construct; use Task_Construct;

procedure Show_Task_Construct is
   My_Task : Task_Type := Make_Task (Val => 42);
begin
   null;
end Show_Task_Construct;