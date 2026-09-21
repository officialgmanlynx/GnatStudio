with Ada.Text_IO; use Ada.Text_IO;
with Ada.Unchecked_Conversion;

procedure Show_Erroneous_Execution is
   subtype Int_1_10 is
     Integer range 1 .. 10;

   function To_Int_1_10 is new
     Ada.Unchecked_Conversion
       (Source => Integer,
        Target => Int_1_10);

   I1 : Int_1_10 := To_Int_1_10 (0);
   --               ^^^^^^^^^^^^^^^
   --  Bounded error
begin
   Put_Line ("I1 = " & I1'Image);

   I1 := I1 + 1;
   --    ^^^^^^
   --  Erroneous execution: using value
   --  in operation that is out of range.

   Put_Line ("I1 = " & I1'Image);
end Show_Erroneous_Execution;