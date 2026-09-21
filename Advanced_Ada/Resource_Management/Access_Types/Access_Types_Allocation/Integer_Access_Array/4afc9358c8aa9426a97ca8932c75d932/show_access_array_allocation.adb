with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Access_Array_Allocation is

   type Integer_Access is access Integer;

   type Integer_Access_Array is
     array (Positive range <>) of Integer_Access;

   --  An array of access objects:
   Arr : Integer_Access_Array (1 .. 10);

begin
   --
   --  Allocating 10 access objects and
   --  initializing the corresponding designated
   --  object with zero:
   --
   Arr := (others => new Integer'(0));

   --  Same as:
   for I in Arr'Range loop
      Arr (I) := new Integer'(0);
   end loop;

   Put_Line ("Arr: " & Arr'Image);

   Put_Line ("Arr (designated values): ");
   for E of Arr loop
      Put (E.all'Image);
   end loop;

end Show_Access_Array_Allocation;