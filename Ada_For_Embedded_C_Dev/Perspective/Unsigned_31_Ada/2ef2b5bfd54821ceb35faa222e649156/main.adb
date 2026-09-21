with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   type Signed_Int_32 is range -2 ** 31 .. 2 ** 31 - 1;

   subtype Unsigned_Int_31 is Signed_Int_32 range 0 .. Signed_Int_32'Last;
   --  Equivalent to:
   --  subtype Unsigned_Int_31 is Signed_Int_32 range 0 .. 2 ** 31 - 1;

   X : Unsigned_Int_31 := 42;
begin
   Put_Line ("X = " & Unsigned_Int_31'Image (X));
end Main;