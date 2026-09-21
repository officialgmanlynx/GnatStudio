procedure Show_Automatic_Deallocation is
   I  : aliased Integer;
   --   ^ Allocating object on the stack

   IA : access Integer;
begin
   IA := I'Access;
   --  Indirect allocation:
   --  object creation on the stack.

   IA.all := 30;

   --  Automatic deallocation at the end of the
   --  procedure because the integer variable is
   --  on the stack.
end Show_Automatic_Deallocation;