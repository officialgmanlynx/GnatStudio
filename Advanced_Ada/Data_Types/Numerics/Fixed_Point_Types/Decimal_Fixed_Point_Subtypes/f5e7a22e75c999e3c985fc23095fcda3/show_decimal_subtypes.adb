with Ada.Text_IO; use Ada.Text_IO;

with Custom_Decimal_Types;
use Custom_Decimal_Types;

procedure Show_Decimal_Subtypes is
   C  : Decimal;
   FC : Small_Money;
begin
   C  := 231.53;
   Put_Line ("C  = "
             & C'Image);

   FC := C;
   Put_Line ("FC = "
             & FC'Image);
end Show_Decimal_Subtypes;