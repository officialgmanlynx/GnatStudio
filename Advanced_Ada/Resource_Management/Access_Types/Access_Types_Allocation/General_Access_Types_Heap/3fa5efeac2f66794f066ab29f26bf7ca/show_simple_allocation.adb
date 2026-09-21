procedure Show_Simple_Allocation is

   --  Declaring general access type:
   type Integer_Access is access all Integer;

   --  Declaring access object:
   A1 : Integer_Access;

begin
   --
   --  Allocating an Integer object on the heap
   --  and initializing an access object of
   --  the general access type Integer_Access.
   --
   A1 := new Integer;

end Show_Simple_Allocation;