package body Task_Construct_Error is

   task body Task_Type is
   begin
      null;
   end Task_Type;

   function Make_Task (Val : Integer)
                       return Task_Type
   is
      Result : Task_Type
                 (Discriminant => Val * 3);
   begin
      --  some statements...
      return Result; -- Illegal!
   end Make_Task;

end Task_Construct_Error;