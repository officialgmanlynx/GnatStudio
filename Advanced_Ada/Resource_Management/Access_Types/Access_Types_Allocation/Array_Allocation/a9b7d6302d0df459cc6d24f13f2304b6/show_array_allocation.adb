with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Array_Allocation is

   --  Unconstrained array type:
   type Integer_Array is
     array (Positive range <>) of Integer;

   --  Access type with unconstrained
   --  designated subtype and limited storage
   --  size.
   type Integer_Array_Access is
     access Integer_Array
       with Storage_Size => 128;

   --  An access object:
   A1 : Integer_Array_Access;

   procedure Show_Info
     (IAA : Integer_Array_Access) is
   begin
      Put_Line ("Allocated: " & IAA'Image);
      Put_Line ("Length:    "
                & IAA.all'Length'Image);
      Put_Line ("Values:    "
                & IAA.all'Image);
   end Show_Info;

begin
   --  Allocating an integer array with
   --  constrained range on the heap:
   A1 := new Integer_Array (1 .. 3);
   A1.all := [others => 42];
   Show_Info (A1);

   --  Allocating an integer array on the
   --  heap using a qualified expression:
   A1 := new Integer_Array'(5, 10);
   Show_Info (A1);

   --  A third allocation fails at run time
   --  because of the constrained storage
   --  size:
   A1 := new Integer_Array (1 .. 100);
   Show_Info (A1);

exception
    when Storage_Error =>
       Put_Line ("Out of memory!");

end Show_Array_Allocation;