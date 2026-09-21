package body P is

   task body Some_Task_Type is
   begin
      null;
   end Some_Task_Type;

   protected body Some_Protected_Type is
   end Some_Protected_Type;

   function Make_T (Name : String) return T is
   begin
      return (Name   =>
                To_Unbounded_String (Name),
              others => <>);
   end Make_T;

end P;