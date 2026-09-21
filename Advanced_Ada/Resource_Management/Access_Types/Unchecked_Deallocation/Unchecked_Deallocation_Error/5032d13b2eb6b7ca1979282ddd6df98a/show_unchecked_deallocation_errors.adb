with Ada.Unchecked_Deallocation;

procedure Show_Unchecked_Deallocation_Errors is

   type Integer_Access_Zero is access Integer
     with Storage_Size => 0;

   procedure Free is
     new Ada.Unchecked_Deallocation
       (Object => Integer,
        Name   => Integer_Access_Zero);

   type Constant_Integer_Access is
     access constant Integer;

   --  ERROR: Cannot use access-to-constant type
   --         for Name
   procedure Free is
     new Ada.Unchecked_Deallocation
       (Object => Integer,
        Name   => Constant_Integer_Access);

   I : Integer_Access_Zero;

begin
   --  ERROR: Cannot allocate objects from
   --         empty storage pool
   I := new Integer;

   --  ERROR: Cannot deallocate objects from
   --         empty storage pool
   Free (I);
end Show_Unchecked_Deallocation_Errors;