with Ada.Text_IO;   use Ada.Text_IO;
with Integer_Types; use Integer_Types;

procedure Show_Unchecked_Deallocation is

   I : Integer_Access;

begin
   Put ("We haven't called new yet... ");
   Show_Is_Null (I);

   Put ("Calling new... ");
   I := new Integer;
   Show_Is_Null (I);

   Put ("Calling Free... ");
   Free (I);
   Show_Is_Null (I);
end Show_Unchecked_Deallocation;