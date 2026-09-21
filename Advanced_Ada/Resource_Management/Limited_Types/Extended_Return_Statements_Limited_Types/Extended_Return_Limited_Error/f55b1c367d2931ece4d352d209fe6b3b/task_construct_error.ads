package Task_Construct_Error is

   task type Task_Type (Discriminant : Integer);

   function Make_Task (Val : Integer)
                       return Task_Type;

end Task_Construct_Error;