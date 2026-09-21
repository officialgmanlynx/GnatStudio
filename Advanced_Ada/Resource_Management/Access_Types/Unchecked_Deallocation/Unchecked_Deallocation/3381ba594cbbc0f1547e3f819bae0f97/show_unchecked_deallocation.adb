with Integer_Types; use Integer_Types;

procedure Show_Unchecked_Deallocation is

   I, I_2 : Integer_Access;

begin
   I := new Integer;

   I_2 := I;

   --  NOTE: I_2 points to the same
   --        object as I.

   --
   --  Use I and I_2...
   --
   --  ... then deallocate memory...
   --

   I_2 := null;

   --  NOTE: now, I_2 doesn't point to
   --        any object, so calling
   --        Free (I_2) is OK.

   Free (I);
   Free (I_2);
end Show_Unchecked_Deallocation;