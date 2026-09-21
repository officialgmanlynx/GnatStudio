with Ada.Text_IO; use Ada.Text_IO;

with Mutability;  use Mutability;

procedure Show_Mutable_Subtype_Error is
   A : T_Mutable_Array (10);
   B : T_Mutable_Array (20);
begin
   Put_Line ("A'Size = "
             & A'Size'Image);
   Put_Line ("B'Size = "
             & B'Size'Image);

   A := B;  --  ERROR!
end Show_Mutable_Subtype_Error;