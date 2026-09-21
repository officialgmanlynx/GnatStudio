package body Example is

   An_Element : aliased Element;

   procedure Iterate
     (T : Table;
      Action : Iterate_Action := null)
   is
   begin
      if Action /= null then
         Action (An_Element'Access);
         --  In a real program, this would do
         --  something more sensible.
      end if;
   end Iterate;

   procedure Iterate_2
     (T : Table;
      Action : not null Iterate_Action
                 := Do_Nothing'Access)
   is
   begin
      Action (An_Element'Access);
      --  In a real program, this would do
      --  something more sensible.
   end Iterate_2;

end Example;