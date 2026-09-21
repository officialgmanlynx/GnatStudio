with Ada.Containers; use Ada.Containers;
with Ada.Containers.Ordered_Sets;

with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Set_Init is

   package Integer_Sets is new
     Ada.Containers.Ordered_Sets
       (Element_Type => Integer);

   use Integer_Sets;

   S : Set;
   --  Same as:  S : Integer_Sets.Set;
   C : Cursor;
   Ins : Boolean;
begin
   S.Insert (20);
   S.Insert (10);
   S.Insert (0);
   S.Insert (13);

   --  Calling S.Insert(0) now would raise
   --  Constraint_Error because this element
   --  is already in the set. We instead call a
   --  version of Insert that doesn't raise an
   --  exception but instead returns a Boolean
   --  indicating the status

   S.Insert (0, C, Ins);
   if not Ins then
      Put_Line
        ("Error while inserting 0 into set");
   end if;

   --  We can also call S.Include instead
   --  If the element is already present,
   --  the set remains unchanged
   S.Include (0);
   S.Include (13);
   S.Include (14);

   Put_Line ("Set has "
             & Count_Type'Image (S.Length)
             & " elements");

   --
   --  Iterate over set using for .. of loop
   --
   Put_Line ("Elements:");
   for E of S loop
       Put_Line ("- " & Integer'Image (E));
   end loop;
end Show_Set_Init;