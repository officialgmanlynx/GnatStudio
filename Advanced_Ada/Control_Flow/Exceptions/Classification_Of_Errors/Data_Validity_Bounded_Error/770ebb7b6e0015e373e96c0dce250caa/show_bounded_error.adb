with Ada.Text_IO; use Ada.Text_IO;

procedure Show_Bounded_Error is
   subtype Int_1_10 is
     Integer range 1 .. 10;

   I1         : Int_1_10;
   I1_Overlay : Integer
     with Address => I1'Address,
                     Import,
                     Volatile;
begin
   I1_Overlay := 0;
   --  ^^^^^^^^^^^
   --  We use this overlay to write an invalid
   --  value to I1.

   Put_Line ("I1 = " & I1'Image);
   --                  ^^^^^^^^
   --  Bounded error: value in
   --  I1 is out of range.

   I1 := I1 + 1;
   --    ^^
   --  Bounded error: using value
   --  in operation that is out of
   --  range.

   Put_Line ("I1 = " & I1'Image);
end Show_Bounded_Error;