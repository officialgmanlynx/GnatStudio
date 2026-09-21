package body Task_Construct is

   task body Task_Type is
   begin
      null;
   end Task_Type;

   function Make_Task (Val : Integer)
                       return Task_Type is
   begin
      return Result : Task_Type
                        (Discriminant => Val * 3)
      do
         --  some statements...
         null;
      end return;
   end Make_Task;

end Task_Construct;