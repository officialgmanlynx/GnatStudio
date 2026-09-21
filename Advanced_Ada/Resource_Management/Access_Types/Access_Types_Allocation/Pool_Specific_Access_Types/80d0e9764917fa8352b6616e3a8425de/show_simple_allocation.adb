with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Simple_Allocation is

   --  Declaring pool-specific access type:
   type Integer_Access_1 is access Integer;
   type Integer_Access_2 is access Integer;
   type Integer_Access_2B is new Integer_Access_2;

   --  Declaring access object:
   A1  : Integer_Access_1;
   A2  : Integer_Access_2;
   A2B : Integer_Access_2B;

begin
   A1 := new Integer;
   Put_Line ("A1  : " & A1'Image);
   Put_Line ("Pool: " & A1'Storage_Pool'Image);

   A2 := new Integer;
   Put_Line ("A2:   " & A2'Image);
   Put_Line ("Pool: " & A2'Storage_Pool'Image);

   --  ERROR: Cannot directly assign access values
   --         for objects of unrelated access
   --         types; also, cannot convert between
   --         these types.
   --
   --  A1 := A2;
   --  A1 := Integer_Access_1 (A2);

   A2B := Integer_Access_2B (A2);
   Put_Line ("A2B:  " & A2B'Image);
   Put_Line ("Pool: " & A2B'Storage_Pool'Image);

end Show_Simple_Allocation;