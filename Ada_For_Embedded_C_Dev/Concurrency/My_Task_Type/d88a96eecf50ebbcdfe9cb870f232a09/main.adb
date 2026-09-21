with My_Tasks; use My_Tasks;

procedure Main is
   type Ptr_Task is access My_Task;

   T : Ptr_Task;
begin
   T := new My_Task ('W');
end Main;