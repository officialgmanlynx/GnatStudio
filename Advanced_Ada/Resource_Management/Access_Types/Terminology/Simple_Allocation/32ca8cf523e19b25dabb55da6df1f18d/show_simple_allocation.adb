procedure Show_Simple_Allocation is

   --  Access-to-object type
   type Integer_Access is access Integer;

   --  Access object
   I1 : Integer_Access;

begin
   I1 := new Integer;
   --    ^^^^^^^^^^^ allocating an object,
   --                which becomes the designated
   --                object for I1

end Show_Simple_Allocation;