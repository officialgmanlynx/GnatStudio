procedure Show_Simple_Allocation is

   --  Declaring access type:
   type Integer_Access is access Integer;

   --  Declaring access object:
   A1 : Integer_Access;

begin
   --  Allocating an Integer object on the heap
   A1 := new Integer;

   declare
      --  Allocating an Integer object on the
      --  stack
      I : Integer;
   begin
      null;
   end;

end Show_Simple_Allocation;