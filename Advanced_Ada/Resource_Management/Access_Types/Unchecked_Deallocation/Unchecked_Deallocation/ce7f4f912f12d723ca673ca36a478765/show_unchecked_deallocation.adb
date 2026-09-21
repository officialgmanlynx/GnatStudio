with Integer_Types; use Integer_Types;

procedure Show_Unchecked_Deallocation is

   I : Integer_Access;

begin
   I := new Integer;

   Free (I);
   Free (I);
   Free (I);
end Show_Unchecked_Deallocation;