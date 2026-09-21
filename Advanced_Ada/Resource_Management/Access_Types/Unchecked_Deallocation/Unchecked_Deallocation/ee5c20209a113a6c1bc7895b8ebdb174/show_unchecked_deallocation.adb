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

   Free (I);

   --  NOTE: at this point, I_2 is a
   --        dangling reference!

   --  Further calls to Free (I)
   --  are OK!

   Free (I);
   Free (I);

   --  A call to Free (I_2) is
   --  NOT OK:

   Free (I_2);
end Show_Unchecked_Deallocation;